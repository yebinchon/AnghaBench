
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X ;
typedef int K ;


 int SiGenerateDefaultCertEx (int **,int **,int *) ;

void SiGenerateDefaultCert(X **server_x, K **server_k)
{
 SiGenerateDefaultCertEx(server_x, server_k, ((void*)0));
}
