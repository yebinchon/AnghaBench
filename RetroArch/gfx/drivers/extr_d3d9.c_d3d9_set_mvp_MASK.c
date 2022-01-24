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
typedef  int /*<<< orphan*/  LPDIRECT3DDEVICE9 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,float const*,int) ; 

void FUNC1(void *data, const void *mat_data)
{
   LPDIRECT3DDEVICE9 dev = (LPDIRECT3DDEVICE9)data;
   FUNC0(dev, 0, (const float*)mat_data, 4);
}