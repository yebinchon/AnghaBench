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
struct TYPE_6__ {int /*<<< orphan*/  key_file; int /*<<< orphan*/  cert_file; } ;
struct TYPE_8__ {int /*<<< orphan*/  ssl_context; TYPE_1__ tls_shared; } ;
typedef  TYPE_3__ TLSContext ;
typedef  int /*<<< orphan*/  SecKeyRef ;
typedef  int /*<<< orphan*/ * SecIdentityRef ;
typedef  int /*<<< orphan*/  SecCertificateRef ;
typedef  int /*<<< orphan*/ * CFMutableArrayRef ;
typedef  int /*<<< orphan*/ * CFArrayRef ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_UNKNOWN ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  kCFAllocatorDefault ; 

__attribute__((used)) static int FUNC8(URLContext *h)
{
    TLSContext *c = h->priv_data;
    int ret = 0;
    CFArrayRef certArray = NULL;
    CFArrayRef keyArray = NULL;
    SecIdentityRef id = NULL;
    CFMutableArrayRef outArray = NULL;

    if ((ret = FUNC7(h, c->tls_shared.cert_file, &certArray)) < 0)
        goto end;

    if ((ret = FUNC7(h, c->tls_shared.key_file, &keyArray)) < 0)
        goto end;

    if (!(id = FUNC6(kCFAllocatorDefault,
                                 (SecCertificateRef)FUNC2(certArray, 0),
                                 (SecKeyRef)FUNC2(keyArray, 0)))) {
        ret = AVERROR_UNKNOWN;
        goto end;
    }

    if (!(outArray = FUNC1(kCFAllocatorDefault, 0, certArray))) {
        ret = FUNC0(ENOMEM);
        goto end;
    }

    FUNC3(outArray, 0, id);

    FUNC5(c->ssl_context, outArray);

end:
    if (certArray)
        FUNC4(certArray);
    if (keyArray)
        FUNC4(keyArray);
    if (outArray)
        FUNC4(outArray);
    if (id)
        FUNC4(id);
    return ret;
}