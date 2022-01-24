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
typedef  int ptrdiff_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (char**,char const**,int) ; 
 int /*<<< orphan*/  FUNC3 (char**,char**,int) ; 
 int /*<<< orphan*/  FUNC4 (char const**) ; 

__attribute__((used)) static void FUNC5(char **begin, char **last, char **end)
{
   ptrdiff_t    len = last - begin;
   const char **tmp = (const char**)FUNC0(len, sizeof(const char*));

   FUNC4(tmp);

   FUNC2((void*)tmp, begin, len * sizeof(const char*));
   FUNC3(begin, last, (end - last) * sizeof(const char*));
   FUNC2(end - len, tmp, len * sizeof(const char*));

   FUNC1((void*)tmp);
}