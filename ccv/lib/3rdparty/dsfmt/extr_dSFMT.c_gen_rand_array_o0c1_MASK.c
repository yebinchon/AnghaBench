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
typedef  void* dw128_t ;
struct TYPE_3__ {void** status; } ;
typedef  TYPE_1__ dsfmt_t ;

/* Variables and functions */
 size_t DSFMT_N ; 
 size_t DSFMT_POS1 ; 
 int /*<<< orphan*/  FUNC0 (void**) ; 
 int /*<<< orphan*/  FUNC1 (void**,void**,void**,void**) ; 

__attribute__((used)) inline static void FUNC2(dsfmt_t *dsfmt, dw128_t *array,
				       int size) {
    int i, j;
    dw128_t lung;

    lung = dsfmt->status[DSFMT_N];
    FUNC1(&array[0], &dsfmt->status[0], &dsfmt->status[DSFMT_POS1],
		 &lung);
    for (i = 1; i < DSFMT_N - DSFMT_POS1; i++) {
	FUNC1(&array[i], &dsfmt->status[i],
		     &dsfmt->status[i + DSFMT_POS1], &lung);
    }
    for (; i < DSFMT_N; i++) {
	FUNC1(&array[i], &dsfmt->status[i],
		     &array[i + DSFMT_POS1 - DSFMT_N], &lung);
    }
    for (; i < size - DSFMT_N; i++) {
	FUNC1(&array[i], &array[i - DSFMT_N],
		     &array[i + DSFMT_POS1 - DSFMT_N], &lung);
	FUNC0(&array[i - DSFMT_N]);
    }
    for (j = 0; j < 2 * DSFMT_N - size; j++) {
	dsfmt->status[j] = array[j + size - DSFMT_N];
    }
    for (; i < size; i++, j++) {
	FUNC1(&array[i], &array[i - DSFMT_N],
		     &array[i + DSFMT_POS1 - DSFMT_N], &lung);
	dsfmt->status[j] = array[i];
	FUNC0(&array[i - DSFMT_N]);
    }
    for (i = size - DSFMT_N; i < size; i++) {
	FUNC0(&array[i]);
    }
    dsfmt->status[DSFMT_N] = lung;
}