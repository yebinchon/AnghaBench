#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_13__ {void* style_end; } ;
struct TYPE_12__ {void* fontsize; void* style_flag; void* style_fontID; void* style_start; void* style_end; } ;
struct TYPE_11__ {scalar_t__ size; } ;
struct TYPE_10__ {scalar_t__ tracksize; scalar_t__ size_var; int style_entries; int count_s; TYPE_8__** s; TYPE_6__* s_temp; int /*<<< orphan*/  box_flags; } ;
typedef  TYPE_1__ MovTextContext ;
typedef  TYPE_2__ AVPacket ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/  const*) ; 
 void* FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  STYL_BOX ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__***,int*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__**) ; 
 TYPE_6__* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(const uint8_t *tsmb, MovTextContext *m, AVPacket *avpkt)
{
    int i;
    int style_entries = FUNC1(tsmb);
    tsmb += 2;
    // A single style record is of length 12 bytes.
    if (m->tracksize + m->size_var + 2 + style_entries * 12 > avpkt->size)
        return -1;

    m->style_entries = style_entries;

    m->box_flags |= STYL_BOX;
    for(i = 0; i < m->style_entries; i++) {
        m->s_temp = FUNC5(sizeof(*m->s_temp));
        if (!m->s_temp) {
            FUNC6(m);
            return FUNC0(ENOMEM);
        }
        m->s_temp->style_start = FUNC1(tsmb);
        tsmb += 2;
        m->s_temp->style_end = FUNC1(tsmb);

        if (   m->s_temp->style_end < m->s_temp->style_start
            || (m->count_s && m->s_temp->style_start < m->s[m->count_s - 1]->style_end)) {
            FUNC4(&m->s_temp);
            FUNC6(m);
            return FUNC0(ENOMEM);
        }

        tsmb += 2;
        m->s_temp->style_fontID = FUNC1(tsmb);
        tsmb += 2;
        m->s_temp->style_flag = FUNC2(tsmb);
        tsmb++;
        m->s_temp->fontsize = FUNC2(tsmb);
        FUNC3(&m->s, &m->count_s, m->s_temp);
        if(!m->s) {
            FUNC6(m);
            return FUNC0(ENOMEM);
        }
        tsmb++;
        // text-color-rgba
        tsmb += 4;
    }
    return 0;
}