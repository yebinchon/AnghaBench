#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {int /*<<< orphan*/  pk; } ;
typedef  TYPE_1__ mbedtls_x509_crt ;
typedef  int /*<<< orphan*/  mbedtls_rsa_context ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  pki_input ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ FUNC12 (char const*) ; 

__attribute__((used)) static void FUNC13(const char *cert, const uint8_t *expected_output, size_t output_len)
{
    mbedtls_x509_crt crt;
    mbedtls_rsa_context *rsa;
    char buf[output_len];

    FUNC3(buf, output_len);

    FUNC9(&crt);

    FUNC0(0,
                                    -FUNC10(&crt,
                                                            (const uint8_t *)cert,
                                                            FUNC12(cert)+1),
                                    "parse cert");

    rsa = FUNC4(crt.pk);
    FUNC2(rsa);

    FUNC0(0,
                                    -FUNC5(rsa),
                                    "check cert pubkey");

    FUNC8(buf, sizeof(buf), "", &crt);
    FUNC11(buf);

    FUNC0(0,
                                    -FUNC6(rsa, pki_input, (uint8_t *)buf),
                                    "RSA PK operation");

    /*
    // Dump buffer for debugging
    for(int i = 0; i < output_len; i++) {
        printf("0x%02x, ", buf[i]);
    }
    printf("\n");
    */

    FUNC1(expected_output, buf, output_len);

    FUNC7(&crt);
}