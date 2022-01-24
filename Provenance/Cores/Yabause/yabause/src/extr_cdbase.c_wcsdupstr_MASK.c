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
typedef  int /*<<< orphan*/  wchar_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t) ; 
 size_t FUNC2 (char*,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static char * FUNC3(const wchar_t * path)
{
   char * mbs;
   size_t len = FUNC2(NULL, path, 0);
   if (len == (size_t) -1) return NULL;

   mbs = FUNC1(len);
   len = FUNC2(mbs, path, len);
   if (len == (size_t) -1)
   {
      FUNC0(mbs);
      return NULL;
   }

   return mbs;
}