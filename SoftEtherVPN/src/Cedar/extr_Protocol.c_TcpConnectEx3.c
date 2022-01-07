
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int SOCK ;
typedef int IP ;
typedef int HWND ;


 int * ConnectEx4 (char*,int ,int ,int*,int *,int *,int,int,int *) ;
 int * VPN_RUDP_SVC_NAME ;
 int * WinConnectEx3 (int ,char*,int ,int ,int ,int *,int *,int *,int *,int) ;

SOCK *TcpConnectEx3(char *hostname, UINT port, UINT timeout, bool *cancel_flag, void *hWnd, bool no_nat_t, UINT *nat_t_error_code, bool try_start_ssl, IP *ret_ip)
{




  return ConnectEx4(hostname, port, timeout, cancel_flag, (no_nat_t ? ((void*)0) : VPN_RUDP_SVC_NAME), nat_t_error_code, try_start_ssl, 1, ret_ip);







}
