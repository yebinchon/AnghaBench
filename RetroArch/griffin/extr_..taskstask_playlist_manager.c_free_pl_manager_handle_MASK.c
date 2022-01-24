#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * playlist; struct TYPE_5__* playlist_name; struct TYPE_5__* playlist_path; } ;
typedef  TYPE_1__ pl_manager_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(pl_manager_handle_t *pl_manager)
{
   if (!pl_manager)
      return;
   
   if (!FUNC2(pl_manager->playlist_path))
   {
      FUNC0(pl_manager->playlist_path);
      pl_manager->playlist_path = NULL;
   }
   
   if (!FUNC2(pl_manager->playlist_name))
   {
      FUNC0(pl_manager->playlist_name);
      pl_manager->playlist_name = NULL;
   }
   
   if (pl_manager->playlist)
   {
      FUNC1(pl_manager->playlist);
      pl_manager->playlist = NULL;
   }
   
   FUNC0(pl_manager);
   pl_manager = NULL;
}