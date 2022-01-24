#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WriterContext ;
struct TYPE_3__ {int /*<<< orphan*/  num_rects; int /*<<< orphan*/  end_display_time; int /*<<< orphan*/  start_display_time; int /*<<< orphan*/  format; int /*<<< orphan*/  pts; } ;
typedef  TYPE_1__ AVSubtitle ;
typedef  int /*<<< orphan*/  AVStream ;
typedef  int /*<<< orphan*/  AVFormatContext ;
typedef  int /*<<< orphan*/  AVBPrint ;

/* Variables and functions */
 int /*<<< orphan*/  AV_BPRINT_SIZE_UNLIMITED ; 
 int /*<<< orphan*/  AV_TIME_BASE_Q ; 
 int /*<<< orphan*/  SECTION_ID_SUBTITLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(WriterContext *w, AVSubtitle *sub, AVStream *stream,
                          AVFormatContext *fmt_ctx)
{
    AVBPrint pbuf;

    FUNC1(&pbuf, 1, AV_BPRINT_SIZE_UNLIMITED);

    FUNC8(w, SECTION_ID_SUBTITLE);

    FUNC4 ("media_type",         "subtitle");
    FUNC6  ("pts",                 sub->pts);
    FUNC5("pts_time",            sub->pts, &AV_TIME_BASE_Q);
    FUNC3 ("format",              sub->format);
    FUNC3 ("start_display_time",  sub->start_display_time);
    FUNC3 ("end_display_time",    sub->end_display_time);
    FUNC3 ("num_rects",           sub->num_rects);

    FUNC7(w);

    FUNC0(&pbuf, NULL);
    FUNC2(stdout);
}