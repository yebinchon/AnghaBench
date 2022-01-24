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
struct TYPE_9__ {int min_mono_subband; int /*<<< orphan*/  nsubbands; int /*<<< orphan*/  max_mono_subband; int /*<<< orphan*/  gb; } ;
struct TYPE_8__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ LBRChunk ;
typedef  TYPE_2__ DCALbrDecoder ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int,int,int,int,int) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int,int,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(DCALbrDecoder *s, LBRChunk *chunk, int ch1, int ch2)
{
    if (!chunk->len)
        return 0;
    if (FUNC0(&s->gb, chunk->data, chunk->len) < 0)
        return -1;
    if (FUNC2(s, ch1, ch2, 1, 3, 0) < 0)
        return -1;
    if (FUNC3(s, ch1, ch2, 6, s->max_mono_subband, 0) < 0)
        return -1;
    if (ch1 != ch2) {
        if (FUNC1(s, ch2) < 0)
            return -1;
        if (FUNC2(s, ch1, ch2, 0, 3, 1) < 0)
            return -1;
    }
    if (FUNC3(s, ch1, ch2, s->min_mono_subband, s->nsubbands, 1) < 0)
        return -1;
    return 0;
}