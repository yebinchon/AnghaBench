#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_17__ {int /*<<< orphan*/  metadata; } ;
struct TYPE_16__ {int /*<<< orphan*/  stream; scalar_t__ skip_changes; } ;
struct TYPE_14__ {TYPE_5__* opaque; } ;
struct TYPE_12__ {TYPE_3__ section_filter; } ;
struct TYPE_15__ {TYPE_1__ u; } ;
struct TYPE_13__ {scalar_t__ tid; } ;
typedef  TYPE_2__ SectionHeader ;
typedef  TYPE_3__ MpegTSSectionFilter ;
typedef  TYPE_4__ MpegTSFilter ;
typedef  TYPE_5__ MpegTSContext ;
typedef  TYPE_6__ AVProgram ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_TRACE ; 
 scalar_t__ SDT_TID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_6__* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/  const**,int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/  const**,int /*<<< orphan*/  const*) ; 
 char* FUNC6 (int /*<<< orphan*/  const**,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC8 (TYPE_2__*,int /*<<< orphan*/  const**,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC9 (TYPE_2__*,TYPE_3__*) ; 

__attribute__((used)) static void FUNC10(MpegTSFilter *filter, const uint8_t *section, int section_len)
{
    MpegTSContext *ts = filter->u.section_filter.opaque;
    MpegTSSectionFilter *tssf = &filter->u.section_filter;
    SectionHeader h1, *h = &h1;
    const uint8_t *p, *p_end, *desc_list_end, *desc_end;
    int onid, val, sid, desc_list_len, desc_tag, desc_len, service_type;
    char *name, *provider_name;

    FUNC2(ts->stream, AV_LOG_TRACE, "SDT:\n");
    FUNC7(ts->stream, section, section_len);

    p_end = section + section_len - 4;
    p     = section;
    if (FUNC8(h, &p, p_end) < 0)
        return;
    if (h->tid != SDT_TID)
        return;
    if (ts->skip_changes)
        return;
    if (FUNC9(h, tssf))
        return;

    onid = FUNC4(&p, p_end);
    if (onid < 0)
        return;
    val = FUNC5(&p, p_end);
    if (val < 0)
        return;
    for (;;) {
        sid = FUNC4(&p, p_end);
        if (sid < 0)
            break;
        val = FUNC5(&p, p_end);
        if (val < 0)
            break;
        desc_list_len = FUNC4(&p, p_end);
        if (desc_list_len < 0)
            break;
        desc_list_len &= 0xfff;
        desc_list_end  = p + desc_list_len;
        if (desc_list_end > p_end)
            break;
        for (;;) {
            desc_tag = FUNC5(&p, desc_list_end);
            if (desc_tag < 0)
                break;
            desc_len = FUNC5(&p, desc_list_end);
            desc_end = p + desc_len;
            if (desc_len < 0 || desc_end > desc_list_end)
                break;

            FUNC2(ts->stream, AV_LOG_TRACE, "tag: 0x%02x len=%d\n",
                    desc_tag, desc_len);

            switch (desc_tag) {
            case 0x48:
                service_type = FUNC5(&p, p_end);
                if (service_type < 0)
                    break;
                provider_name = FUNC6(&p, p_end);
                if (!provider_name)
                    break;
                name = FUNC6(&p, p_end);
                if (name) {
                    AVProgram *program = FUNC3(ts->stream, sid);
                    if (program) {
                        FUNC0(&program->metadata, "service_name", name, 0);
                        FUNC0(&program->metadata, "service_provider",
                                    provider_name, 0);
                    }
                }
                FUNC1(name);
                FUNC1(provider_name);
                break;
            default:
                break;
            }
            p = desc_end;
        }
        p = desc_list_end;
    }
}