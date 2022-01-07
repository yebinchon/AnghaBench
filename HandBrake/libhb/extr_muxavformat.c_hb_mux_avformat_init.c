
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * job; int end; int mux; int init; } ;
typedef TYPE_1__ hb_mux_object_t ;
typedef int hb_job_t ;


 int avformatEnd ;
 int avformatInit ;
 int avformatMux ;
 TYPE_1__* calloc (int,int) ;

hb_mux_object_t * hb_mux_avformat_init( hb_job_t * job )
{
    hb_mux_object_t * m = calloc( sizeof( hb_mux_object_t ), 1 );
    m->init = avformatInit;
    m->mux = avformatMux;
    m->end = avformatEnd;
    m->job = job;
    return m;
}
