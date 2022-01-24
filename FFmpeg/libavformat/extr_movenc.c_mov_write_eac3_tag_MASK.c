#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct eac3_info {int num_ind_sub; int data_rate; TYPE_1__* substream; } ;
struct TYPE_5__ {struct eac3_info* eac3_priv; } ;
struct TYPE_4__ {int fscod; int bsid; int bsmod; int acmod; int lfeon; int num_dep_sub; int chan_loc; } ;
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  TYPE_2__ MOVTrack ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(AVFormatContext *s, AVIOContext *pb, MOVTrack *track)
{
    PutBitContext pbc;
    uint8_t *buf;
    struct eac3_info *info;
    int size, i;

    if (!track->eac3_priv) {
        FUNC2(s, AV_LOG_ERROR,
               "Cannot write moov atom before EAC3 packets parsed.\n");
        return FUNC0(EINVAL);
    }

    info = track->eac3_priv;
    size = 2 + ((34 * (info->num_ind_sub + 1) + 7) >> 3);
    buf = FUNC3(size);
    if (!buf) {
        return FUNC0(ENOMEM);
    }

    FUNC8(&pbc, buf, size);
    FUNC9(&pbc, 13, info->data_rate);
    FUNC9(&pbc,  3, info->num_ind_sub);
    for (i = 0; i <= info->num_ind_sub; i++) {
        FUNC9(&pbc, 2, info->substream[i].fscod);
        FUNC9(&pbc, 5, info->substream[i].bsid);
        FUNC9(&pbc, 1, 0); /* reserved */
        FUNC9(&pbc, 1, 0); /* asvc */
        FUNC9(&pbc, 3, info->substream[i].bsmod);
        FUNC9(&pbc, 3, info->substream[i].acmod);
        FUNC9(&pbc, 1, info->substream[i].lfeon);
        FUNC9(&pbc, 5, 0); /* reserved */
        FUNC9(&pbc, 4, info->substream[i].num_dep_sub);
        if (!info->substream[i].num_dep_sub) {
            FUNC9(&pbc, 1, 0); /* reserved */
        } else {
            FUNC9(&pbc, 9, info->substream[i].chan_loc);
        }
    }
    FUNC7(&pbc);
    size = FUNC10(&pbc) >> 3;

    FUNC4(pb, size + 8);
    FUNC6(pb, "dec3");
    FUNC5(pb, buf, size);

    FUNC1(buf);

    return size;
}