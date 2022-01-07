
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* value; void* hash; struct TYPE_3__* next; } ;
typedef TYPE_1__ dat_converter_match_key_t ;


 void* djb2_calculate (char*) ;
 void* malloc (int) ;
 char* strdup (char const*) ;

__attribute__((used)) static dat_converter_match_key_t* dat_converter_match_key_create(
      const char* format)
{
   dat_converter_match_key_t* match_key;
   dat_converter_match_key_t* current_mk;
   char* dot;

   match_key = malloc(sizeof(*match_key));
   match_key->value = strdup(format);
   match_key->next = ((void*)0);
   current_mk = match_key;

   dot = match_key->value;
   while (*dot++)
   {
      if (*dot == '.')
      {
         *dot++ = '\0';
         current_mk->hash = djb2_calculate(current_mk->value);
         current_mk->next = malloc(sizeof(*match_key));
         current_mk = current_mk->next;
         current_mk->value = dot;
         current_mk->next = ((void*)0);
      }
   }
   current_mk->hash = djb2_calculate(current_mk->value);

   return match_key;
}
