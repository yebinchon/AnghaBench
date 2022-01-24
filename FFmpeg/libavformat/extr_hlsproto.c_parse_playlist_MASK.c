#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  member_0; } ;
struct variant_info {char const* bandwidth; TYPE_1__ member_0; } ;
struct variant {int duration; int bandwidth; int /*<<< orphan*/  url; } ;
struct segment {int duration; int bandwidth; int /*<<< orphan*/  url; } ;
typedef  int /*<<< orphan*/  line ;
typedef  int int64_t ;
typedef  int /*<<< orphan*/  ff_parse_key_val_cb ;
struct TYPE_7__ {int /*<<< orphan*/  protocol_blacklist; int /*<<< orphan*/  protocol_whitelist; int /*<<< orphan*/  interrupt_callback; TYPE_3__* priv_data; } ;
typedef  TYPE_2__ URLContext ;
struct TYPE_8__ {int finished; int target_duration; int start_seq_no; int /*<<< orphan*/  last_load_time; int /*<<< orphan*/  n_variants; int /*<<< orphan*/  variants; int /*<<< orphan*/  n_segments; int /*<<< orphan*/  segments; } ;
typedef  TYPE_3__ HLSContext ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVIO_FLAG_READ ; 
 int AV_TIME_BASE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (char const*) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct variant* FUNC4 (int) ; 
 scalar_t__ FUNC5 (char*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct variant*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,char const*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char const*,int /*<<< orphan*/ ,struct variant_info*) ; 
 int FUNC12 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 scalar_t__ handle_variant_args ; 
 scalar_t__ FUNC14 (char*,char*) ; 

__attribute__((used)) static int FUNC15(URLContext *h, const char *url)
{
    HLSContext *s = h->priv_data;
    AVIOContext *in;
    int ret = 0, is_segment = 0, is_variant = 0, bandwidth = 0;
    int64_t duration = 0;
    char line[1024];
    const char *ptr;

    if ((ret = FUNC12(&in, url, AVIO_FLAG_READ,
                                   &h->interrupt_callback, NULL,
                                   h->protocol_whitelist, h->protocol_blacklist)) < 0)
        return ret;

    FUNC9(in, line, sizeof(line));
    if (FUNC14(line, "#EXTM3U")) {
        ret = AVERROR_INVALIDDATA;
        goto fail;
    }

    FUNC13(s);
    s->finished = 0;
    while (!FUNC7(in)) {
        FUNC9(in, line, sizeof(line));
        if (FUNC5(line, "#EXT-X-STREAM-INF:", &ptr)) {
            struct variant_info info = {0};
            is_variant = 1;
            FUNC11(ptr, (ff_parse_key_val_cb) handle_variant_args,
                               &info);
            bandwidth = FUNC2(info.bandwidth);
        } else if (FUNC5(line, "#EXT-X-TARGETDURATION:", &ptr)) {
            s->target_duration = FUNC2(ptr) * AV_TIME_BASE;
        } else if (FUNC5(line, "#EXT-X-MEDIA-SEQUENCE:", &ptr)) {
            s->start_seq_no = FUNC2(ptr);
        } else if (FUNC5(line, "#EXT-X-ENDLIST", &ptr)) {
            s->finished = 1;
        } else if (FUNC5(line, "#EXTINF:", &ptr)) {
            is_segment = 1;
            duration = FUNC1(ptr) * AV_TIME_BASE;
        } else if (FUNC5(line, "#", NULL)) {
            continue;
        } else if (line[0]) {
            if (is_segment) {
                struct segment *seg = FUNC4(sizeof(struct segment));
                if (!seg) {
                    ret = FUNC0(ENOMEM);
                    goto fail;
                }
                seg->duration = duration;
                FUNC10(seg->url, sizeof(seg->url), url, line);
                FUNC8(&s->segments, &s->n_segments, seg);
                is_segment = 0;
            } else if (is_variant) {
                struct variant *var = FUNC4(sizeof(struct variant));
                if (!var) {
                    ret = FUNC0(ENOMEM);
                    goto fail;
                }
                var->bandwidth = bandwidth;
                FUNC10(var->url, sizeof(var->url), url, line);
                FUNC8(&s->variants, &s->n_variants, var);
                is_variant = 0;
            }
        }
    }
    s->last_load_time = FUNC3();

fail:
    FUNC6(in);
    return ret;
}