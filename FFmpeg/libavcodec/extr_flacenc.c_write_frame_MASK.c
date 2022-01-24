#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_8__ {int /*<<< orphan*/  pb; } ;
typedef  TYPE_1__ FlacEncodeContext ;
typedef  TYPE_2__ AVPacket ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(FlacEncodeContext *s, AVPacket *avpkt)
{
    FUNC0(&s->pb, avpkt->data, avpkt->size);
    FUNC3(s);
    FUNC4(s);
    FUNC2(s);
    return FUNC1(&s->pb) >> 3;
}