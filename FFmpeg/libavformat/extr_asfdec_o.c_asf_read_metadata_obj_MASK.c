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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint16_t ;
struct TYPE_9__ {int /*<<< orphan*/  offset; TYPE_1__* asf_sd; } ;
struct TYPE_8__ {int /*<<< orphan*/ * pb; TYPE_3__* priv_data; } ;
struct TYPE_7__ {int /*<<< orphan*/  asf_met; } ;
typedef  int /*<<< orphan*/  GUIDParseTable ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;
typedef  TYPE_3__ ASFContext ;

/* Variables and functions */
 int ASF_MAX_STREAMS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (TYPE_2__*,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC12(AVFormatContext *s, const GUIDParseTable *g)
{
    ASFContext *asf   = s->priv_data;
    AVIOContext *pb   = s->pb;
    uint64_t size     = FUNC8(pb);
    uint16_t nb_recs  = FUNC6(pb); // number of records in the Description Records list
    int i, ret;

    for (i = 0; i < nb_recs; i++) {
        uint16_t name_len, buflen, type, val_len, st_num;
        uint8_t *name = NULL;

        FUNC9(pb, 2); // skip reserved field
        st_num   = FUNC6(pb);
        name_len = FUNC6(pb);
        buflen   = 2 * name_len + 1;
        if (!name_len)
            break;
        type     = FUNC6(pb);
        val_len  = FUNC7(pb);
        name     = FUNC4(buflen);
        if (!name)
            return FUNC0(ENOMEM);
        FUNC5(pb, name_len, name,
                         buflen);
        if (!FUNC11(name, "AspectRatioX") || !FUNC11(name, "AspectRatioY")) {
            ret = FUNC2(s, st_num, name, type);
            if (ret < 0) {
                FUNC3(&name);
                break;
            }
        } else {
            if (st_num < ASF_MAX_STREAMS) {
                if ((ret = FUNC10(s, name, name_len, val_len, type,
                                            &asf->asf_sd[st_num].asf_met)) < 0) {
                    FUNC3(&name);
                    break;
                }
            }
        }
        FUNC3(&name);
    }

    FUNC1(pb, asf->offset, size);
    return 0;
}