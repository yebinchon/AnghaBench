#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ data; } ;
struct TYPE_9__ {scalar_t__ data; } ;
struct TYPE_8__ {int sps_id; } ;
struct TYPE_7__ {TYPE_5__** sps_list; int /*<<< orphan*/  const* sps; TYPE_6__** pps_list; } ;
typedef  int /*<<< orphan*/  const HEVCSPS ;
typedef  TYPE_1__ HEVCParamSets ;
typedef  TYPE_2__ HEVCPPS ;

/* Variables and functions */
 int FUNC0 (TYPE_6__**) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC4(HEVCParamSets *s, int id)
{
    int i;
    if (s->sps_list[id]) {
        if (s->sps == (const HEVCSPS*)s->sps_list[id]->data)
            s->sps = NULL;

        /* drop all PPS that depend on this SPS */
        for (i = 0; i < FUNC0(s->pps_list); i++)
            if (s->pps_list[i] && ((HEVCPPS*)s->pps_list[i]->data)->sps_id == id)
                FUNC3(s, i);

        FUNC1(!(s->sps_list[id] && s->sps == (HEVCSPS*)s->sps_list[id]->data));
    }
    FUNC2(&s->sps_list[id]);
}