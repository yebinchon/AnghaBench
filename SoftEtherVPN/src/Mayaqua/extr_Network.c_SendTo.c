
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int SOCK ;
typedef int IP ;


 int SendToEx (int *,int *,int ,void*,int ,int) ;

UINT SendTo(SOCK *sock, IP *dest_addr, UINT dest_port, void *data, UINT size)
{
 return SendToEx(sock, dest_addr, dest_port, data, size, 0);
}
