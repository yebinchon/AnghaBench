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
struct TYPE_3__ {int allow_legacy_renegotiation; } ;
typedef  TYPE_1__ mbedtls_ssl_config ;

/* Variables and functions */

void FUNC0( mbedtls_ssl_config *conf, int allow_legacy )
{
    conf->allow_legacy_renegotiation = allow_legacy;
}