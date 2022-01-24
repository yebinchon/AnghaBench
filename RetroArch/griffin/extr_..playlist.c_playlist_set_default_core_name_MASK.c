#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int modified; scalar_t__ default_core_name; } ;
typedef  TYPE_1__ playlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char const*) ; 

void FUNC4(playlist_t *playlist, const char *core_name)
{
   if (!playlist || FUNC2(core_name))
      return;

   if (!FUNC3(playlist->default_core_name, core_name))
   {
      if (playlist->default_core_name)
         FUNC0(playlist->default_core_name);
      playlist->default_core_name = FUNC1(core_name);
      playlist->modified = true;
   }
}