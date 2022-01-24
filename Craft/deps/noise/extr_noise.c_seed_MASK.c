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
 unsigned char* PERM ; 
 int RAND_MAX ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 

void FUNC3(unsigned int x) {
    FUNC2(x);
    for (int i = 0; i < 256; i++) {
        PERM[i] = i;
    }
    for (int i = 255; i > 0; i--) {
        int j;
        int n = i + 1;
        while (n <= (j = FUNC1() / (RAND_MAX / n)));
        unsigned char a = PERM[i];
        unsigned char b = PERM[j];
        PERM[i] = b;
        PERM[j] = a;
    }
    FUNC0(PERM + 256, PERM, sizeof(unsigned char) * 256);
}