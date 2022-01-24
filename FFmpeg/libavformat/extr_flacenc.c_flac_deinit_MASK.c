#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct AVFormatContext {TYPE_1__* priv_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  streaminfo; int /*<<< orphan*/  queue_end; int /*<<< orphan*/  queue; } ;
typedef  TYPE_1__ FlacMuxerContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct AVFormatContext *s)
{
    FlacMuxerContext *c = s->priv_data;

    FUNC1(&c->queue, &c->queue_end);
    FUNC0(&c->streaminfo);
}