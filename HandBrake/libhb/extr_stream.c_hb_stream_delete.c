
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* list; } ;
struct TYPE_7__ {TYPE_3__* list; } ;
struct TYPE_9__ {struct TYPE_9__* path; TYPE_2__ pes; TYPE_1__ ts; } ;
typedef TYPE_3__ hb_stream_t ;


 int free (TYPE_3__*) ;
 int hb_stream_delete_dynamic (TYPE_3__*) ;

__attribute__((used)) static void hb_stream_delete( hb_stream_t *d )
{
    hb_stream_delete_dynamic( d );
    free( d->ts.list );
    free( d->pes.list );
    free( d->path );
    free( d );
}
