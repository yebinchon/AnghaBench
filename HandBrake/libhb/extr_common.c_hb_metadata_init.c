
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_metadata_t ;


 int * calloc (int,int) ;

hb_metadata_t *hb_metadata_init()
{
    hb_metadata_t *metadata = calloc( 1, sizeof(*metadata) );
    return metadata;
}
