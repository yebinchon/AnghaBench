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
typedef  int /*<<< orphan*/  png_byte ;

/* Variables and functions */
 int FUNC0 (double) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static png_byte
FUNC2(double linear /*range 0.0 .. 1.0*/)
{
   return FUNC1(255 * FUNC0(linear));
}