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
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int,int,char const*,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int,char const*) ; 

void FUNC3(int x, int y, int z, int face, const char *text) {
    int p = FUNC1(x);
    int q = FUNC1(z);
    FUNC0(p, q, x, y, z, face, text, 1);
    FUNC2(x, y, z, face, text);
}