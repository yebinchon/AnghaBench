
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* r; void* l; void* b; void* t; } ;
typedef TYPE_1__ crop_record_t ;


 void* calloc (int,int) ;

__attribute__((used)) static crop_record_t * crop_record_init( int max_previews )
{
    crop_record_t *crops = calloc( 1, sizeof(*crops) );

    crops->t = calloc( max_previews, sizeof(int) );
    crops->b = calloc( max_previews, sizeof(int) );
    crops->l = calloc( max_previews, sizeof(int) );
    crops->r = calloc( max_previews, sizeof(int) );

    return crops;
}
