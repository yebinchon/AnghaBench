
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X ;
typedef int SOCK ;
typedef int K ;


 int StartSSLEx (int *,int *,int *,int ,int *) ;

bool StartSSL(SOCK *sock, X *x, K *priv)
{
 return StartSSLEx(sock, x, priv, 0, ((void*)0));
}
