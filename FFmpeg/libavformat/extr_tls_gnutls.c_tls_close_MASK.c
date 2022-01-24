#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_3__* priv_data; } ;
typedef  TYPE_2__ URLContext ;
struct TYPE_5__ {scalar_t__ tcp; } ;
struct TYPE_7__ {TYPE_1__ tls_shared; scalar_t__ cred; scalar_t__ session; scalar_t__ need_shutdown; } ;
typedef  TYPE_3__ TLSContext ;

/* Variables and functions */
 int /*<<< orphan*/  GNUTLS_SHUT_WR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(URLContext *h)
{
    TLSContext *c = h->priv_data;
    if (c->need_shutdown)
        FUNC2(c->session, GNUTLS_SHUT_WR);
    if (c->session)
        FUNC4(c->session);
    if (c->cred)
        FUNC3(c->cred);
    if (c->tls_shared.tcp)
        FUNC1(c->tls_shared.tcp);
    FUNC0();
    return 0;
}