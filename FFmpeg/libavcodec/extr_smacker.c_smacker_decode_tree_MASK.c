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
typedef  int uint32_t ;
struct TYPE_3__ {size_t current; size_t length; int* bits; int* lengths; int maxlength; int /*<<< orphan*/ * values; } ;
typedef  TYPE_1__ HuffContext ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int SMKTREE_BITS ; 
 int SMKTREE_DECODE_MAX_RECURSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(GetBitContext *gb, HuffContext *hc, uint32_t prefix, int length)
{
    if (length > SMKTREE_DECODE_MAX_RECURSION || length > 3 * SMKTREE_BITS) {
        FUNC0(NULL, AV_LOG_ERROR, "Maximum tree recursion level exceeded.\n");
        return AVERROR_INVALIDDATA;
    }

    if(!FUNC2(gb)){ //Leaf
        if(hc->current >= hc->length){
            FUNC0(NULL, AV_LOG_ERROR, "Tree size exceeded!\n");
            return AVERROR_INVALIDDATA;
        }
        if(length){
            hc->bits[hc->current] = prefix;
            hc->lengths[hc->current] = length;
        } else {
            hc->bits[hc->current] = 0;
            hc->lengths[hc->current] = 0;
        }
        hc->values[hc->current] = FUNC1(gb, 8);
        hc->current++;
        if(hc->maxlength < length)
            hc->maxlength = length;
        return 0;
    } else { //Node
        int r;
        length++;
        r = FUNC3(gb, hc, prefix, length);
        if(r)
            return r;
        return FUNC3(gb, hc, prefix | (1 << (length - 1)), length);
    }
}