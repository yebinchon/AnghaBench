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
typedef  void uint8_t ;
struct TYPE_3__ {int offset; } ;
typedef  TYPE_1__ AVOption ;
typedef  int /*<<< orphan*/  AVClass ;

/* Variables and functions */
 int /*<<< orphan*/  AV_OPT_SEARCH_FAKE_OBJ ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/  const**,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void *FUNC1(const AVClass *class, void *obj, const char *name)
{
    const AVOption *opt= FUNC0(&class, name, NULL, 0, AV_OPT_SEARCH_FAKE_OBJ, NULL);
    if(!opt)
        return NULL;
    return (uint8_t*)obj + opt->offset;
}