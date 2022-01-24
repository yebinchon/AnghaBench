#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WriterContext ;
struct TYPE_7__ {int /*<<< orphan*/  metadata; int /*<<< orphan*/  time_base; int /*<<< orphan*/  end; int /*<<< orphan*/  start; int /*<<< orphan*/  id; } ;
struct TYPE_6__ {int nb_chapters; TYPE_3__** chapters; } ;
struct TYPE_5__ {TYPE_2__* fmt_ctx; } ;
typedef  TYPE_1__ InputFile ;
typedef  TYPE_2__ AVFormatContext ;
typedef  TYPE_3__ AVChapter ;

/* Variables and functions */
 int /*<<< orphan*/  SECTION_ID_CHAPTER ; 
 int /*<<< orphan*/  SECTION_ID_CHAPTERS ; 
 int /*<<< orphan*/  SECTION_ID_CHAPTER_TAGS ; 
 scalar_t__ do_show_chapter_tags ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(WriterContext *w, InputFile *ifile)
{
    AVFormatContext *fmt_ctx = ifile->fmt_ctx;
    int i, ret = 0;

    FUNC5(w, SECTION_ID_CHAPTERS);
    for (i = 0; i < fmt_ctx->nb_chapters; i++) {
        AVChapter *chapter = fmt_ctx->chapters[i];

        FUNC5(w, SECTION_ID_CHAPTER);
        FUNC0("id", chapter->id);
        FUNC1  ("time_base", chapter->time_base, '/');
        FUNC0("start", chapter->start);
        FUNC2("start_time", chapter->start, &chapter->time_base);
        FUNC0("end", chapter->end);
        FUNC2("end_time", chapter->end, &chapter->time_base);
        if (do_show_chapter_tags)
            ret = FUNC3(w, chapter->metadata, SECTION_ID_CHAPTER_TAGS);
        FUNC4(w);
    }
    FUNC4(w);

    return ret;
}