
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_fifo_t ;
typedef int hb_buffer_t ;


 int hb_buffer_close (int **) ;
 int hb_fifo_push (int *,int *) ;

__attribute__((used)) static void fifo_push( hb_fifo_t * fifo, hb_buffer_t * buf )
{
    if (fifo != ((void*)0))
    {
        hb_fifo_push(fifo, buf);
    }
    else
    {
        hb_buffer_close(&buf);
    }
}
