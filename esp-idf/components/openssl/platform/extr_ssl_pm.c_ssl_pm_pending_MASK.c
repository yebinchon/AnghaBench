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
struct ssl_pm {int /*<<< orphan*/  ssl; } ;
struct TYPE_3__ {scalar_t__ ssl_pm; } ;
typedef  TYPE_1__ SSL ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 

int FUNC1(const SSL *ssl)
{
    struct ssl_pm *ssl_pm = (struct ssl_pm *)ssl->ssl_pm;

    return FUNC0(&ssl_pm->ssl);
}