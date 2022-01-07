
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int UCHAR ;
typedef int OPENVPN_CHANNEL ;


 int OvsSendControlPacketEx (int *,int ,int *,int ,int) ;

void OvsSendControlPacket(OPENVPN_CHANNEL *c, UCHAR opcode, UCHAR *data, UINT data_size)
{
 OvsSendControlPacketEx(c, opcode, data, data_size, 0);
}
