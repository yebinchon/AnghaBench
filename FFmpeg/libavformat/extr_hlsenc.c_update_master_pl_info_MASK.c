#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char const* url; TYPE_1__* priv_data; } ;
struct TYPE_4__ {char const* master_pl_name; void* master_m3u8_url; } ;
typedef  TYPE_1__ HLSContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 void* FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 

__attribute__((used)) static int FUNC8(AVFormatContext *s)
{
    HLSContext *hls = s->priv_data;
    const char *dir;
    char *fn1= NULL, *fn2 = NULL;
    int ret = 0;

    fn1 = FUNC5(s->url);
    dir = FUNC3(fn1);

    /**
     * if output file's directory has %v, variants are created in sub-directories
     * then master is created at the sub-directories level
     */
    if (dir && FUNC6(FUNC2(dir), "%v")) {
        fn2 = FUNC5(dir);
        dir = FUNC3(fn2);
    }

    if (dir && FUNC7(dir, "."))
        hls->master_m3u8_url = FUNC1(dir, hls->master_pl_name);
    else
        hls->master_m3u8_url = FUNC5(hls->master_pl_name);

    if (!hls->master_m3u8_url) {
        ret = FUNC0(ENOMEM);
        goto fail;
    }

fail:
    FUNC4(&fn1);
    FUNC4(&fn2);

    return ret;
}