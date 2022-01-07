
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int count; } ;
struct TYPE_6__ {TYPE_1__ ts; } ;
typedef TYPE_2__ hb_stream_t ;
typedef int hb_buffer_t ;
typedef int hb_buffer_list_t ;


 int * generate_output_data (TYPE_2__*,int) ;
 int hb_buffer_list_append (int *,int *) ;
 int * hb_buffer_list_clear (int *) ;

__attribute__((used)) static hb_buffer_t * flush_ts_streams( hb_stream_t *stream )
{
    hb_buffer_list_t list;
    hb_buffer_t *buf;
    int ii;

    hb_buffer_list_clear(&list);
    for (ii = 0; ii < stream->ts.count; ii++)
    {
        buf = generate_output_data(stream, ii);
        hb_buffer_list_append(&list, buf);
    }
    return hb_buffer_list_clear(&list);
}
