
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pos; scalar_t__ size; int buffer; } ;
typedef int OPJ_SIZE_T ;
typedef TYPE_1__ BufferReader ;


 int memcpy (void*,int,int) ;

__attribute__((used)) static OPJ_SIZE_T stream_read(void *out_buffer, OPJ_SIZE_T nb_bytes, void *user_data)
{
    BufferReader *reader = user_data;
    int remaining;

    if (reader->pos == reader->size) {
        return (OPJ_SIZE_T)-1;
    }
    remaining = reader->size - reader->pos;
    if (nb_bytes > remaining) {
        nb_bytes = remaining;
    }
    memcpy(out_buffer, reader->buffer + reader->pos, nb_bytes);
    reader->pos += (int)nb_bytes;
    return nb_bytes;
}
