
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 scalar_t__ malloc (int) ;

BIO *BIO_new(void *method) {
    BIO *b = (BIO *)malloc(sizeof(BIO));
    return b;
}
