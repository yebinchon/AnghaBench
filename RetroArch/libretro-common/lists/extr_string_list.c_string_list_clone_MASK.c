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
struct string_list_elem {char* data; int /*<<< orphan*/  attr; } ;
struct string_list {int size; int cap; struct string_list_elem* elems; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct string_list*) ; 
 scalar_t__ FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 size_t FUNC4 (char const*) ; 

struct string_list *FUNC5(
      const struct string_list *src)
{
   unsigned i;
   struct string_list_elem *elems = NULL;
   struct string_list *dest       = (struct string_list*)
      FUNC0(1, sizeof(struct string_list));

   if (!dest)
      return NULL;

   dest->size      = src->size;
   dest->cap       = src->cap;
   if (dest->cap < dest->size)
      dest->cap    = dest->size;

   elems           = (struct string_list_elem*)
      FUNC0(dest->cap, sizeof(struct string_list_elem));

   if (!elems)
   {
      FUNC1(dest);
      return NULL;
   }

   dest->elems            = elems;

   for (i = 0; i < src->size; i++)
   {
      const char *_src    = src->elems[i].data;
      size_t      len     = _src ? FUNC4(_src) : 0;

      dest->elems[i].data = NULL;
      dest->elems[i].attr = src->elems[i].attr;

      if (len != 0)
      {
         char *result        = (char*)FUNC2(len + 1);
         FUNC3(result, _src);
         dest->elems[i].data = result;
      }
   }

   return dest;
}