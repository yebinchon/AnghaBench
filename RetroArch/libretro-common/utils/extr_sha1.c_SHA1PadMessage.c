
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Message_Block_Index; int* Message_Block; int Length_High; int Length_Low; } ;
typedef TYPE_1__ SHA1Context ;


 int SHA1ProcessMessageBlock (TYPE_1__*) ;

void SHA1PadMessage(SHA1Context *context)
{






   if (context->Message_Block_Index > 55)
   {
      context->Message_Block[context->Message_Block_Index++] = 0x80;
      while(context->Message_Block_Index < 64)
         context->Message_Block[context->Message_Block_Index++] = 0;

      SHA1ProcessMessageBlock(context);

      while(context->Message_Block_Index < 56)
         context->Message_Block[context->Message_Block_Index++] = 0;
   }
   else
   {
      context->Message_Block[context->Message_Block_Index++] = 0x80;
      while(context->Message_Block_Index < 56)
         context->Message_Block[context->Message_Block_Index++] = 0;
   }




   context->Message_Block[56] = (context->Length_High >> 24) & 0xFF;
   context->Message_Block[57] = (context->Length_High >> 16) & 0xFF;
   context->Message_Block[58] = (context->Length_High >> 8) & 0xFF;
   context->Message_Block[59] = (context->Length_High) & 0xFF;
   context->Message_Block[60] = (context->Length_Low >> 24) & 0xFF;
   context->Message_Block[61] = (context->Length_Low >> 16) & 0xFF;
   context->Message_Block[62] = (context->Length_Low >> 8) & 0xFF;
   context->Message_Block[63] = (context->Length_Low) & 0xFF;

   SHA1ProcessMessageBlock(context);
}
