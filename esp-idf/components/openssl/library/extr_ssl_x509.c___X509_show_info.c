
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;


 int X509_METHOD_CALL (int ,int *) ;
 int show_info ;

int __X509_show_info(X509 *x)
{
    return X509_METHOD_CALL(show_info, x);
}
