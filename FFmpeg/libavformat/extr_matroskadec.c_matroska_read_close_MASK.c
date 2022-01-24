#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_4__* priv_data; } ;
struct TYPE_10__ {int nb_elem; TYPE_3__* elem; } ;
struct TYPE_12__ {TYPE_2__ tracks; } ;
struct TYPE_9__ {int /*<<< orphan*/  buf; } ;
struct TYPE_11__ {scalar_t__ type; TYPE_1__ audio; } ;
typedef  TYPE_3__ MatroskaTrack ;
typedef  TYPE_4__ MatroskaDemuxContext ;
typedef  TYPE_5__ AVFormatContext ;

/* Variables and functions */
 scalar_t__ MATROSKA_TRACK_TYPE_AUDIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  matroska_segment ; 

__attribute__((used)) static int FUNC3(AVFormatContext *s)
{
    MatroskaDemuxContext *matroska = s->priv_data;
    MatroskaTrack *tracks = matroska->tracks.elem;
    int n;

    FUNC2(matroska);

    for (n = 0; n < matroska->tracks.nb_elem; n++)
        if (tracks[n].type == MATROSKA_TRACK_TYPE_AUDIO)
            FUNC0(&tracks[n].audio.buf);
    FUNC1(matroska_segment, matroska);

    return 0;
}