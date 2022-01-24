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
struct TYPE_4__ {scalar_t__ npalette; struct TYPE_4__* palette; scalar_t__ datacount; int /*<<< orphan*/  data; struct TYPE_4__* next; } ;
typedef  TYPE_1__ png_store_file ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(png_store_file **ppf)
{
   if (*ppf != NULL)
   {
      FUNC2(&(*ppf)->next);

      FUNC1(&(*ppf)->data);
      (*ppf)->datacount = 0;
      if ((*ppf)->palette != NULL)
      {
         FUNC0((*ppf)->palette);
         (*ppf)->palette = NULL;
         (*ppf)->npalette = 0;
      }
      FUNC0(*ppf);
      *ppf = NULL;
   }
}