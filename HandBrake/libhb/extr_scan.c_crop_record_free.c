
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* r; struct TYPE_4__* l; struct TYPE_4__* b; struct TYPE_4__* t; } ;
typedef TYPE_1__ crop_record_t ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void crop_record_free( crop_record_t *crops )
{
    free( crops->t );
    free( crops->b );
    free( crops->l );
    free( crops->r );
    free( crops );
}
