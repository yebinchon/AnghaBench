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
typedef  int uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  p_timer; int /*<<< orphan*/  (* f_set_timer ) (int /*<<< orphan*/ ,int,int) ;} ;
typedef  TYPE_1__ mbedtls_ssl_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC2( mbedtls_ssl_context *ssl, uint32_t millisecs )
{
    if( ssl->f_set_timer == NULL )
        return;

    FUNC0( 3, ( "set_timer to %d ms", (int) millisecs ) );
    ssl->f_set_timer( ssl->p_timer, millisecs / 4, millisecs );
}