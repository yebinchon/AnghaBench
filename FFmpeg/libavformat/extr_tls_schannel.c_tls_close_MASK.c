#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_3__* priv_data; } ;
typedef  TYPE_2__ URLContext ;
struct TYPE_6__ {scalar_t__ tcp; } ;
struct TYPE_8__ {TYPE_1__ tls_shared; scalar_t__ dec_buf_offset; scalar_t__ dec_buf_size; int /*<<< orphan*/  dec_buf; scalar_t__ enc_buf_offset; scalar_t__ enc_buf_size; int /*<<< orphan*/  enc_buf; int /*<<< orphan*/  cred_handle; int /*<<< orphan*/  ctxt_handle; } ;
typedef  TYPE_3__ TLSContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC5(URLContext *h)
{
    TLSContext *c = h->priv_data;

    FUNC4(h);

    FUNC0(&c->ctxt_handle);
    FUNC1(&c->cred_handle);

    FUNC2(&c->enc_buf);
    c->enc_buf_size = c->enc_buf_offset = 0;

    FUNC2(&c->dec_buf);
    c->dec_buf_size = c->dec_buf_offset = 0;

    if (c->tls_shared.tcp)
        FUNC3(c->tls_shared.tcp);
    return 0;
}