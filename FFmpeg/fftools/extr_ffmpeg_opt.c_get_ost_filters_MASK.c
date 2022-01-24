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
struct TYPE_7__ {TYPE_1__* codecpar; int /*<<< orphan*/  index; } ;
struct TYPE_6__ {char* filters; scalar_t__ filters_script; TYPE_3__* st; } ;
struct TYPE_5__ {scalar_t__ codec_type; } ;
typedef  TYPE_2__ OutputStream ;
typedef  int /*<<< orphan*/  OptionsContext ;
typedef  TYPE_3__ AVStream ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 scalar_t__ AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  nb_output_files ; 
 char* FUNC3 (scalar_t__) ; 

__attribute__((used)) static char *FUNC4(OptionsContext *o, AVFormatContext *oc,
                             OutputStream *ost)
{
    AVStream *st = ost->st;

    if (ost->filters_script && ost->filters) {
        FUNC0(NULL, AV_LOG_ERROR, "Both -filter and -filter_script set for "
               "output stream #%d:%d.\n", nb_output_files, st->index);
        FUNC2(1);
    }

    if (ost->filters_script)
        return FUNC3(ost->filters_script);
    else if (ost->filters)
        return FUNC1(ost->filters);

    return FUNC1(st->codecpar->codec_type == AVMEDIA_TYPE_VIDEO ?
                     "null" : "anull");
}