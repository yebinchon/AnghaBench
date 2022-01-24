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
struct TYPE_8__ {int /*<<< orphan*/ * pb; TYPE_1__* priv_data; } ;
struct TYPE_7__ {int header_count; int /*<<< orphan*/  write_index; int /*<<< orphan*/  sp_count; } ;
typedef  TYPE_1__ NUTContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  INDEX_STARTCODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *s)
{
    NUTContext *nut = s->priv_data;
    AVIOContext *bc = s->pb, *dyn_bc;
    int ret;

    while (nut->header_count < 3)
        FUNC3(s, bc);

    if (!nut->sp_count)
        return 0;

    ret = FUNC1(&dyn_bc);
    if (ret >= 0) {
        FUNC0(nut->write_index); // sp_count should be 0 if no index is going to be written
        FUNC4(nut, dyn_bc);
        FUNC2(nut, bc, dyn_bc, 1, INDEX_STARTCODE);
    }

    return 0;
}