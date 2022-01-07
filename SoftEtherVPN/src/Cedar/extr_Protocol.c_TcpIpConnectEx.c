
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int SOCK ;
typedef int IP ;


 int * TcpConnectEx3 (char*,scalar_t__,int ,int*,void*,int,scalar_t__*,int,int *) ;

SOCK *TcpIpConnectEx(char *hostname, UINT port, bool *cancel_flag, void *hWnd, UINT *nat_t_error_code, bool no_nat_t, bool try_start_ssl, IP *ret_ip)
{
 SOCK *s = ((void*)0);
 UINT dummy_int = 0;

 if (nat_t_error_code == ((void*)0))
 {
  nat_t_error_code = &dummy_int;
 }
 *nat_t_error_code = 0;
 if (hostname == ((void*)0) || port == 0)
 {
  return ((void*)0);
 }

 s = TcpConnectEx3(hostname, port, 0, cancel_flag, hWnd, no_nat_t, nat_t_error_code, try_start_ssl, ret_ip);
 if (s == ((void*)0))
 {
  return ((void*)0);
 }

 return s;
}
