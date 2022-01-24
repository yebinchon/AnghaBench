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
typedef  int /*<<< orphan*/  png_const_structp ;
typedef  int /*<<< orphan*/  png_byte ;

/* Variables and functions */
 int TRANSFORM_WIDTH ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t
FUNC1(png_const_structp pp, png_byte colour_type,
   png_byte bit_depth)
{
   return (TRANSFORM_WIDTH * FUNC0(pp, colour_type, bit_depth)) / 8;
}