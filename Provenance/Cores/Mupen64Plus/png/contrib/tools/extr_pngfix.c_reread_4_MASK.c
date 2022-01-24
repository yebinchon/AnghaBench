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
struct file {int dummy; } ;
typedef  int png_uint_32 ;

/* Variables and functions */
 int FUNC0 (struct file*) ; 

__attribute__((used)) static png_uint_32
FUNC1(struct file *file)
   /* The same but for a four byte quantity */
{
   png_uint_32 result = 0;
   int i = 0;

   while (++i <= 4)
      result = (result << 8) + FUNC0(file);

   return result;
}