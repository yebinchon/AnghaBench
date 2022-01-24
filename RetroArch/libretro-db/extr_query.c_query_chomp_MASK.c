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
struct buffer {size_t offset; unsigned int len; scalar_t__* data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 

__attribute__((used)) static struct buffer FUNC1(struct buffer buff)
{
   for (; (unsigned)buff.offset < buff.len
         && FUNC0((int)buff.data[buff.offset]); buff.offset++);
   return buff;
}