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
struct TYPE_3__ {scalar_t__ font; } ;
typedef  TYPE_1__ d3dfonts_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(void *data, bool is_threaded)
{
   d3dfonts_t *d3dfonts = (d3dfonts_t*)data;

   if (!d3dfonts)
      return;

   if (d3dfonts->font)
      FUNC0(d3dfonts->font);

   FUNC1(d3dfonts);
}