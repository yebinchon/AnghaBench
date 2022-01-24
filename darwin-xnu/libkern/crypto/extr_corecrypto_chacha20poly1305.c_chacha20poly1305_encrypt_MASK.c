#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  chacha20poly1305_ctx ;
struct TYPE_2__ {int (* encrypt ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,void const*,void*) ;} ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,void const*,void*) ; 

int	FUNC3(chacha20poly1305_ctx *ctx, size_t nbytes, const void *ptext, void *ctext)
{
    return FUNC0()->encrypt(FUNC1(), ctx, nbytes, ptext, ctext);
}