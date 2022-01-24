#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  list; TYPE_1__* context; } ;
typedef  TYPE_3__ hb_work_private_t ;
struct TYPE_16__ {TYPE_3__* private_data; } ;
typedef  TYPE_4__ hb_work_object_t ;
struct TYPE_14__ {int flags; } ;
struct TYPE_17__ {TYPE_2__ s; } ;
typedef  TYPE_5__ hb_buffer_t ;
typedef  int /*<<< orphan*/  hb_buffer_list_t ;
struct TYPE_13__ {int /*<<< orphan*/ * codec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int HB_BUF_FLAG_EOF ; 
 int HB_WORK_DONE ; 
 int HB_WORK_OK ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_5__*) ; 

__attribute__((used)) static int FUNC7( hb_work_object_t * w, hb_buffer_t ** buf_in,
                    hb_buffer_t ** buf_out )
{
    hb_work_private_t * pv = w->private_data;
    hb_buffer_t       * in = *buf_in;
    hb_buffer_list_t    list;

    if (pv->context == NULL || pv->context->codec == NULL)
    {
        FUNC5("encavcodecaudio: codec context is uninitialized");
        return HB_WORK_DONE;
    }

    FUNC4(&list);
    if (in->s.flags & HB_BUF_FLAG_EOF)
    {
        /* EOF on input - send it downstream & say we're done */
        FUNC1(w, &list);
        FUNC3(&list, FUNC2());
        *buf_out = FUNC4(&list);
        return HB_WORK_DONE;
    }

    FUNC6( pv->list, in );
    *buf_in = NULL;

    FUNC0(w, &list);
    *buf_out = FUNC4(&list);

    return HB_WORK_OK;
}