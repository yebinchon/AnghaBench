
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MD4_CTX ;


 int MD4_Final (unsigned char*,int *) ;
 int MD4_Init (int *) ;
 int MD4_Update (int *,unsigned char const*,int ) ;
 int curlx_uztoui (size_t) ;

void Curl_md4it(unsigned char *output, const unsigned char *input, size_t len)
{
  MD4_CTX ctx;
  MD4_Init(&ctx);
  MD4_Update(&ctx, input, curlx_uztoui(len));
  MD4_Final(output, &ctx);
}
