#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_8__ {scalar_t__ trex_count; TYPE_2__* trex_data; TYPE_1__* fc; } ;
struct TYPE_7__ {void* flags; void* size; void* duration; void* stsd_id; void* track_id; } ;
struct TYPE_6__ {int /*<<< orphan*/  duration; } ;
typedef  TYPE_2__ MOVTrackExt ;
typedef  TYPE_3__ MOVContext ;
typedef  int /*<<< orphan*/  MOVAtom ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_NOPTS_VALUE ; 
 int UINT_MAX ; 
 int FUNC0 (TYPE_2__**,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    MOVTrackExt *trex;
    int err;

    if ((uint64_t)c->trex_count+1 >= UINT_MAX / sizeof(*c->trex_data))
        return AVERROR_INVALIDDATA;
    if ((err = FUNC0(&c->trex_data, c->trex_count + 1,
                                 sizeof(*c->trex_data))) < 0) {
        c->trex_count = 0;
        return err;
    }

    c->fc->duration = AV_NOPTS_VALUE; // the duration from mvhd is not representing the whole file when fragments are used.

    trex = &c->trex_data[c->trex_count++];
    FUNC1(pb); /* version */
    FUNC2(pb); /* flags */
    trex->track_id = FUNC3(pb);
    trex->stsd_id  = FUNC3(pb);
    trex->duration = FUNC3(pb);
    trex->size     = FUNC3(pb);
    trex->flags    = FUNC3(pb);
    return 0;
}