#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WriterContext ;
struct TYPE_7__ {int /*<<< orphan*/  str; } ;
struct TYPE_6__ {int /*<<< orphan*/  den; int /*<<< orphan*/  num; } ;
typedef  TYPE_1__ AVRational ;
typedef  TYPE_2__ AVBPrint ;

/* Variables and functions */
 int /*<<< orphan*/  AV_BPRINT_SIZE_AUTOMATIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ ,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(WriterContext *wctx,
                                         const char *key, AVRational q, char sep)
{
    AVBPrint buf;
    FUNC0(&buf, 0, AV_BPRINT_SIZE_AUTOMATIC);
    FUNC1(&buf, "%d%c%d", q.num, sep, q.den);
    FUNC2(wctx, key, buf.str, 0);
}