#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_14__ {TYPE_4__* priv_data; } ;
struct TYPE_13__ {int flags; } ;
struct TYPE_12__ {int count; size_t duration; } ;
struct TYPE_11__ {int entry; TYPE_1__* cluster; } ;
struct TYPE_10__ {size_t cts; } ;
typedef  TYPE_2__ MOVTrack ;
typedef  TYPE_3__ MOVStts ;
typedef  TYPE_4__ MOVMuxContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_5__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FF_MOV_FLAG_NEGATIVE_CTS_OFFSETS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 TYPE_3__* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC7(AVFormatContext *s, AVIOContext *pb, MOVTrack *track)
{
    MOVMuxContext *mov = s->priv_data;
    MOVStts *ctts_entries;
    uint32_t entries = 0;
    uint32_t atom_size;
    int i;

    ctts_entries = FUNC2((track->entry + 1), sizeof(*ctts_entries)); /* worst case */
    if (!ctts_entries)
        return FUNC0(ENOMEM);
    ctts_entries[0].count = 1;
    ctts_entries[0].duration = track->cluster[0].cts;
    for (i = 1; i < track->entry; i++) {
        if (track->cluster[i].cts == ctts_entries[entries].duration) {
            ctts_entries[entries].count++; /* compress */
        } else {
            entries++;
            ctts_entries[entries].duration = track->cluster[i].cts;
            ctts_entries[entries].count = 1;
        }
    }
    entries++; /* last one */
    atom_size = 16 + (entries * 8);
    FUNC5(pb, atom_size); /* size */
    FUNC6(pb, "ctts");
    if (mov->flags & FF_MOV_FLAG_NEGATIVE_CTS_OFFSETS)
        FUNC3(pb, 1); /* version */
    else
        FUNC3(pb, 0); /* version */
    FUNC4(pb, 0); /* flags */
    FUNC5(pb, entries); /* entry count */
    for (i = 0; i < entries; i++) {
        FUNC5(pb, ctts_entries[i].count);
        FUNC5(pb, ctts_entries[i].duration);
    }
    FUNC1(ctts_entries);
    return atom_size;
}