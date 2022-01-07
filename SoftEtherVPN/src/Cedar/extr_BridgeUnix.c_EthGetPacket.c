
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_8__ {int * Tap; scalar_t__ IsRawIpMode; } ;
typedef TYPE_1__ ETH ;


 int EthGetPacketBpf (TYPE_1__*,void**) ;
 int EthGetPacketLinux (TYPE_1__*,void**) ;
 int EthGetPacketLinuxIpRaw (TYPE_1__*,void**) ;
 int EthGetPacketPcap (TYPE_1__*,void**) ;
 int EthGetPacketSolaris (TYPE_1__*,void**) ;
 int INFINITE ;
 int VLanGetNextPacket (int *,void**,int *) ;

UINT EthGetPacket(ETH *e, void **data)
{

 if (e == ((void*)0) || data == ((void*)0))
 {
  return INFINITE;
 }
 if (e->Tap != ((void*)0))
 {


  void *buf;
  UINT size;

  if (VLanGetNextPacket(e->Tap, &buf, &size) == 0)
  {
   return INFINITE;
  }

  *data = buf;
  return size;



 }
}
