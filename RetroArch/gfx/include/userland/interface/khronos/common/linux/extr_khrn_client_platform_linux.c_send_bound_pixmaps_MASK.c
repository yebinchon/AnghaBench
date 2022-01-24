#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ send; scalar_t__ used; } ;

/* Variables and functions */
 int NUM_PIXMAP_BINDINGS ; 
 TYPE_1__* pixmap_binding ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(void)
{
   int i;
   for (i = 0; i < NUM_PIXMAP_BINDINGS; i++)
   {
      if (pixmap_binding[i].used && pixmap_binding[i].send)
      {
         FUNC0(i);
      }
   }
}