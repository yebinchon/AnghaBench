
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X ;
typedef int SSL_PIPE ;
typedef int K ;
typedef int DH_CTX ;


 int * NewSslPipeEx (int,int *,int *,int *,int,int *) ;

SSL_PIPE *NewSslPipe(bool server_mode, X *x, K *k, DH_CTX *dh)
{
 return NewSslPipeEx(server_mode, x, k, dh, 0, ((void*)0));
}
