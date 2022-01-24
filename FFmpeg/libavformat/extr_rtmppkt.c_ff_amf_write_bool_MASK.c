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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int AMF_DATA_TYPE_BOOL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int) ; 

void FUNC1(uint8_t **dst, int val)
{
    FUNC0(dst, AMF_DATA_TYPE_BOOL);
    FUNC0(dst, val);
}