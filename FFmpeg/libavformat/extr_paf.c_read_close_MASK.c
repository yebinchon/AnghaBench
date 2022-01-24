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
struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  temp_audio_frame; int /*<<< orphan*/  audio_frame; int /*<<< orphan*/  video_frame; int /*<<< orphan*/  blocks_offset_table; int /*<<< orphan*/  frames_offset_table; int /*<<< orphan*/  blocks_count_table; } ;
typedef  TYPE_1__ PAFDemuxContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(AVFormatContext *s)
{
    PAFDemuxContext *p = s->priv_data;

    FUNC0(&p->blocks_count_table);
    FUNC0(&p->frames_offset_table);
    FUNC0(&p->blocks_offset_table);
    FUNC0(&p->video_frame);
    FUNC0(&p->audio_frame);
    FUNC0(&p->temp_audio_frame);

    return 0;
}