#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* (* get_default_font ) () ;int /*<<< orphan*/  ident; void* (* init ) (char const*,unsigned int) ;} ;
typedef  TYPE_1__ font_renderer_driver_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__** font_backends ; 
 char* FUNC2 () ; 
 void* FUNC3 (char const*,unsigned int) ; 

int FUNC4(
      const font_renderer_driver_t **drv,
      void **handle,
      const char *font_path, unsigned font_size)
{
   unsigned i;

   for (i = 0; font_backends[i]; i++)
   {
      const char *path = font_path;

      if (!path)
         path = font_backends[i]->get_default_font();
      if (!path)
         continue;

      *handle = font_backends[i]->init(path, font_size);
      if (*handle)
      {
         FUNC1("[Font]: Using font rendering backend: %s.\n",
               font_backends[i]->ident);
         *drv = font_backends[i];
         return 1;
      }
      else
         FUNC0("Failed to create rendering backend: %s.\n",
               font_backends[i]->ident);
   }

   *drv    = NULL;
   *handle = NULL;

   return 0;
}