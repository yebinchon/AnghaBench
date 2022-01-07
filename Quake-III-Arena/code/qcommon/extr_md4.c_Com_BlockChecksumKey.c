
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MD4_CTX ;


 int MD4Final (unsigned char*,int *) ;
 int MD4Init (int *) ;
 int MD4Update (int *,unsigned char*,int) ;

unsigned Com_BlockChecksumKey (void *buffer, int length, int key)
{
 int digest[4];
 unsigned val;
 MD4_CTX ctx;

 MD4Init (&ctx);
 MD4Update (&ctx, (unsigned char *)&key, 4);
 MD4Update (&ctx, (unsigned char *)buffer, length);
 MD4Final ( (unsigned char *)digest, &ctx);

 val = digest[0] ^ digest[1] ^ digest[2] ^ digest[3];

 return val;
}
