
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int IKE_PACKET ;
typedef int IKE_CRYPTO_PARAM ;


 int * IkeParseEx (void*,int ,int *,int) ;

IKE_PACKET *IkeParseHeader(void *data, UINT size, IKE_CRYPTO_PARAM *cparam)
{
 return IkeParseEx(data, size, cparam, 1);
}
