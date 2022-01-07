
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int pk; } ;
typedef TYPE_1__ mbedtls_x509_crt ;
typedef int mbedtls_rsa_context ;
typedef int buf ;


 int TEST_ASSERT_EQUAL_HEX16_MESSAGE (int ,int ,char*) ;
 int TEST_ASSERT_EQUAL_HEX8_ARRAY (int const*,char*,size_t) ;
 int TEST_ASSERT_NOT_NULL (int *) ;
 int bzero (char*,size_t) ;
 int * mbedtls_pk_rsa (int ) ;
 int mbedtls_rsa_check_pubkey (int *) ;
 int mbedtls_rsa_public (int *,int ,int *) ;
 int mbedtls_x509_crt_free (TYPE_1__*) ;
 int mbedtls_x509_crt_info (char*,int,char*,TYPE_1__*) ;
 int mbedtls_x509_crt_init (TYPE_1__*) ;
 int mbedtls_x509_crt_parse (TYPE_1__*,int const*,scalar_t__) ;
 int pki_input ;
 int puts (char*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void test_cert(const char *cert, const uint8_t *expected_output, size_t output_len)
{
    mbedtls_x509_crt crt;
    mbedtls_rsa_context *rsa;
    char buf[output_len];

    bzero(buf, output_len);

    mbedtls_x509_crt_init(&crt);

    TEST_ASSERT_EQUAL_HEX16_MESSAGE(0,
                                    -mbedtls_x509_crt_parse(&crt,
                                                            (const uint8_t *)cert,
                                                            strlen(cert)+1),
                                    "parse cert");

    rsa = mbedtls_pk_rsa(crt.pk);
    TEST_ASSERT_NOT_NULL(rsa);

    TEST_ASSERT_EQUAL_HEX16_MESSAGE(0,
                                    -mbedtls_rsa_check_pubkey(rsa),
                                    "check cert pubkey");

    mbedtls_x509_crt_info(buf, sizeof(buf), "", &crt);
    puts(buf);

    TEST_ASSERT_EQUAL_HEX16_MESSAGE(0,
                                    -mbedtls_rsa_public(rsa, pki_input, (uint8_t *)buf),
                                    "RSA PK operation");
    TEST_ASSERT_EQUAL_HEX8_ARRAY(expected_output, buf, output_len);

    mbedtls_x509_crt_free(&crt);
}
