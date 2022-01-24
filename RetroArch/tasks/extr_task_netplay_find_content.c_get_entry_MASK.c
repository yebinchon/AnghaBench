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
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 

__attribute__((used)) static void FUNC3(char *entry, int len, const char *path)
{
   const char *buf = FUNC0(path);
   entry[0]        = '\0';

   FUNC2(entry, buf, len);
   FUNC1(entry);
}