
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; scalar_t__ string; } ;
typedef TYPE_1__ rcheevos_field_t ;


 scalar_t__ malloc (int) ;
 int memcpy (void*,void*,int) ;

__attribute__((used)) static const char* rcheevos_dupstr(const rcheevos_field_t* field)
{
   char* string = (char*)malloc(field->length + 1);

   if (!string)
      return ((void*)0);

   memcpy((void*)string, (void*)field->string, field->length);
   string[field->length] = 0;
   return string;
}
