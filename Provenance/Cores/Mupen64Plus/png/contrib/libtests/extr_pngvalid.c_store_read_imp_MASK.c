#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {size_t readpos; int /*<<< orphan*/  pread; TYPE_1__* next; int /*<<< orphan*/ * current; } ;
typedef  TYPE_2__ png_store ;
typedef  scalar_t__ png_size_t ;
typedef  size_t png_bytep ;
struct TYPE_6__ {size_t buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 size_t FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC4(png_store *ps, png_bytep pb, png_size_t st)
{
   if (ps->current == NULL || ps->next == NULL)
      FUNC1(ps->pread, "store state damaged");

   while (st > 0)
   {
      size_t cbAvail = FUNC3(ps) - ps->readpos;

      if (cbAvail > 0)
      {
         if (cbAvail > st) cbAvail = st;
         FUNC0(pb, ps->next->buffer + ps->readpos, cbAvail);
         st -= cbAvail;
         pb += cbAvail;
         ps->readpos += cbAvail;
      }

      else if (!FUNC2(ps))
         FUNC1(ps->pread, "read beyond end of file");
   }
}