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
typedef  TYPE_1__* png_structrp ;
typedef  int /*<<< orphan*/  png_size_t ;
struct TYPE_4__ {int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  PNG_HAVE_IEND ; 
 int /*<<< orphan*/  png_IEND ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void /* PRIVATE */
FUNC2(png_structrp png_ptr)
{
   FUNC0(1, "in png_write_IEND");

   FUNC1(png_ptr, png_IEND, NULL, (png_size_t)0);
   png_ptr->mode |= PNG_HAVE_IEND;
}