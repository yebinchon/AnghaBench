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
struct TYPE_7__ {TYPE_1__ tls_shared; scalar_t__ ca_array; scalar_t__ ssl_context; } ;
typedef  TYPE_3__ TLSContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(URLContext *h)
{
    TLSContext *c = h->priv_data;
    if (c->ssl_context) {
        FUNC1(c->ssl_context);
        FUNC0(c->ssl_context);
    }
    if (c->ca_array)
        FUNC0(c->ca_array);
    if (c->tls_shared.tcp)
        FUNC2(c->tls_shared.tcp);
    return 0;
}