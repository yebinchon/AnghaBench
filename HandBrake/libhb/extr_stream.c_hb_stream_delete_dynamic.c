
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int count; TYPE_1__* list; int * packet; } ;
struct TYPE_7__ {TYPE_2__ ts; int * file_handle; } ;
typedef TYPE_3__ hb_stream_t ;
struct TYPE_5__ {int * buf; } ;


 int fclose (int *) ;
 int free (int *) ;
 int hb_buffer_close (int **) ;

__attribute__((used)) static void hb_stream_delete_dynamic( hb_stream_t *d )
{
    if( d->file_handle )
    {
        fclose( d->file_handle );
        d->file_handle = ((void*)0);
    }

    int i=0;

    if ( d->ts.packet )
    {
        free( d->ts.packet );
        d->ts.packet = ((void*)0);
    }
    if ( d->ts.list )
    {
        for (i = 0; i < d->ts.count; i++)
        {
            if (d->ts.list[i].buf)
            {
                hb_buffer_close(&(d->ts.list[i].buf));
                d->ts.list[i].buf = ((void*)0);
            }
        }
    }
}
