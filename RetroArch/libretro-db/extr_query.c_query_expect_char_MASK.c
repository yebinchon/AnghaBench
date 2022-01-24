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
struct buffer {size_t offset; unsigned int len; char* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,char,char,char const**) ; 
 int /*<<< orphan*/  FUNC1 (size_t,char const**) ; 

__attribute__((used)) static struct buffer FUNC2(struct buffer buff,
      char c, const char ** error)
{
   if ((unsigned)buff.offset >= buff.len)
      FUNC1(buff.offset, error);
   else if (buff.data[buff.offset] != c)
      FUNC0(
            buff.offset, c, buff.data[buff.offset], error);
   else
      buff.offset++;
   return buff;
}