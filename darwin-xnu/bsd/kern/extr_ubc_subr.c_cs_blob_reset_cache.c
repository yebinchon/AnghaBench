
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OSAddAtomic (int,int *) ;
 int cs_blob_generation_count ;
 int printf (char*) ;

void
cs_blob_reset_cache()
{

 OSAddAtomic(+2, &cs_blob_generation_count);
 printf("Reseting cs_blob cache from all vnodes. \n");
}
