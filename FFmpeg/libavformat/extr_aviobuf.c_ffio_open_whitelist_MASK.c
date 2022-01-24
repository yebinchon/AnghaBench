#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  URLContext ;
typedef  int /*<<< orphan*/  AVIOInterruptCB ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ **,char const*,int,int /*<<< orphan*/  const*,int /*<<< orphan*/ **,char const*,char const*,int /*<<< orphan*/ *) ; 

int FUNC3(AVIOContext **s, const char *filename, int flags,
                         const AVIOInterruptCB *int_cb, AVDictionary **options,
                         const char *whitelist, const char *blacklist
                        )
{
    URLContext *h;
    int err;

    err = FUNC2(&h, filename, flags, int_cb, options, whitelist, blacklist, NULL);
    if (err < 0)
        return err;
    err = FUNC0(s, h);
    if (err < 0) {
        FUNC1(h);
        return err;
    }
    return 0;
}