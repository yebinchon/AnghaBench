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
union string_list_elem_attr {scalar_t__ i; } ;
typedef  void string_list ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (void**) ; 
 char* FUNC2 (void*,char*) ; 
 scalar_t__ FUNC3 (int,char*,void***) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (void*,char*,union string_list_elem_attr) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 void* FUNC7 () ; 

__attribute__((used)) static void *FUNC8(void *data)
{
   void **hints, **n;
   union string_list_elem_attr attr;
   struct string_list *s = FUNC7();

   if (!s)
      return NULL;

   attr.i = 0;

   if (FUNC3(-1, "pcm", &hints) != 0)
      goto error;

   n      = hints;

   while (*n != NULL)
   {
      char *name = FUNC2(*n, "NAME");
      char *io   = FUNC2(*n, "IOID");
      char *desc = FUNC2(*n, "DESC");

      /* description of device IOID - input / output identifcation
       * ("Input" or "Output"), NULL means both) */

      if (!io || FUNC4(io,"Output"))
         FUNC5(s, name, attr);

      if (name)
         FUNC0(name);
      if (io)
         FUNC0(io);
      if (desc)
         FUNC0(desc);

      n++;
   }

   /* free hint buffer too */
   FUNC1(hints);

   return s;

error:
   FUNC6(s);
   return NULL;
}