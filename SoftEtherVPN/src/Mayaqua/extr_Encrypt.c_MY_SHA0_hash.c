
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const UCHAR ;
typedef int MY_SHA0_CTX ;


 int MY_SHA0_DIGEST_SIZE ;
 int MY_SHA0_final (int *) ;
 int MY_SHA0_init (int *) ;
 int MY_SHA0_update (int *,void const*,int) ;
 int memcpy (int const*,int ,int ) ;

const UCHAR* MY_SHA0_hash(const void* data, int len, UCHAR* digest) {
 MY_SHA0_CTX ctx;
 MY_SHA0_init(&ctx);
 MY_SHA0_update(&ctx, data, len);
 memcpy(digest, MY_SHA0_final(&ctx), MY_SHA0_DIGEST_SIZE);
 return digest;
}
