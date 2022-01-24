#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  filename ;
struct TYPE_14__ {int nb_streams; char* url; TYPE_1__** streams; TYPE_3__* priv_data; } ;
struct TYPE_13__ {char* dirname; scalar_t__ master_playlist_created; scalar_t__ hls_playlist; TYPE_2__* streams; scalar_t__ remove_at_exit; void* total_duration; void* last_duration; } ;
struct TYPE_12__ {scalar_t__ segment_type; int /*<<< orphan*/  initfile; int /*<<< orphan*/  nb_segments; scalar_t__ first_pts; scalar_t__ max_pts; scalar_t__ start_pts; } ;
struct TYPE_11__ {int /*<<< orphan*/  time_base; } ;
typedef  TYPE_2__ OutputStream ;
typedef  TYPE_3__ DASHContext ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_TIME_BASE_Q ; 
 scalar_t__ SEGMENT_TYPE_MP4 ; 
 void* FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*) ; 

__attribute__((used)) static int FUNC7(AVFormatContext *s)
{
    DASHContext *c = s->priv_data;
    int i;

    if (s->nb_streams > 0) {
        OutputStream *os = &c->streams[0];
        // If no segments have been written so far, try to do a crude
        // guess of the segment duration
        if (!c->last_duration)
            c->last_duration = FUNC0(os->max_pts - os->start_pts,
                                            s->streams[0]->time_base,
                                            AV_TIME_BASE_Q);
        c->total_duration = FUNC0(os->max_pts - os->first_pts,
                                         s->streams[0]->time_base,
                                         AV_TIME_BASE_Q);
    }
    FUNC1(s, 1, -1);

    if (c->remove_at_exit) {
        for (i = 0; i < s->nb_streams; ++i) {
            OutputStream *os = &c->streams[i];
            FUNC3(s, os, os->nb_segments);
            FUNC4(s, os->initfile);
            if (c->hls_playlist && os->segment_type == SEGMENT_TYPE_MP4) {
                char filename[1024];
                FUNC5(filename, sizeof(filename), c->dirname, i);
                FUNC2(s, filename);
            }
        }
        FUNC2(s, s->url);

        if (c->hls_playlist && c->master_playlist_created) {
            char filename[1024];
            FUNC6(filename, sizeof(filename), "%smaster.m3u8", c->dirname);
            FUNC2(s, filename);
        }
    }

    return 0;
}