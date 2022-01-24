#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {scalar_t__ data; } ;
struct TYPE_4__ {TYPE_2__* decoder_ref; int /*<<< orphan*/  frame; } ;
typedef  TYPE_1__ RKMPPFrameContext ;
typedef  int /*<<< orphan*/  AVDRMFrameDescriptor ;
typedef  TYPE_2__ AVBufferRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void *opaque, uint8_t *data)
{
    AVDRMFrameDescriptor *desc = (AVDRMFrameDescriptor *)data;
    AVBufferRef *framecontextref = (AVBufferRef *)opaque;
    RKMPPFrameContext *framecontext = (RKMPPFrameContext *)framecontextref->data;

    FUNC2(&framecontext->frame);
    FUNC0(&framecontext->decoder_ref);
    FUNC0(&framecontextref);

    FUNC1(desc);
}