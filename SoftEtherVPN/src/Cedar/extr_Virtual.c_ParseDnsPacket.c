
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VH ;
typedef int UINT ;


 int ParseDnsPacketEx (int *,int ,int ,int ,int ,void*,int ,int *) ;

bool ParseDnsPacket(VH *v, UINT src_ip, UINT src_port, UINT dest_ip, UINT dest_port, void *data, UINT size)
{
 return ParseDnsPacketEx(v, src_ip, src_port, dest_ip, dest_port, data, size, ((void*)0));
}
