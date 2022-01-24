#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_10__ {int /*<<< orphan*/ ** data; int /*<<< orphan*/  format; int /*<<< orphan*/ * buf; } ;
struct TYPE_9__ {int /*<<< orphan*/ * buffer; TYPE_1__* pool; } ;
struct TYPE_8__ {int /*<<< orphan*/  refcount; } ;
typedef  int /*<<< orphan*/  MMAL_BUFFER_HEADER_T ;
typedef  TYPE_1__ FFPoolRef ;
typedef  TYPE_2__ FFBufferRef ;
typedef  TYPE_3__ AVFrame ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_BUFFER_FLAG_READONLY ; 
 int /*<<< orphan*/  AV_PIX_FMT_MMAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 (int) ; 
 int /*<<< orphan*/  ffmmal_release_frame ; 
 int /*<<< orphan*/  memory_order_relaxed ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(AVFrame *frame, FFPoolRef *pool,
                          MMAL_BUFFER_HEADER_T *buffer)
{
    FFBufferRef *ref = FUNC4(sizeof(*ref));
    if (!ref)
        return FUNC0(ENOMEM);

    ref->pool = pool;
    ref->buffer = buffer;

    frame->buf[0] = FUNC2((void *)ref, sizeof(*ref),
                                     ffmmal_release_frame, NULL,
                                     AV_BUFFER_FLAG_READONLY);
    if (!frame->buf[0]) {
        FUNC3(ref);
        return FUNC0(ENOMEM);
    }

    FUNC1(&ref->pool->refcount, 1, memory_order_relaxed);
    FUNC5(buffer);

    frame->format = AV_PIX_FMT_MMAL;
    frame->data[3] = (uint8_t *)ref->buffer;
    return 0;
}