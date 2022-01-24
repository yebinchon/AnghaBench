#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* value; void* hash; struct TYPE_3__* next; } ;
typedef  TYPE_1__ dat_converter_match_key_t ;

/* Variables and functions */
 void* FUNC0 (char*) ; 
 void* FUNC1 (int) ; 
 char* FUNC2 (char const*) ; 

__attribute__((used)) static dat_converter_match_key_t* FUNC3(
      const char* format)
{
   dat_converter_match_key_t* match_key;
   dat_converter_match_key_t* current_mk;
   char* dot;

   match_key = FUNC1(sizeof(*match_key));
   match_key->value = FUNC2(format);
   match_key->next = NULL;
   current_mk = match_key;

   dot = match_key->value;
   while (*dot++)
   {
      if (*dot == '.')
      {
         *dot++ = '\0';
         current_mk->hash = FUNC0(current_mk->value);
         current_mk->next = FUNC1(sizeof(*match_key));
         current_mk = current_mk->next;
         current_mk->value = dot;
         current_mk->next = NULL;
      }
   }
   current_mk->hash = FUNC0(current_mk->value);

   return match_key;
}