
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int EVP_md5 () ;
 int Internal_HMac (int ,void*,void*,int ,void*,int ) ;

UINT HMacMd5(void *dst, void *key, UINT key_size, void *src, UINT src_size)
{
 return Internal_HMac(EVP_md5(), dst, key, key_size, src, src_size);
}
