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
struct TYPE_3__ {int /*<<< orphan*/  size_scaler; int /*<<< orphan*/  pb; int /*<<< orphan*/  prefix_bytes; int /*<<< orphan*/  num_y; int /*<<< orphan*/  num_x; } ;
typedef  TYPE_1__ VC2EncContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(VC2EncContext *s)
{
    FUNC0(&s->pb, s->num_x);
    FUNC0(&s->pb, s->num_y);
    FUNC0(&s->pb, s->prefix_bytes);
    FUNC0(&s->pb, s->size_scaler);
}