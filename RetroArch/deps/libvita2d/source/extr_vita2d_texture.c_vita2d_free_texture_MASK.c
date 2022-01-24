#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ data_UID; scalar_t__ palette_UID; scalar_t__ depth_UID; scalar_t__ gxm_rtgt; } ;
typedef  TYPE_1__ vita2d_texture ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void FUNC3(vita2d_texture *texture)
{
	if (texture) {
		if (texture->gxm_rtgt) {
			FUNC2(texture->gxm_rtgt);
		}
		if (texture->depth_UID) {
			FUNC1(texture->depth_UID);
		}
		if (texture->palette_UID) {
			FUNC1(texture->palette_UID);
		}
		FUNC1(texture->data_UID);
		FUNC0(texture);
	}
}