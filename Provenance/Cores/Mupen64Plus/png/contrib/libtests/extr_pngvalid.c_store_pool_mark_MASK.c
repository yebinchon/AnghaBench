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
typedef  int png_uint_32 ;
typedef  int /*<<< orphan*/  png_bytep ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(png_bytep mark)
{
   static png_uint_32 store_seed[2] = { 0x12345678, 1};

   FUNC0(store_seed, mark);
}