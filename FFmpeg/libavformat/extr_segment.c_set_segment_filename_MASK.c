#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_9__ {int /*<<< orphan*/  url; TYPE_2__* priv_data; } ;
struct TYPE_7__ {int /*<<< orphan*/  filename; } ;
struct TYPE_8__ {int segment_idx_wrap; int segment_idx; char* entry_prefix; TYPE_1__ cur_entry; scalar_t__ use_strftime; TYPE_3__* avf; } ;
typedef  TYPE_2__ SegmentContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*) ; 
 struct tm* FUNC7 (int /*<<< orphan*/ *,struct tm*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,size_t,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int /*<<< orphan*/ ,struct tm*) ; 
 size_t FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(AVFormatContext *s)
{
    SegmentContext *seg = s->priv_data;
    AVFormatContext *oc = seg->avf;
    size_t size;
    int ret;
    char buf[1024];
    char *new_name;

    if (seg->segment_idx_wrap)
        seg->segment_idx %= seg->segment_idx_wrap;
    if (seg->use_strftime) {
        time_t now0;
        struct tm *tm, tmpbuf;
        FUNC11(&now0);
        tm = FUNC7(&now0, &tmpbuf);
        if (!FUNC9(buf, sizeof(buf), s->url, tm)) {
            FUNC3(oc, AV_LOG_ERROR, "Could not get segment filename with strftime\n");
            return FUNC0(EINVAL);
        }
    } else if (FUNC2(buf, sizeof(buf),
                                     s->url, seg->segment_idx) < 0) {
        FUNC3(oc, AV_LOG_ERROR, "Invalid segment filename template '%s'\n", s->url);
        return FUNC0(EINVAL);
    }
    new_name = FUNC5(buf);
    if (!new_name)
        return FUNC0(ENOMEM);
    FUNC6(oc, new_name);

    /* copy modified name in list entry */
    size = FUNC10(FUNC1(oc->url)) + 1;
    if (seg->entry_prefix)
        size += FUNC10(seg->entry_prefix);

    if ((ret = FUNC4(&seg->cur_entry.filename, size)) < 0)
        return ret;
    FUNC8(seg->cur_entry.filename, size, "%s%s",
             seg->entry_prefix ? seg->entry_prefix : "",
             FUNC1(oc->url));

    return 0;
}