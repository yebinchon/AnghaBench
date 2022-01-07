
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int * data; } ;
typedef TYPE_1__ hb_buffer_t ;


 TYPE_1__* hb_buffer_init (size_t) ;
 int hb_error (char*) ;
 int hb_log (char*,int,size_t) ;
 scalar_t__ hb_nal_unit_write_annexb (int *,int*,size_t) ;
 int mp4_nal_unit_length (int*,int const,size_t*) ;

hb_buffer_t* hb_nal_bitstream_mp4_to_annexb(const uint8_t *data,
                                            const size_t size,
                                            const uint8_t nal_length_size)
{
    hb_buffer_t *out;
    uint8_t *buf, *end;
    size_t out_size, nal_size;

    out_size = 0;
    buf = (uint8_t*)data;
    end = (uint8_t*)data + size;

    while (end - buf > nal_length_size)
    {
        buf += mp4_nal_unit_length(buf, nal_length_size, &nal_size);
        if (end - buf < nal_size)
        {
            hb_log("hb_nal_bitstream_mp4_to_annexb: truncated bitstream"
                   " (remaining: %lu, expected: %lu)", end - buf, nal_size);
            return ((void*)0);
        }

        out_size += hb_nal_unit_write_annexb(((void*)0), buf, nal_size);
        buf += nal_size;
    }

    out = hb_buffer_init(out_size);
    if (out == ((void*)0))
    {
        hb_error("hb_nal_bitstream_mp4_to_annexb: hb_buffer_init failed");
        return ((void*)0);
    }

    out_size = 0;
    buf = (uint8_t*)data;
    end = (uint8_t*)data + size;

    while (end - buf > nal_length_size)
    {
        buf += mp4_nal_unit_length(buf, nal_length_size, &nal_size);
        out_size += hb_nal_unit_write_annexb(out->data + out_size, buf, nal_size);
        buf += nal_size;
    }

    return out;
}
