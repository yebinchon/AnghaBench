
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; struct TYPE_4__* value; } ;
typedef TYPE_1__ dat_converter_match_key_t ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void dat_converter_match_key_free(dat_converter_match_key_t* match_key)
{
   if (!match_key)
      return;

   free(match_key->value);

   while (match_key)
   {
      dat_converter_match_key_t* next = match_key->next;
      free(match_key);
      match_key = next;
   }
}
