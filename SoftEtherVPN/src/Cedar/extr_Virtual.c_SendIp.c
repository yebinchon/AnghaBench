
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VH ;
typedef int UINT ;
typedef int UCHAR ;


 int SendIpEx (int *,int ,int ,int ,void*,int ,int ) ;

void SendIp(VH *v, UINT dest_ip, UINT src_ip, UCHAR protocol, void *data, UINT size)
{
 SendIpEx(v, dest_ip, src_ip, protocol, data, size, 0);
}
