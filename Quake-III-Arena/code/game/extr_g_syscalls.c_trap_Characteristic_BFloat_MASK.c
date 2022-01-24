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
 int /*<<< orphan*/  BOTLIB_AI_CHARACTERISTIC_BFLOAT ; 
 int /*<<< orphan*/  FUNC0 (float) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

float FUNC2(int character, int index, float min, float max) {
	int temp;
	temp = FUNC1( BOTLIB_AI_CHARACTERISTIC_BFLOAT, character, index, FUNC0(min), FUNC0(max) );
	return (*(float*)&temp);
}