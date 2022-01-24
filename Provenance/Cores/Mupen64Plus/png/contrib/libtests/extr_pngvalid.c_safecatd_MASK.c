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

/* Variables and functions */
 size_t FUNC0 (char*,size_t,size_t,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,double) ; 

__attribute__((used)) static size_t FUNC2(char *buffer, size_t bufsize, size_t pos, double d,
    int precision)
{
   char number[64];
   FUNC1(number, "%.*f", precision, d);
   return FUNC0(buffer, bufsize, pos, number);
}