
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int K ;


 int RsaVerifyEx (void*,int ,void*,int *,int ) ;

bool RsaVerify(void *data, UINT data_size, void *sign, K *k)
{
 return RsaVerifyEx(data, data_size, sign, k, 0);
}
