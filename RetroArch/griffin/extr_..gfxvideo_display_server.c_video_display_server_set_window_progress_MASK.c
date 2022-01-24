#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int (* set_window_progress ) (int /*<<< orphan*/ ,int,int) ;} ;

/* Variables and functions */
 TYPE_1__* current_display_server ; 
 int /*<<< orphan*/  current_display_server_data ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 

bool FUNC1(int progress, bool finished)
{
   if (current_display_server && current_display_server->set_window_progress)
      return current_display_server->set_window_progress(current_display_server_data, progress, finished);
   return false;
}