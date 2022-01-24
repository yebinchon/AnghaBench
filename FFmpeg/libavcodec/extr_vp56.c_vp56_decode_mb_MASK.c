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
typedef  int /*<<< orphan*/  VP56mb ;
struct TYPE_8__ {int (* parse_coeff ) (TYPE_2__*) ;TYPE_1__** frames; } ;
typedef  TYPE_2__ VP56Context ;
struct TYPE_7__ {scalar_t__ key_frame; } ;

/* Variables and functions */
 size_t VP56_FRAME_CURRENT ; 
 int /*<<< orphan*/  VP56_MB_INTRA ; 
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(VP56Context *s, int row, int col, int is_alpha)
{
    VP56mb mb_type;
    int ret;

    if (s->frames[VP56_FRAME_CURRENT]->key_frame)
        mb_type = VP56_MB_INTRA;
    else
        mb_type = FUNC1(s, row, col);

    ret = s->parse_coeff(s);
    if (ret < 0)
        return ret;

    FUNC2(s, row, col, is_alpha, mb_type);

    return 0;
}