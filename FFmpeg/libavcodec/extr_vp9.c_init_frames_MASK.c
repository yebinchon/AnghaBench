#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_3__* refs; TYPE_2__* frames; } ;
struct TYPE_16__ {TYPE_5__* next_refs; TYPE_4__ s; } ;
typedef  TYPE_6__ VP9Context ;
struct TYPE_17__ {TYPE_6__* priv_data; } ;
struct TYPE_15__ {void* f; } ;
struct TYPE_13__ {void* f; } ;
struct TYPE_11__ {void* f; } ;
struct TYPE_12__ {TYPE_1__ tf; } ;
typedef  TYPE_7__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*) ; 

__attribute__((used)) static int FUNC4(AVCodecContext *avctx)
{
    VP9Context *s = avctx->priv_data;
    int i;

    for (i = 0; i < 3; i++) {
        s->s.frames[i].tf.f = FUNC1();
        if (!s->s.frames[i].tf.f) {
            FUNC3(avctx);
            FUNC2(avctx, AV_LOG_ERROR, "Failed to allocate frame buffer %d\n", i);
            return FUNC0(ENOMEM);
        }
    }
    for (i = 0; i < 8; i++) {
        s->s.refs[i].f = FUNC1();
        s->next_refs[i].f = FUNC1();
        if (!s->s.refs[i].f || !s->next_refs[i].f) {
            FUNC3(avctx);
            FUNC2(avctx, AV_LOG_ERROR, "Failed to allocate frame buffer %d\n", i);
            return FUNC0(ENOMEM);
        }
    }

    return 0;
}