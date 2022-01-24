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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint16_t ;
struct TYPE_7__ {int /*<<< orphan*/  offset; TYPE_1__* asf_sd; } ;
struct TYPE_6__ {int /*<<< orphan*/ * pb; TYPE_3__* priv_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  langs; } ;
typedef  int /*<<< orphan*/  GUIDParseTable ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;
typedef  TYPE_3__ ASFContext ;

/* Variables and functions */
 int ASF_MAX_STREAMS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *s, const GUIDParseTable *g)
{
    ASFContext *asf   = s->priv_data;
    AVIOContext *pb   = s->pb;
    int i, ret;
    uint64_t size     = FUNC3(pb);
    uint16_t nb_langs = FUNC2(pb);

    if (nb_langs < ASF_MAX_STREAMS) {
        for (i = 0; i < nb_langs; i++) {
            size_t len;
            len = FUNC1(pb);
            if (!len)
                len = 6;
            if ((ret = FUNC4(pb, len, asf->asf_sd[i].langs,
                                      sizeof(asf->asf_sd[i].langs))) < 0) {
                return ret;
            }
        }
    }

    FUNC0(pb, asf->offset, size);
    return 0;
}