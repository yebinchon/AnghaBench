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
typedef  size_t uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  color; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 TYPE_1__* formats ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(int type)
{
   uint32_t i;
   for (i = 0; i != FUNC0(formats); ++i) {
      formats[i].color = (type == 0) ?
         FUNC1(formats[i].color) :
         FUNC2(formats[i].color);
   }
}