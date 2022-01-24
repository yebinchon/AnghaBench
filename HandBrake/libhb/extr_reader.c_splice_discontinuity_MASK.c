#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hb_work_private_t ;
struct TYPE_11__ {scalar_t__ split; int /*<<< orphan*/  id; } ;
struct TYPE_12__ {int size; scalar_t__ data; TYPE_1__ s; } ;
typedef  TYPE_2__ hb_buffer_t ;
typedef  int /*<<< orphan*/  hb_buffer_list_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__**) ; 
 TYPE_2__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,int) ; 

__attribute__((used)) static hb_buffer_t * FUNC10( hb_work_private_t *r, hb_buffer_t *buf )
{
    // Handle buffers that were split across a PCR discontinuity.
    // Rejoin them into a single buffer.
    hb_buffer_list_t * list = FUNC0(r, buf->s.id);
    if (list != NULL)
    {
        FUNC3(list, buf);
        if (buf->s.split)
        {
            return NULL;
        }

        int count = FUNC5(list);
        if (count > 1)
        {
            int size = FUNC8(list);
            hb_buffer_t * b = FUNC2(size);
            buf = FUNC6(list);
            b->s = buf->s;

            int pos = 0;
            while ((buf = FUNC7(list)) != NULL)
            {
                FUNC9(b->data + pos, buf->data, buf->size);
                pos += buf->size;
                FUNC1(&buf);
            }
            buf = b;
        }
        else
        {
            buf = FUNC4(list);
        }
    }
    return buf;
}