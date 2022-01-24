#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  size_t uint16_t ;
struct TYPE_3__ {size_t** c; int** r; } ;
typedef  TYPE_1__ sdaux_t ;
typedef  scalar_t__ int8_t ;

/* Variables and functions */

__attribute__((used)) static inline int FUNC0(const sdaux_t *aux, int8_t sr[729], uint8_t sc[324], int r, int v)
{
	int c2, min = 10, min_c = 0;
	for (c2 = 0; c2 < 4; ++c2) sc[aux->c[r][c2]] += v<<7;
	for (c2 = 0; c2 < 4; ++c2) { // update # available choices
		int r2, rr, cc2, c = aux->c[r][c2];
		if (v > 0) { // move forward
			for (r2 = 0; r2 < 9; ++r2) {
				if (sr[rr = aux->r[c][r2]]++ != 0) continue; // update the row status
				for (cc2 = 0; cc2 < 4; ++cc2) {
					int cc = aux->c[rr][cc2];
					if (--sc[cc] < min) // update # allowed choices
						min = sc[cc], min_c = cc; // register the minimum number
				}
			}
		} else { // revert
			const uint16_t *p;
			for (r2 = 0; r2 < 9; ++r2) {
				if (--sr[rr = aux->r[c][r2]] != 0) continue; // update the row status
				p = aux->c[rr]; ++sc[p[0]]; ++sc[p[1]]; ++sc[p[2]]; ++sc[p[3]]; // update the count array
			}
		}
	}
	return min<<16 | min_c; // return the col that has been modified and with the minimal available choices
}