#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* g; } ;
struct TYPE_3__ {int /*<<< orphan*/  codec_opts; } ;
typedef  TYPE_2__ OptionsContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

__attribute__((used)) static int FUNC3(void *optctx, const char *opt, const char *arg)
{
    OptionsContext *o = optctx;

    if(!FUNC2(opt, "ab")){
        FUNC0(&o->g->codec_opts, "b:a", arg, 0);
        return 0;
    } else if(!FUNC2(opt, "b")){
        FUNC1(NULL, AV_LOG_WARNING, "Please use -b:a or -b:v, -b is ambiguous\n");
        FUNC0(&o->g->codec_opts, "b:v", arg, 0);
        return 0;
    }
    FUNC0(&o->g->codec_opts, opt, arg, 0);
    return 0;
}