#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * extradata; } ;
typedef  TYPE_1__ AVCodecParameters ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int FUNC4(AVCodecParameters *par, const char *value)
{
    /* decode the hexa encoded parameter */
    int len = FUNC3(NULL, value);
    FUNC1(&par->extradata);
    if (FUNC2(par, len))
        return FUNC0(ENOMEM);
    FUNC3(par->extradata, value);
    return 0;
}