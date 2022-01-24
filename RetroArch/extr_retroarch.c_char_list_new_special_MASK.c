#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct string_list {int dummy; } ;
typedef  enum string_list_type { ____Placeholder_string_list_type } string_list_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct string_list*) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,struct string_list*,char*) ; 
 struct string_list* FUNC3 (int,void*,unsigned int*,size_t*) ; 

const char *FUNC4(enum string_list_type type, void *data)
{
   unsigned len = 0;
   size_t list_size;
   struct string_list *s = FUNC3(type, data, &len, &list_size);
   char         *options = (len > 0) ? (char*)FUNC0(len, sizeof(char)): NULL;

   if (options && s)
      FUNC2(options, len, s, "|");

   FUNC1(s);
   s = NULL;

   return options;
}