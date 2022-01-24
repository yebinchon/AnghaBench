#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ int64_t ;
typedef  int int32_t ;
struct TYPE_11__ {int /*<<< orphan*/  time_base; int /*<<< orphan*/  start; int /*<<< orphan*/  metadata; } ;
struct TYPE_10__ {int /*<<< orphan*/  value; } ;
struct TYPE_9__ {int nb_chapters; TYPE_4__** chapters; int /*<<< orphan*/ * pb; int /*<<< orphan*/ * priv_data; } ;
struct TYPE_8__ {int member_0; int member_1; } ;
typedef  TYPE_1__ AVRational ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;
typedef  TYPE_3__ AVDictionaryEntry ;
typedef  TYPE_4__ AVChapter ;
typedef  int /*<<< orphan*/  ASFContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int PREROLL_TIME ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  ff_asf_marker_header ; 
 int /*<<< orphan*/  ff_asf_reserved_4 ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(AVFormatContext *s)
{
    ASFContext *asf = s->priv_data;
    AVIOContext *pb = s->pb;
    int i;
    AVRational scale = {1, 10000000};
    int64_t hpos = FUNC14(pb, &ff_asf_marker_header);

    FUNC12(pb, &ff_asf_reserved_4);// ASF spec mandates this reserved value
    FUNC8(pb, s->nb_chapters);     // markers count
    FUNC7(pb, 0);                  // ASF spec mandates 0 for this
    FUNC7(pb, 0);                  // name length 0, no name given

    for (i = 0; i < s->nb_chapters; i++) {
        AVChapter *c = s->chapters[i];
        AVDictionaryEntry *t = FUNC1(c->metadata, "title", NULL, 0);
        int64_t pres_time = FUNC3(c->start, c->time_base, scale);
        uint64_t offset;
        int32_t send_time = FUNC13(asf, pres_time, &offset);
        int len = 0;
        uint8_t *buf;
        AVIOContext *dyn_buf;
        if (t) {
            if (FUNC5(&dyn_buf) < 0)
                return FUNC0(ENOMEM);
            FUNC6(dyn_buf, t->value);
            len = FUNC4(dyn_buf, &buf);
        }
        FUNC9(pb, offset);            // offset of the packet with send_time
        FUNC9(pb, pres_time + PREROLL_TIME * 10000); // presentation time
        FUNC7(pb, 12 + len);          // entry length
        FUNC8(pb, send_time);         // send time
        FUNC8(pb, 0);                 // flags, should be 0
        FUNC8(pb, len / 2);           // marker desc length in WCHARS!
        if (t) {
            FUNC10(pb, buf, len);     // marker desc
            FUNC2(&buf);
        }
    }
    FUNC11(pb, hpos);
    return 0;
}