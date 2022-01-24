#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  codec_type; } ;
struct TYPE_5__ {char* copy_initial_nonkeyframes; int /*<<< orphan*/  stream_copy; TYPE_2__* enc_ctx; int /*<<< orphan*/ * st; } ;
typedef  TYPE_1__ OutputStream ;
typedef  int /*<<< orphan*/  OptionsContext ;
typedef  int /*<<< orphan*/  AVStream ;
typedef  int /*<<< orphan*/  AVFormatContext ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  AVMEDIA_TYPE_SUBTITLE ; 
 int /*<<< orphan*/  AV_LOG_FATAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  copy_initial_nonkeyframes ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  frame_sizes ; 
 int /*<<< orphan*/  i ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  str ; 

__attribute__((used)) static OutputStream *FUNC5(OptionsContext *o, AVFormatContext *oc, int source_index)
{
    AVStream *st;
    OutputStream *ost;
    AVCodecContext *subtitle_enc;

    ost = FUNC4(o, oc, AVMEDIA_TYPE_SUBTITLE, source_index);
    st  = ost->st;
    subtitle_enc = ost->enc_ctx;

    subtitle_enc->codec_type = AVMEDIA_TYPE_SUBTITLE;

    FUNC0(copy_initial_nonkeyframes, i, ost->copy_initial_nonkeyframes, oc, st);

    if (!ost->stream_copy) {
        char *frame_size = NULL;

        FUNC0(frame_sizes, str, frame_size, oc, st);
        if (frame_size && FUNC2(&subtitle_enc->width, &subtitle_enc->height, frame_size) < 0) {
            FUNC1(NULL, AV_LOG_FATAL, "Invalid frame size: %s.\n", frame_size);
            FUNC3(1);
        }
    }

    return ost;
}