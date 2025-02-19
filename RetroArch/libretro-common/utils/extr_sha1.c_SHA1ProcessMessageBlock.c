
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int* Message_Digest; scalar_t__ Message_Block_Index; scalar_t__* Message_Block; } ;
typedef TYPE_1__ SHA1Context ;


 unsigned int SHA1CircularShift (int,unsigned int) ;

void SHA1ProcessMessageBlock(SHA1Context *context)
{
   const unsigned K[] =
   {
      0x5A827999,
      0x6ED9EBA1,
      0x8F1BBCDC,
      0xCA62C1D6
   };
   int t;
   unsigned temp;
   unsigned W[80];
   unsigned A, B, C, D, E;




   for(t = 0; t < 16; t++)
   {
      W[t] = ((unsigned) context->Message_Block[t * 4]) << 24;
      W[t] |= ((unsigned) context->Message_Block[t * 4 + 1]) << 16;
      W[t] |= ((unsigned) context->Message_Block[t * 4 + 2]) << 8;
      W[t] |= ((unsigned) context->Message_Block[t * 4 + 3]);
   }

   for(t = 16; t < 80; t++)
   {
      W[t] = SHA1CircularShift(1,W[t-3] ^ W[t-8] ^ W[t-14] ^ W[t-16]);
   }

   A = context->Message_Digest[0];
   B = context->Message_Digest[1];
   C = context->Message_Digest[2];
   D = context->Message_Digest[3];
   E = context->Message_Digest[4];

   for(t = 0; t < 20; t++)
   {
      temp = SHA1CircularShift(5,A) +
         ((B & C) | ((~B) & D)) + E + W[t] + K[0];
      temp &= 0xFFFFFFFF;
      E = D;
      D = C;
      C = SHA1CircularShift(30,B);
      B = A;
      A = temp;
   }

   for(t = 20; t < 40; t++)
   {
      temp = SHA1CircularShift(5,A) + (B ^ C ^ D) + E + W[t] + K[1];
      temp &= 0xFFFFFFFF;
      E = D;
      D = C;
      C = SHA1CircularShift(30,B);
      B = A;
      A = temp;
   }

   for(t = 40; t < 60; t++)
   {
      temp = SHA1CircularShift(5,A) +
         ((B & C) | (B & D) | (C & D)) + E + W[t] + K[2];
      temp &= 0xFFFFFFFF;
      E = D;
      D = C;
      C = SHA1CircularShift(30,B);
      B = A;
      A = temp;
   }

   for(t = 60; t < 80; t++)
   {
      temp = SHA1CircularShift(5,A) + (B ^ C ^ D) + E + W[t] + K[3];
      temp &= 0xFFFFFFFF;
      E = D;
      D = C;
      C = SHA1CircularShift(30,B);
      B = A;
      A = temp;
   }

   context->Message_Digest[0] =
      (context->Message_Digest[0] + A) & 0xFFFFFFFF;
   context->Message_Digest[1] =
      (context->Message_Digest[1] + B) & 0xFFFFFFFF;
   context->Message_Digest[2] =
      (context->Message_Digest[2] + C) & 0xFFFFFFFF;
   context->Message_Digest[3] =
      (context->Message_Digest[3] + D) & 0xFFFFFFFF;
   context->Message_Digest[4] =
      (context->Message_Digest[4] + E) & 0xFFFFFFFF;

   context->Message_Block_Index = 0;
}
