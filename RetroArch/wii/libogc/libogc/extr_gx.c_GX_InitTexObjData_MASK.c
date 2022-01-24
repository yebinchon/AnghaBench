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
struct __gx_texobj {int tex_maddr; } ;
typedef  int /*<<< orphan*/  GXTexObj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 

void FUNC2(GXTexObj *obj,void *img_ptr)
{
	struct __gx_texobj *ptr = (struct __gx_texobj*)obj;
	ptr->tex_maddr = (ptr->tex_maddr&~0x00ffffff)|(FUNC1(FUNC0(img_ptr),5,24));
}