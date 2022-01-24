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
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  WriterContext ;
struct TYPE_7__ {scalar_t__ bit_rate; int /*<<< orphan*/  metadata; int /*<<< orphan*/  probe_score; int /*<<< orphan*/  duration; int /*<<< orphan*/  start_time; TYPE_1__* iformat; int /*<<< orphan*/  nb_programs; int /*<<< orphan*/  nb_streams; int /*<<< orphan*/  url; scalar_t__ pb; } ;
struct TYPE_6__ {TYPE_3__* fmt_ctx; } ;
struct TYPE_5__ {scalar_t__ long_name; scalar_t__ name; } ;
typedef  TYPE_2__ InputFile ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_TIME_BASE_Q ; 
 int /*<<< orphan*/  SECTION_ID_FORMAT ; 
 int /*<<< orphan*/  SECTION_ID_FORMAT_TAGS ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  do_bitexact ; 
 scalar_t__ do_show_format_tags ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  unit_bit_per_second_str ; 
 int /*<<< orphan*/  unit_byte_str ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(WriterContext *w, InputFile *ifile)
{
    AVFormatContext *fmt_ctx = ifile->fmt_ctx;
    char val_str[128];
    int64_t size = fmt_ctx->pb ? FUNC0(fmt_ctx->pb) : -1;
    int ret = 0;

    FUNC10(w, SECTION_ID_FORMAT);
    FUNC5("filename", fmt_ctx->url);
    FUNC2("nb_streams",       fmt_ctx->nb_streams);
    FUNC2("nb_programs",      fmt_ctx->nb_programs);
    FUNC3("format_name",      fmt_ctx->iformat->name);
    if (!do_bitexact) {
        if (fmt_ctx->iformat->long_name) FUNC3    ("format_long_name", fmt_ctx->iformat->long_name);
        else                             FUNC4("format_long_name", "unknown");
    }
    FUNC6("start_time",      fmt_ctx->start_time, &AV_TIME_BASE_Q);
    FUNC6("duration",        fmt_ctx->duration,   &AV_TIME_BASE_Q);
    if (size >= 0) FUNC7    ("size", size, unit_byte_str);
    else           FUNC4("size", "N/A");
    if (fmt_ctx->bit_rate > 0) FUNC7    ("bit_rate", fmt_ctx->bit_rate, unit_bit_per_second_str);
    else                       FUNC4("bit_rate", "N/A");
    FUNC2("probe_score", fmt_ctx->probe_score);
    if (do_show_format_tags)
        ret = FUNC8(w, fmt_ctx->metadata, SECTION_ID_FORMAT_TAGS);

    FUNC9(w);
    FUNC1(stdout);
    return ret;
}