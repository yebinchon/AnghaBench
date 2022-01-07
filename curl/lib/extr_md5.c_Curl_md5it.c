
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MD5_CTX ;


 int MD5_Final (unsigned char*,int *) ;
 int MD5_Init (int *) ;
 int MD5_Update (int *,unsigned char const*,int ) ;
 int curlx_uztoui (int ) ;
 int strlen (char*) ;

void Curl_md5it(unsigned char *outbuffer,
                const unsigned char *input)
{
  MD5_CTX ctx;
  MD5_Init(&ctx);
  MD5_Update(&ctx, input, curlx_uztoui(strlen((char *)input)));
  MD5_Final(outbuffer, &ctx);
}
