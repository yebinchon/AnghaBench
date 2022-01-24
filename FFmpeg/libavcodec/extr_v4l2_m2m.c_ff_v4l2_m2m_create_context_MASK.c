#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_11__ {TYPE_4__* context; scalar_t__ context_ref; int /*<<< orphan*/  num_output_buffers; int /*<<< orphan*/  num_capture_buffers; } ;
typedef  TYPE_3__ V4L2m2mPriv ;
struct TYPE_10__ {int /*<<< orphan*/  num_buffers; } ;
struct TYPE_9__ {int /*<<< orphan*/  num_buffers; } ;
struct TYPE_12__ {int fd; scalar_t__ self_ref; TYPE_2__ output; TYPE_1__ capture; TYPE_3__* priv; } ;
typedef  TYPE_4__ V4L2m2mContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__**) ; 
 TYPE_4__* FUNC3 (int) ; 
 int /*<<< orphan*/  v4l2_m2m_destroy_context ; 

int FUNC4(V4L2m2mPriv *priv, V4L2m2mContext **s)
{
    *s = FUNC3(sizeof(V4L2m2mContext));
    if (!*s)
        return FUNC0(ENOMEM);

    priv->context_ref = FUNC1((uint8_t *) *s, sizeof(V4L2m2mContext),
                                         &v4l2_m2m_destroy_context, NULL, 0);
    if (!priv->context_ref) {
        FUNC2(s);
        return FUNC0(ENOMEM);
    }

    /* assign the context */
    priv->context = *s;
    (*s)->priv = priv;

    /* populate it */
    priv->context->capture.num_buffers = priv->num_capture_buffers;
    priv->context->output.num_buffers  = priv->num_output_buffers;
    priv->context->self_ref = priv->context_ref;
    priv->context->fd = -1;

    return 0;
}