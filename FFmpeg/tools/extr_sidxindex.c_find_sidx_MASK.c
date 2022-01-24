#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct Tracks {int nb_tracks; struct Track** tracks; } ;
struct Track {scalar_t__ sidx_start; int sidx_length; } ;
typedef  scalar_t__ int64_t ;
typedef  int int32_t ;
struct TYPE_7__ {int /*<<< orphan*/  eof_reached; } ;
typedef  TYPE_1__ AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  AVIO_FLAG_READ ; 
 int FUNC0 (char,char,char,char) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(struct Tracks *tracks, int start_index,
                     const char *file)
{
    int err = 0;
    AVIOContext *f = NULL;
    int i;

    if ((err = FUNC2(&f, file, AVIO_FLAG_READ, NULL, NULL)) < 0)
        goto fail;

    while (!f->eof_reached) {
        int64_t pos = FUNC5(f);
        int32_t size, tag;

        size = FUNC3(f);
        tag  = FUNC3(f);
        if (size < 8)
            break;
        if (tag == FUNC0('s', 'i', 'd', 'x')) {
            for (i = start_index; i < tracks->nb_tracks; i++) {
                struct Track *track = tracks->tracks[i];
                if (!track->sidx_start) {
                    track->sidx_start  = pos;
                    track->sidx_length = size;
                } else if (pos == track->sidx_start + track->sidx_length) {
                    track->sidx_length = pos + size - track->sidx_start;
                }
            }
        }
        if (FUNC4(f, pos + size, SEEK_SET) != pos + size)
            break;
    }

fail:
    if (f)
        FUNC1(f);
    return err;
}