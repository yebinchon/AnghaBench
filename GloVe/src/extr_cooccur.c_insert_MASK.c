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
typedef  int /*<<< orphan*/  CRECID ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 

void FUNC2(CRECID *pq, CRECID new, int size) {
    int j = size - 1, p;
    pq[j] = new;
    while ( (p=(j-1)/2) >= 0 ) {
        if (FUNC0(pq[p],pq[j]) > 0) {FUNC1(pq,p,j); j = p;}
        else break;
    }
}