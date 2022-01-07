
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IKE_PACKET ;
typedef int IKE_CRYPTO_PARAM ;
typedef int BUF ;


 int * IkeBuildEx (int *,int *,int) ;

BUF *IkeBuild(IKE_PACKET *p, IKE_CRYPTO_PARAM *cparam)
{
 return IkeBuildEx(p, cparam, 0);
}
