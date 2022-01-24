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
struct tls {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  URLContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EXIT ; 
 int /*<<< orphan*/  EAGAIN ; 
 int TLS_WANT_POLLOUT ; 
 int FUNC1 (int /*<<< orphan*/ *,void const*,size_t) ; 

__attribute__((used)) static ssize_t FUNC2(struct tls *ctx, const void *buf, size_t buflen, void *cb_arg)
{
    URLContext *h = (URLContext*) cb_arg;
    int ret = FUNC1(h, buf, buflen);
    if (ret == FUNC0(EAGAIN))
        return TLS_WANT_POLLOUT;
    else if (ret == AVERROR_EXIT)
        return 0;
    return ret >= 0 ? ret : -1;
}