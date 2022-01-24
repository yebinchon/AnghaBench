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
typedef  int /*<<< orphan*/  png_uint_32 ;
typedef  int /*<<< orphan*/  png_const_structrp ;
typedef  int /*<<< orphan*/  png_byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int /* PRIVATE */
FUNC2(png_const_structrp png_ptr, png_uint_32 chunk_name)
{
   png_byte chunk_string[5];

   FUNC0(chunk_string, chunk_name);
   return FUNC1(png_ptr, chunk_string);
}