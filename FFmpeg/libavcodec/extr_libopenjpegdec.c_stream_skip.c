
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pos; scalar_t__ size; } ;
typedef scalar_t__ OPJ_SIZE_T ;
typedef scalar_t__ OPJ_OFF_T ;
typedef TYPE_1__ BufferReader ;



__attribute__((used)) static OPJ_OFF_T stream_skip(OPJ_OFF_T nb_bytes, void *user_data)
{
    BufferReader *reader = user_data;
    if (nb_bytes < 0) {
        if (reader->pos == 0) {
            return (OPJ_SIZE_T)-1;
        }
        if (nb_bytes + reader->pos < 0) {
            nb_bytes = -reader->pos;
        }
    } else {
        int remaining;

        if (reader->pos == reader->size) {
            return (OPJ_SIZE_T)-1;
        }
        remaining = reader->size - reader->pos;
        if (nb_bytes > remaining) {
            nb_bytes = remaining;
        }
    }
    reader->pos += (int)nb_bytes;
    return nb_bytes;
}
