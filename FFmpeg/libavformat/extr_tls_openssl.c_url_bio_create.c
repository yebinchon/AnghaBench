
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int init; scalar_t__ flags; int * ptr; } ;
typedef TYPE_1__ BIO ;


 int BIO_set_data (TYPE_1__*,int *) ;
 int BIO_set_flags (TYPE_1__*,int ) ;
 int BIO_set_init (TYPE_1__*,int) ;

__attribute__((used)) static int url_bio_create(BIO *b)
{





    b->init = 1;
    b->ptr = ((void*)0);
    b->flags = 0;

    return 1;
}
