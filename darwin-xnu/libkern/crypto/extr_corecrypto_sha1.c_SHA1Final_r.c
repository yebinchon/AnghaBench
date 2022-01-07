
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SHA1_CTX ;


 int SHA1Final (void*,int *) ;

void SHA1Final_r(SHA1_CTX *context, void *digest)
{
 SHA1Final(digest, context);
}
