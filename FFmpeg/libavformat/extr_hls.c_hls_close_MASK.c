#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* priv_data; } ;
struct TYPE_7__ {int /*<<< orphan*/  playlist_pb; int /*<<< orphan*/  ctx; int /*<<< orphan*/  avio_opts; } ;
typedef  TYPE_1__ HLSContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *s)
{
    HLSContext *c = s->priv_data;

    FUNC2(c);
    FUNC4(c);
    FUNC3(c);

    FUNC0(&c->avio_opts);
    FUNC1(c->ctx, &c->playlist_pb);

    return 0;
}