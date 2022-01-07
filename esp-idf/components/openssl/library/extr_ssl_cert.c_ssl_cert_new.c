
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CERT ;


 int * __ssl_cert_new (int *) ;

CERT *ssl_cert_new(void)
{
    return __ssl_cert_new(((void*)0));
}
