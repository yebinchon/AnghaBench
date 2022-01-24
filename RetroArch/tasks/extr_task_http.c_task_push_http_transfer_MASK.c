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
typedef  int /*<<< orphan*/  retro_task_callback_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char const*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,char const*,int,char const*,int /*<<< orphan*/ ,void*) ; 

void* FUNC3(const char *url, bool mute,
      const char *type,
      retro_task_callback_t cb, void *user_data)
{
   if (FUNC1(url))
      return NULL;
   return FUNC2(
         FUNC0(url, "GET", NULL),
         url, mute, type, cb, user_data);
}