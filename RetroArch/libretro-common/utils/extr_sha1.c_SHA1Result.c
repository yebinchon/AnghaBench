
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Computed; scalar_t__ Corrupted; } ;
typedef TYPE_1__ SHA1Context ;


 int SHA1PadMessage (TYPE_1__*) ;

int SHA1Result(SHA1Context *context)
{
   if (context->Corrupted)
      return 0;

   if (!context->Computed)
   {
      SHA1PadMessage(context);
      context->Computed = 1;
   }

   return 1;
}
