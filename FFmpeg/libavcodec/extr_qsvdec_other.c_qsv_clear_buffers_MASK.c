#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pkt ;
struct TYPE_3__ {int /*<<< orphan*/  input_ref; int /*<<< orphan*/  packet_fifo; } ;
typedef  TYPE_1__ QSVOtherContext ;
typedef  int /*<<< orphan*/  AVPacket ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(QSVOtherContext *s)
{
    AVPacket pkt;
    while (FUNC1(s->packet_fifo) >= sizeof(pkt)) {
        FUNC0(s->packet_fifo, &pkt, sizeof(pkt), NULL);
        FUNC2(&pkt);
    }

    FUNC2(&s->input_ref);
}