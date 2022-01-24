#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  mms; } ;
typedef  TYPE_1__ MMSTContext ;

/* Variables and functions */
 int /*<<< orphan*/  CS_PKT_STREAM_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(MMSTContext *mmst)
{
    FUNC2(mmst, CS_PKT_STREAM_CLOSE);
    FUNC0(&mmst->mms, 1, 1);

    return FUNC1(mmst);
}