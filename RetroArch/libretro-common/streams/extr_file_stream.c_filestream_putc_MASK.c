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
typedef  int /*<<< orphan*/  RFILE ;

/* Variables and functions */
 int EOF ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC1(RFILE *stream, int c)
{
   char c_char = (char)c;
   if (!stream)
      return EOF;
   return FUNC0(stream, &c_char, 1)==1 ? (int)(unsigned char)c : EOF;
}