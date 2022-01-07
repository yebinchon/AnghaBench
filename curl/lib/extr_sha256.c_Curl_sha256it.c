
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SHA256_CTX ;


 int SHA256_Final (unsigned char*,int *) ;
 int SHA256_Init (int *) ;
 int SHA256_Update (int *,unsigned char const*,int ) ;
 int curlx_uztoui (int ) ;
 int strlen (char*) ;

void Curl_sha256it(unsigned char *outbuffer,
                   const unsigned char *input)
{
  SHA256_CTX ctx;
  SHA256_Init(&ctx);
  SHA256_Update(&ctx, input, curlx_uztoui(strlen((char *)input)));
  SHA256_Final(outbuffer, &ctx);
}
