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
struct ssl_pm {int /*<<< orphan*/  ssl; int /*<<< orphan*/  conf; int /*<<< orphan*/  entropy; int /*<<< orphan*/  ctr_drbg; } ;
struct TYPE_3__ {int /*<<< orphan*/ * ssl_pm; } ;
typedef  TYPE_1__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ssl_pm*) ; 

void FUNC5(SSL *ssl)
{
    struct ssl_pm *ssl_pm = (struct ssl_pm *)ssl->ssl_pm;

    FUNC0(&ssl_pm->ctr_drbg);
    FUNC1(&ssl_pm->entropy);
    FUNC2(&ssl_pm->conf);
    FUNC3(&ssl_pm->ssl);

    FUNC4(ssl_pm);
    ssl->ssl_pm = NULL;
}