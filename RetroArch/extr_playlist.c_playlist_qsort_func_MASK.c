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
struct playlist_entry {char* label; char* path; } ;

/* Variables and functions */
 int PATH_MAX_LENGTH ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(const struct playlist_entry *a,
      const struct playlist_entry *b)
{
   char *a_str            = NULL;
   char *b_str            = NULL;
   char *a_fallback_label = NULL;
   char *b_fallback_label = NULL;
   int ret                = 0;

   if (!a || !b)
      goto end;

   a_str                  = a->label;
   b_str                  = b->label;

   /* It is quite possible for playlist labels
    * to be blank. If that is the case, have to use
    * filename as a fallback (this is slow, but we
    * have no other option...) */
   if (FUNC4(a_str))
   {
      if (FUNC4(a->path))
         goto end;

      a_fallback_label = (char*)FUNC0(PATH_MAX_LENGTH, sizeof(char));

      if (!a_fallback_label)
         goto end;

      FUNC1(a_fallback_label, a->path, PATH_MAX_LENGTH * sizeof(char));

      if (FUNC4(a_fallback_label))
         goto end;

      a_str = a_fallback_label;
   }

   if (FUNC4(b_str))
   {
      if (FUNC4(b->path))
         goto end;

      b_fallback_label = (char*)FUNC0(PATH_MAX_LENGTH, sizeof(char));

      if (!b_fallback_label)
         goto end;

      FUNC1(b_fallback_label, b->path, PATH_MAX_LENGTH * sizeof(char));

      if (FUNC4(b_fallback_label))
         goto end;

      b_str = b_fallback_label;
   }

   ret = FUNC3(a_str, b_str);

end:

   a_str = NULL;
   b_str = NULL;

   if (a_fallback_label)
   {
      FUNC2(a_fallback_label);
      a_fallback_label = NULL;
   }

   if (b_fallback_label)
   {
      FUNC2(b_fallback_label);
      b_fallback_label = NULL;
   }

   return ret;
}