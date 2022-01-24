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
struct TYPE_5__ {struct TYPE_5__* frame_pos; struct TYPE_5__* state; struct TYPE_5__* file; } ;
typedef  TYPE_1__ bsv_movie_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(bsv_movie_t *handle)
{
   if (!handle)
      return;

   FUNC1(handle->file);
   FUNC0(handle->file);

   FUNC0(handle->state);
   FUNC0(handle->frame_pos);
   FUNC0(handle);
}