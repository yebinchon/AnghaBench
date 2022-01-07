
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* job; int * die; } ;
typedef TYPE_2__ hb_work_private_t ;
typedef int hb_fifo_t ;
typedef int hb_buffer_t ;
struct TYPE_4__ {int done; } ;


 int hb_buffer_close (int **) ;
 scalar_t__ hb_fifo_full_wait (int *) ;
 int hb_fifo_push (int *,int *) ;

__attribute__((used)) static void push_buf( hb_work_private_t *r, hb_fifo_t *fifo, hb_buffer_t *buf )
{
    while ( !*r->die && !r->job->done )
    {
        if ( hb_fifo_full_wait( fifo ) )
        {
            hb_fifo_push( fifo, buf );
            buf = ((void*)0);
            break;
        }
    }
    if ( buf )
    {
        hb_buffer_close( &buf );
    }
}
