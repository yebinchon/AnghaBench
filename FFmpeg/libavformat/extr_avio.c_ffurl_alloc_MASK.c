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
typedef  int /*<<< orphan*/  URLProtocol ;
typedef  int /*<<< orphan*/  URLContext ;
typedef  int /*<<< orphan*/  AVIOInterruptCB ;

/* Variables and functions */
 int AVERROR_PROTOCOL_NOT_FOUND ; 
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/  const*,char const*,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 

int FUNC2(URLContext **puc, const char *filename, int flags,
                const AVIOInterruptCB *int_cb)
{
    const URLProtocol *p = NULL;

    p = FUNC1(filename);
    if (p)
       return FUNC0(puc, p, filename, flags, int_cb);

    *puc = NULL;
    return AVERROR_PROTOCOL_NOT_FOUND;
}