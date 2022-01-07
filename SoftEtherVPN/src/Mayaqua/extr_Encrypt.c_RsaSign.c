
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int K ;


 int RsaSignEx (void*,void*,int ,int *,int ) ;

bool RsaSign(void *dst, void *src, UINT size, K *k)
{
 return RsaSignEx(dst, src, size, k, 0);
}
