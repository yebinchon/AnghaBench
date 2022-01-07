
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__* k7zSignature ;
 size_t k7zSignatureSize ;

__attribute__((used)) static int TestSignatureCandidate(uint8_t *testuint8_ts)
{
   size_t i;
   for (i = 0; i < k7zSignatureSize; i++)
      if (testuint8_ts[i] != k7zSignature[i])
         return 0;
   return 1;
}
