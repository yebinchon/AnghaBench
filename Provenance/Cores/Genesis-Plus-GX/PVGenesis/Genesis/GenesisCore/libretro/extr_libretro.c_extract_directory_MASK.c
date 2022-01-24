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
 int /*<<< orphan*/  FUNC0 (char*,char const*,size_t) ; 
 char* FUNC1 (char*,char) ; 

__attribute__((used)) static void FUNC2(char *buf, const char *path, size_t size)
{
   char *base;
   FUNC0(buf, path, size - 1);
   buf[size - 1] = '\0';

   base = FUNC1(buf, '/');
   if (!base)
      base = FUNC1(buf, '\\');

   if (base)
      *base = '\0';
   else
      buf[0] = '\0';
}