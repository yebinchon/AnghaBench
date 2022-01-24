#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_7__ {int idx; TYPE_1__* state; } ;
typedef  TYPE_2__ sfmt_t ;
struct TYPE_6__ {int* u; } ;

/* Variables and functions */
 int SFMT_N ; 
 int SFMT_N32 ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 size_t FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

void FUNC5(sfmt_t * sfmt, uint32_t *init_key, int key_length) {
    int i, j, count;
    uint32_t r;
    int lag;
    int mid;
    int size = SFMT_N * 4;
    uint32_t *psfmt32 = &sfmt->state[0].u[0];

    if (size >= 623) {
	lag = 11;
    } else if (size >= 68) {
	lag = 7;
    } else if (size >= 39) {
	lag = 5;
    } else {
	lag = 3;
    }
    mid = (size - lag) / 2;

    FUNC3(sfmt, 0x8b, sizeof(sfmt_t));
    if (key_length + 1 > SFMT_N32) {
	count = key_length + 1;
    } else {
	count = SFMT_N32;
    }
    r = FUNC0(psfmt32[FUNC2(0)] ^ psfmt32[FUNC2(mid)]
	      ^ psfmt32[FUNC2(SFMT_N32 - 1)]);
    psfmt32[FUNC2(mid)] += r;
    r += key_length;
    psfmt32[FUNC2(mid + lag)] += r;
    psfmt32[FUNC2(0)] = r;

    count--;
    for (i = 1, j = 0; (j < count) && (j < key_length); j++) {
	r = FUNC0(psfmt32[FUNC2(i)] ^ psfmt32[FUNC2((i + mid) % SFMT_N32)]
		  ^ psfmt32[FUNC2((i + SFMT_N32 - 1) % SFMT_N32)]);
	psfmt32[FUNC2((i + mid) % SFMT_N32)] += r;
	r += init_key[j] + i;
	psfmt32[FUNC2((i + mid + lag) % SFMT_N32)] += r;
	psfmt32[FUNC2(i)] = r;
	i = (i + 1) % SFMT_N32;
    }
    for (; j < count; j++) {
	r = FUNC0(psfmt32[FUNC2(i)] ^ psfmt32[FUNC2((i + mid) % SFMT_N32)]
		  ^ psfmt32[FUNC2((i + SFMT_N32 - 1) % SFMT_N32)]);
	psfmt32[FUNC2((i + mid) % SFMT_N32)] += r;
	r += i;
	psfmt32[FUNC2((i + mid + lag) % SFMT_N32)] += r;
	psfmt32[FUNC2(i)] = r;
	i = (i + 1) % SFMT_N32;
    }
    for (j = 0; j < SFMT_N32; j++) {
	r = FUNC1(psfmt32[FUNC2(i)] + psfmt32[FUNC2((i + mid) % SFMT_N32)]
		  + psfmt32[FUNC2((i + SFMT_N32 - 1) % SFMT_N32)]);
	psfmt32[FUNC2((i + mid) % SFMT_N32)] ^= r;
	r -= i;
	psfmt32[FUNC2((i + mid + lag) % SFMT_N32)] ^= r;
	psfmt32[FUNC2(i)] = r;
	i = (i + 1) % SFMT_N32;
    }

    sfmt->idx = SFMT_N32;
    FUNC4(sfmt);
}