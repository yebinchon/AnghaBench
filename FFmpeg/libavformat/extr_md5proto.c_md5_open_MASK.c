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
struct MD5Context {int /*<<< orphan*/  md5; } ;
struct TYPE_3__ {struct MD5Context* priv_data; } ;
typedef  TYPE_1__ URLContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVIO_FLAG_WRITE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(URLContext *h, const char *filename, int flags)
{
    struct MD5Context *c = h->priv_data;

    if (!(flags & AVIO_FLAG_WRITE))
        return FUNC0(EINVAL);

    c->md5 = FUNC1();
    if (!c->md5)
        return FUNC0(ENOMEM);
    FUNC2(c->md5);

    return 0;
}