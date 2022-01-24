#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  avpkt; } ;
struct TYPE_11__ {TYPE_1__ pkt; } ;
struct TYPE_10__ {int nb_streams; TYPE_5__** asf_st; TYPE_2__* asf_sd; } ;
struct TYPE_9__ {TYPE_4__* priv_data; } ;
struct TYPE_8__ {int /*<<< orphan*/  asf_met; } ;
typedef  TYPE_3__ AVFormatContext ;
typedef  TYPE_4__ ASFContext ;

/* Variables and functions */
 int ASF_MAX_STREAMS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(AVFormatContext *s)
{
    ASFContext *asf = s->priv_data;
    int i;

    for (i = 0; i < ASF_MAX_STREAMS; i++) {
        FUNC0(&asf->asf_sd[i].asf_met);
        if (i < asf->nb_streams) {
            FUNC2(&asf->asf_st[i]->pkt.avpkt);
            FUNC1(&asf->asf_st[i]);
        }
    }

    asf->nb_streams = 0;
    return 0;
}