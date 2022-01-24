#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_6__ {int lastErr; } ;
typedef  TYPE_2__ TLSContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,...) ; 
#define  errSSLWouldBlock 130 
#define  errSSLXCertChainInvalid 129 
#define  ioErr 128 

__attribute__((used)) static int FUNC2(URLContext *h, int ret)
{
    TLSContext *c = h->priv_data;
    switch (ret) {
    case errSSLWouldBlock:
        return FUNC0(EAGAIN);
    case errSSLXCertChainInvalid:
        FUNC1(h, AV_LOG_ERROR, "Invalid certificate chain\n");
        return FUNC0(EIO);
    case ioErr:
        return c->lastErr;
    default:
        FUNC1(h, AV_LOG_ERROR, "IO Error: %i\n", ret);
        return FUNC0(EIO);
    }
    return FUNC0(EIO);
}