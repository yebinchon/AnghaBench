#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int abort_request; scalar_t__ audio_stream; scalar_t__ video_stream; scalar_t__ subtitle_stream; scalar_t__ sub_texture; scalar_t__ vid_texture; scalar_t__ vis_texture; struct TYPE_5__* filename; int /*<<< orphan*/  sub_convert_ctx; int /*<<< orphan*/  img_convert_ctx; int /*<<< orphan*/  continue_read_thread; int /*<<< orphan*/  subpq; int /*<<< orphan*/  sampq; int /*<<< orphan*/  pictq; int /*<<< orphan*/  subtitleq; int /*<<< orphan*/  audioq; int /*<<< orphan*/  videoq; int /*<<< orphan*/  ic; int /*<<< orphan*/  read_tid; } ;
typedef  TYPE_1__ VideoState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(VideoState *is)
{
    /* XXX: use a special url_shutdown call to abort parse cleanly */
    is->abort_request = 1;
    FUNC2(is->read_tid, NULL);

    /* close each stream */
    if (is->audio_stream >= 0)
        FUNC7(is, is->audio_stream);
    if (is->video_stream >= 0)
        FUNC7(is, is->video_stream);
    if (is->subtitle_stream >= 0)
        FUNC7(is, is->subtitle_stream);

    FUNC4(&is->ic);

    FUNC6(&is->videoq);
    FUNC6(&is->audioq);
    FUNC6(&is->subtitleq);

    /* free all pictures */
    FUNC5(&is->pictq);
    FUNC5(&is->sampq);
    FUNC5(&is->subpq);
    FUNC0(is->continue_read_thread);
    FUNC8(is->img_convert_ctx);
    FUNC8(is->sub_convert_ctx);
    FUNC3(is->filename);
    if (is->vis_texture)
        FUNC1(is->vis_texture);
    if (is->vid_texture)
        FUNC1(is->vid_texture);
    if (is->sub_texture)
        FUNC1(is->sub_texture);
    FUNC3(is);
}