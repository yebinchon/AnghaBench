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
struct x509_pm {int /*<<< orphan*/ * x509_crt; } ;
struct TYPE_3__ {int /*<<< orphan*/ * x509_pm; } ;
typedef  TYPE_1__ X509 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(X509 *x)
{
    struct x509_pm *x509_pm = (struct x509_pm *)x->x509_pm;

    if (x509_pm->x509_crt) {
        FUNC0(x509_pm->x509_crt);

        FUNC1(x509_pm->x509_crt);
        x509_pm->x509_crt = NULL;
    }

    FUNC1(x->x509_pm);
    x->x509_pm = NULL;
}