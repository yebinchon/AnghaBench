#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int nb_units; TYPE_1__* units; } ;
struct TYPE_5__ {int /*<<< orphan*/ * content_ref; void* content; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  CodedBitstreamUnitType ;
typedef  TYPE_1__ CodedBitstreamUnit ;
typedef  TYPE_2__ CodedBitstreamFragment ;
typedef  int /*<<< orphan*/  CodedBitstreamContext ;
typedef  int /*<<< orphan*/  AVBufferRef ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 

int FUNC5(CodedBitstreamContext *ctx,
                               CodedBitstreamFragment *frag,
                               int position,
                               CodedBitstreamUnitType type,
                               void *content,
                               AVBufferRef *content_buf)
{
    CodedBitstreamUnit *unit;
    AVBufferRef *content_ref;
    int err;

    if (position == -1)
        position = frag->nb_units;
    FUNC1(position >= 0 && position <= frag->nb_units);

    if (content_buf) {
        content_ref = FUNC2(content_buf);
        if (!content_ref)
            return FUNC0(ENOMEM);
    } else {
        content_ref = NULL;
    }

    err = FUNC4(ctx, frag, position);
    if (err < 0) {
        FUNC3(&content_ref);
        return err;
    }

    unit = &frag->units[position];
    unit->type        = type;
    unit->content     = content;
    unit->content_ref = content_ref;

    return 0;
}