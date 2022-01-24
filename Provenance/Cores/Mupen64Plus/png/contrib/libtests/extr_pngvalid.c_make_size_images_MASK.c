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
struct TYPE_4__ {int /*<<< orphan*/  test; } ;
typedef  TYPE_1__ png_store ;

/* Variables and functions */
 int WRITE_BDHI ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC2(png_store *ps)
{
   /* This is in case of errors. */
   FUNC1(ps->test, sizeof ps->test, 0, "make size images");

   /* Arguments are colour_type, low bit depth, high bit depth
    */
   FUNC0(ps, 0, 0, WRITE_BDHI);
   FUNC0(ps, 2, 3, WRITE_BDHI);
   FUNC0(ps, 3, 0, 3 /*palette: max 8 bits*/);
   FUNC0(ps, 4, 3, WRITE_BDHI);
   FUNC0(ps, 6, 3, WRITE_BDHI);
}