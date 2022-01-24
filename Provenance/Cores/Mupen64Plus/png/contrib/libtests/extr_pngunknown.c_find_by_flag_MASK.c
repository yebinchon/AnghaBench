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
typedef  scalar_t__ png_uint_32 ;
struct TYPE_2__ {scalar_t__ flag; } ;

/* Variables and functions */
 int NINFO ; 
 TYPE_1__* chunk_info ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC2(png_uint_32 flag)
{
   int i = NINFO;

   while (--i >= 0) if (chunk_info[i].flag == flag) return i;

   FUNC1(stderr, "pngunknown: internal error\n");
   FUNC0(4);
}