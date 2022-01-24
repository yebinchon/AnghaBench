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
struct TYPE_8__ {int mode; TYPE_3__* mask; TYPE_3__* mask_filtered; } ;
typedef  TYPE_2__ hb_filter_private_t ;
struct TYPE_9__ {TYPE_1__* plane; } ;
typedef  TYPE_3__ hb_buffer_t ;
struct TYPE_7__ {int height; int /*<<< orphan*/  stride; int /*<<< orphan*/  width; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int MODE_COMPOSITE ; 
 int MODE_FILTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(hb_filter_private_t * pv, hb_buffer_t * b)
{
    /* draw_boxes */
    FUNC1( pv );

    int pp, yy;
    hb_buffer_t * m;

    if (pv->mode & MODE_FILTER)
    {
        m = pv->mask_filtered;
    }
    else
    {
        m = pv->mask;
    }
    for (pp = 0; pp < 3; pp++)
    {
        uint8_t * dstp = b->plane[pp].data;
        uint8_t * mskp = m->plane[pp].data;

        for (yy = 0; yy < m->plane[pp].height; yy++)
        {
            if (!(pv->mode & MODE_COMPOSITE) && pp == 0)
            {
                FUNC2(dstp, mskp, m->plane[pp].width);
            }
            else if (!(pv->mode & MODE_COMPOSITE))
            {
                FUNC3(dstp, 128, m->plane[pp].width);
            }
            if (pp == 0)
            {
                FUNC0(dstp, mskp, m->plane[pp].width);
            }

            dstp += b->plane[pp].stride;
            mskp += m->plane[pp].stride;
        }
    }
}