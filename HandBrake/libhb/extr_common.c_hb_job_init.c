
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_title_t ;
typedef int hb_job_t ;


 int * calloc (int,int) ;
 int job_setup (int *,int *) ;

hb_job_t * hb_job_init( hb_title_t * title )
{
    hb_job_t * job;

    if ( title == ((void*)0) )
        return ((void*)0);

    job = calloc( sizeof( hb_job_t ), 1 );
    job_setup(job, title);

    return job;
}
