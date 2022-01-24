#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int* bytestream_start; int* bytestream; int* bytestream_end; int range; int low; int hash_shift; unsigned int* prob; int* range_hash; scalar_t__ overread; int /*<<< orphan*/  scale; } ;
typedef  TYPE_1__ lag_rac ;
struct TYPE_9__ {int* buffer; } ;
typedef  TYPE_2__ GetBitContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*) ; 

void FUNC4(lag_rac *l, GetBitContext *gb, int length)
{
    int i, j, left;

    /* According to reference decoder "1st byte is garbage",
     * however, it gets skipped by the call to align_get_bits()
     */
    FUNC1(gb);
    left                = FUNC3(gb) >> 3;
    l->bytestream_start =
    l->bytestream       = gb->buffer + FUNC2(gb) / 8;
    l->bytestream_end   = l->bytestream_start + left;

    l->range        = 0x80;
    l->low          = *l->bytestream >> 1;
    l->hash_shift   = FUNC0(l->scale, 10) - 10;
    l->overread     = 0;

    for (i = j = 0; i < 1024; i++) {
        unsigned r = i << l->hash_shift;
        while (l->prob[j + 1] <= r)
            j++;
        l->range_hash[i] = j;
    }
}