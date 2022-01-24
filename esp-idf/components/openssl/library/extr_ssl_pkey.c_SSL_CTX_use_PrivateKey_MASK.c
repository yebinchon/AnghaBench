#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* cert; } ;
struct TYPE_8__ {TYPE_2__* pkey; } ;
typedef  TYPE_2__ SSL_CTX ;
typedef  TYPE_2__ EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

int FUNC2(SSL_CTX *ctx, EVP_PKEY *pkey)
{
    FUNC1(ctx);
    FUNC1(pkey);

    if (ctx->cert->pkey == pkey)
        return 1;

    if (ctx->cert->pkey)
        FUNC0(ctx->cert->pkey);

    ctx->cert->pkey = pkey;

    return 1;
}