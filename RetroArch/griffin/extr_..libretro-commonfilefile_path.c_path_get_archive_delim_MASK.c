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
 char* FUNC1 (char const*,char*) ; 

const char *FUNC2(const char *path)
{
   const char *last  = FUNC0(path);
   const char *delim = NULL;

   if (!last)
      return NULL;

   /* Test if it's .zip */
   delim = FUNC1(last, ".zip#");

   if (!delim) /* If it's not a .zip, test if it's .apk */
      delim = FUNC1(last, ".apk#");

   if (delim)
      return delim + 4;

   /* If it's not a .zip or .apk file, test if it's .7z */
   delim = FUNC1(last, ".7z#");

   if (delim)
      return delim + 3;

   return NULL;
}