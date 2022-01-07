
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Corrupted; unsigned char* Message_Block; int Message_Block_Index; int Length_Low; int Length_High; scalar_t__ Computed; } ;
typedef TYPE_1__ SHA1Context ;


 int SHA1ProcessMessageBlock (TYPE_1__*) ;

__attribute__((used)) static void SHA1Input(SHA1Context *context,
      const unsigned char *message_array,
      unsigned length)
{
   if (!length)
      return;

   if (context->Computed || context->Corrupted)
   {
      context->Corrupted = 1;
      return;
   }

   while(length-- && !context->Corrupted)
   {
      context->Message_Block[context->Message_Block_Index++] =
         (*message_array & 0xFF);

      context->Length_Low += 8;

      context->Length_Low &= 0xFFFFFFFF;
      if (context->Length_Low == 0)
      {
         context->Length_High++;

         context->Length_High &= 0xFFFFFFFF;
         if (context->Length_High == 0)
            context->Corrupted = 1;
      }

      if (context->Message_Block_Index == 64)
         SHA1ProcessMessageBlock(context);

      message_array++;
   }
}
