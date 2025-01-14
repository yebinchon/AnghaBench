
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CERT_TYPE (int ,char*) ;
 int MBEDTLS_X509_NS_CERT_TYPE_EMAIL ;
 int MBEDTLS_X509_NS_CERT_TYPE_EMAIL_CA ;
 int MBEDTLS_X509_NS_CERT_TYPE_OBJECT_SIGNING ;
 int MBEDTLS_X509_NS_CERT_TYPE_OBJECT_SIGNING_CA ;
 int MBEDTLS_X509_NS_CERT_TYPE_RESERVED ;
 int MBEDTLS_X509_NS_CERT_TYPE_SSL_CA ;
 int MBEDTLS_X509_NS_CERT_TYPE_SSL_CLIENT ;
 int MBEDTLS_X509_NS_CERT_TYPE_SSL_SERVER ;

__attribute__((used)) static int x509_info_cert_type( char **buf, size_t *size,
                                unsigned char ns_cert_type )
{
    int ret;
    size_t n = *size;
    char *p = *buf;
    const char *sep = "";

    CERT_TYPE( MBEDTLS_X509_NS_CERT_TYPE_SSL_CLIENT, "SSL Client" );
    CERT_TYPE( MBEDTLS_X509_NS_CERT_TYPE_SSL_SERVER, "SSL Server" );
    CERT_TYPE( MBEDTLS_X509_NS_CERT_TYPE_EMAIL, "Email" );
    CERT_TYPE( MBEDTLS_X509_NS_CERT_TYPE_OBJECT_SIGNING, "Object Signing" );
    CERT_TYPE( MBEDTLS_X509_NS_CERT_TYPE_RESERVED, "Reserved" );
    CERT_TYPE( MBEDTLS_X509_NS_CERT_TYPE_SSL_CA, "SSL CA" );
    CERT_TYPE( MBEDTLS_X509_NS_CERT_TYPE_EMAIL_CA, "Email CA" );
    CERT_TYPE( MBEDTLS_X509_NS_CERT_TYPE_OBJECT_SIGNING_CA, "Object Signing CA" );

    *size = n;
    *buf = p;

    return( 0 );
}
