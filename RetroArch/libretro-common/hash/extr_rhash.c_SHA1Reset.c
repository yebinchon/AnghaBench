
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* Message_Digest; scalar_t__ Corrupted; scalar_t__ Computed; scalar_t__ Message_Block_Index; scalar_t__ Length_High; scalar_t__ Length_Low; } ;
typedef TYPE_1__ SHA1Context ;



__attribute__((used)) static void SHA1Reset(SHA1Context *context)
{
   if (!context)
      return;

   context->Length_Low = 0;
   context->Length_High = 0;
   context->Message_Block_Index = 0;

   context->Message_Digest[0] = 0x67452301;
   context->Message_Digest[1] = 0xEFCDAB89;
   context->Message_Digest[2] = 0x98BADCFE;
   context->Message_Digest[3] = 0x10325476;
   context->Message_Digest[4] = 0xC3D2E1F0;

   context->Computed = 0;
   context->Corrupted = 0;
}
