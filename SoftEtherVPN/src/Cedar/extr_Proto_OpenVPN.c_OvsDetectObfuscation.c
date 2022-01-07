
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int OPENVPN_PACKET ;


 void* Clone (void*,scalar_t__) ;
 int Free (void*) ;
 scalar_t__ INFINITE ;
 scalar_t__ OPENVPN_SCRAMBLE_MODE_DISABLED ;
 scalar_t__ OPENVPN_SCRAMBLE_MODE_OBFUSCATE ;
 scalar_t__ OPENVPN_SCRAMBLE_MODE_REVERSE ;
 scalar_t__ OPENVPN_SCRAMBLE_MODE_XORMASK ;
 scalar_t__ OPENVPN_SCRAMBLE_MODE_XORPTRPOS ;
 int OvsDataReverse (void*,scalar_t__) ;
 int OvsDataXorMask (void*,scalar_t__,char*,int ) ;
 int OvsDataXorPtrPos (void*,scalar_t__) ;
 int OvsFreePacket (int *) ;
 int * OvsParsePacket (void*,scalar_t__) ;
 int StrLen (char*) ;

UINT OvsDetectObfuscation(void *data, UINT size, char *xormask)
{
 UINT ret;
 void *tmp;
 OPENVPN_PACKET *parsed_packet;

 if (data == ((void*)0) || size == 0)
 {
  return INFINITE;
 }

 ret = INFINITE;
 tmp = ((void*)0);


 parsed_packet = OvsParsePacket(data, size);
 if (parsed_packet != ((void*)0))
 {
  ret = OPENVPN_SCRAMBLE_MODE_DISABLED;
  goto final;
 }


 tmp = Clone(data, size);

 OvsDataXorMask(tmp, size, xormask, StrLen(xormask));

 parsed_packet = OvsParsePacket(tmp, size);
 if (parsed_packet != ((void*)0))
 {
  ret = OPENVPN_SCRAMBLE_MODE_XORMASK;
  goto final;
 }

 Free(tmp);


 tmp = Clone(data, size);

 OvsDataXorPtrPos(tmp, size);

 parsed_packet = OvsParsePacket(tmp, size);
 if (parsed_packet != ((void*)0))
 {
  ret = OPENVPN_SCRAMBLE_MODE_XORPTRPOS;
  goto final;
 }

 Free(tmp);


 tmp = Clone(data, size);

 OvsDataReverse(tmp, size);

 parsed_packet = OvsParsePacket(tmp, size);
 if (parsed_packet != ((void*)0))
 {
  ret = OPENVPN_SCRAMBLE_MODE_REVERSE;
  goto final;
 }

 Free(tmp);


 tmp = Clone(data, size);

 OvsDataXorMask(tmp, size, xormask, StrLen(xormask));
 OvsDataXorPtrPos(tmp, size);
 OvsDataReverse(tmp, size);
 OvsDataXorPtrPos(tmp, size);

 parsed_packet = OvsParsePacket(tmp, size);
 if (parsed_packet != ((void*)0))
 {
  ret = OPENVPN_SCRAMBLE_MODE_OBFUSCATE;
  goto final;
 }

final:
 OvsFreePacket(parsed_packet);
 Free(tmp);
 return ret;
}
