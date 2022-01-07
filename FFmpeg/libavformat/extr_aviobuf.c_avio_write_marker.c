
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
typedef enum AVIODataMarkerType { ____Placeholder_AVIODataMarkerType } AVIODataMarkerType ;
struct TYPE_4__ {scalar_t__ buf_ptr; scalar_t__ buffer; scalar_t__ min_packet_size; int current_type; int last_time; scalar_t__ ignore_boundary_point; int write_data_type; } ;
typedef TYPE_1__ AVIOContext ;


 int AVIO_DATA_MARKER_BOUNDARY_POINT ;
 int AVIO_DATA_MARKER_FLUSH_POINT ;


 int AVIO_DATA_MARKER_UNKNOWN ;
 int avio_flush (TYPE_1__*) ;

void avio_write_marker(AVIOContext *s, int64_t time, enum AVIODataMarkerType type)
{
    if (type == AVIO_DATA_MARKER_FLUSH_POINT) {
        if (s->buf_ptr - s->buffer >= s->min_packet_size)
            avio_flush(s);
        return;
    }
    if (!s->write_data_type)
        return;

    if (type == AVIO_DATA_MARKER_BOUNDARY_POINT && s->ignore_boundary_point)
        type = AVIO_DATA_MARKER_UNKNOWN;


    if (type == AVIO_DATA_MARKER_UNKNOWN &&
        (s->current_type != 129 &&
         s->current_type != 128))
        return;

    switch (type) {
    case 129:
    case 128:


        if (type == s->current_type)
            return;
        break;
    }



    avio_flush(s);
    s->current_type = type;
    s->last_time = time;
}
