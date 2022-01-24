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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * image_data ; 
 int /*<<< orphan*/ * info_ptr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * png_ptr ; 

void FUNC2(int free_image_data)
{
    if (free_image_data && image_data) {
        FUNC0(image_data);
        image_data = NULL;
    }

    if (png_ptr && info_ptr) {
        FUNC1(&png_ptr, &info_ptr, NULL);
        png_ptr = NULL;
        info_ptr = NULL;
    }
}