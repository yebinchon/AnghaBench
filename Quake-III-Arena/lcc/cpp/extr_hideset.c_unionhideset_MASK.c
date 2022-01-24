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
typedef  scalar_t__* Hideset ;

/* Variables and functions */
 scalar_t__** hidesets ; 
 int FUNC0 (int,scalar_t__) ; 

int
FUNC1(int hs1, int hs2)
{
	Hideset hp;

	for (hp = hidesets[hs2]; *hp; hp++)
		hs1 = FUNC0(hs1, *hp);
	return hs1;
}