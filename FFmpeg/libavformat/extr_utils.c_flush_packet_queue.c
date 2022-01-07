
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* internal; } ;
struct TYPE_4__ {int raw_packet_buffer_remaining_size; int raw_packet_buffer_end; int raw_packet_buffer; int packet_buffer_end; int packet_buffer; int parse_queue_end; int parse_queue; } ;
typedef TYPE_2__ AVFormatContext ;


 int RAW_PACKET_BUFFER_SIZE ;
 int ff_packet_list_free (int *,int *) ;

__attribute__((used)) static void flush_packet_queue(AVFormatContext *s)
{
    if (!s->internal)
        return;
    ff_packet_list_free(&s->internal->parse_queue, &s->internal->parse_queue_end);
    ff_packet_list_free(&s->internal->packet_buffer, &s->internal->packet_buffer_end);
    ff_packet_list_free(&s->internal->raw_packet_buffer, &s->internal->raw_packet_buffer_end);

    s->internal->raw_packet_buffer_remaining_size = RAW_PACKET_BUFFER_SIZE;
}
