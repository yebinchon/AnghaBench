#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int nentries; int* lens; int /*<<< orphan*/ * codewords; } ;
typedef  TYPE_1__ vorbis_enc_codebook ;
struct TYPE_8__ {int size_in_bits; } ;
typedef  TYPE_2__ PutBitContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static inline int FUNC4(PutBitContext *pb, vorbis_enc_codebook *cb,
                               int entry)
{
    FUNC1(entry >= 0);
    FUNC1(entry < cb->nentries);
    FUNC1(cb->lens[entry]);
    if (pb->size_in_bits - FUNC3(pb) < cb->lens[entry])
        return FUNC0(EINVAL);
    FUNC2(pb, cb->lens[entry], cb->codewords[entry]);
    return 0;
}