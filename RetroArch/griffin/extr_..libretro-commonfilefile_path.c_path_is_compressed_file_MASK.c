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
 scalar_t__ FUNC1 (char const*,char*) ; 

bool FUNC2(const char* path)
{
   const char *ext = FUNC0(path);

   if (     FUNC1(ext, "zip")
         || FUNC1(ext, "apk")
         || FUNC1(ext, "7z"))
      return true;

   return false;
}