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
typedef  int /*<<< orphan*/  video_info_t ;
typedef  int /*<<< orphan*/  input_driver_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void *FUNC2(const video_info_t *video,
      input_driver_t **input, void **input_data)
{
   (void)video;
   (void)input;
   (void)input_data;
   FUNC0("Sanity check fail! Threaded mustn't be reinit.\n");
   FUNC1();
   return NULL;
}