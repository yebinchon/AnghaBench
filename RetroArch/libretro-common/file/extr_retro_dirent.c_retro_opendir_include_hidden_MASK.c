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
struct RDIR {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,int) ; 
 scalar_t__ FUNC1 (char const*,int) ; 

struct RDIR *FUNC2(const char *name, bool include_hidden)
{
   if (&dirent_opendir_cb != NULL)
      return (struct RDIR *)FUNC0(name, include_hidden);
   return (struct RDIR *)FUNC1(name, include_hidden);
}