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
struct TYPE_6__ {scalar_t__ pb; TYPE_1__* priv_data; } ;
struct TYPE_5__ {int flags; int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ RTPMuxContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FF_RTP_FLAG_SEND_BYE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(AVFormatContext *s1)
{
    RTPMuxContext *s = s1->priv_data;

    /* If the caller closes and recreates ->pb, this might actually
     * be NULL here even if it was successfully allocated at the start. */
    if (s1->pb && (s->flags & FF_RTP_FLAG_SEND_BYE))
        FUNC2(s1, FUNC1(), 1);
    FUNC0(&s->buf);

    return 0;
}