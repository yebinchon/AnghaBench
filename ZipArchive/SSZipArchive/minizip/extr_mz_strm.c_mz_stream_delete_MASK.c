#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* vtbl; } ;
typedef  TYPE_2__ mz_stream ;
struct TYPE_3__ {int /*<<< orphan*/  (* destroy ) (void**) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void**) ; 

void FUNC1(void **stream)
{
    mz_stream *strm = NULL;
    if (stream == NULL)
        return;
    strm = (mz_stream *)*stream;
    if (strm != NULL && strm->vtbl != NULL && strm->vtbl->destroy != NULL)
        strm->vtbl->destroy(stream);
    *stream = NULL;
}