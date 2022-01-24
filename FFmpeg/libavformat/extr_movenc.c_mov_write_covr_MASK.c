#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_9__ {int nb_streams; TYPE_3__* priv_data; } ;
struct TYPE_8__ {TYPE_2__* tracks; } ;
struct TYPE_6__ {scalar_t__ size; int /*<<< orphan*/  data; } ;
struct TYPE_7__ {scalar_t__ tag; TYPE_1__ cover_image; int /*<<< orphan*/  st; } ;
typedef  TYPE_2__ MOVTrack ;
typedef  TYPE_3__ MOVMuxContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int FUNC6(AVIOContext *pb, AVFormatContext *s)
{
    MOVMuxContext *mov = s->priv_data;
    int64_t pos = 0;
    int i;

    for (i = 0; i < s->nb_streams; i++) {
        MOVTrack *trk = &mov->tracks[i];

        if (!FUNC4(trk->st) || trk->cover_image.size <= 0)
            continue;

        if (!pos) {
            pos = FUNC0(pb);
            FUNC1(pb, 0);
            FUNC3(pb, "covr");
        }
        FUNC1(pb, 16 + trk->cover_image.size);
        FUNC3(pb, "data");
        FUNC1(pb, trk->tag);
        FUNC1(pb , 0);
        FUNC2(pb, trk->cover_image.data, trk->cover_image.size);
    }

    return pos ? FUNC5(pb, pos) : 0;
}