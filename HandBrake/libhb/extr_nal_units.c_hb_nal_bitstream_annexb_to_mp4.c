
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int * data; } ;
typedef TYPE_1__ hb_buffer_t ;


 int * hb_annexb_find_next_nalu (int *,size_t*) ;
 TYPE_1__* hb_buffer_init (size_t) ;
 int hb_error (char*) ;
 scalar_t__ hb_nal_unit_write_isomp4 (int *,int *,size_t) ;

hb_buffer_t* hb_nal_bitstream_annexb_to_mp4(const uint8_t *data,
                                            const size_t size)
{
    hb_buffer_t *out;
    uint8_t *buf, *end;
    size_t out_size, buf_size;

    out_size = 0;
    buf_size = size;
    buf = (uint8_t*)data;
    end = (uint8_t*)data + size;

    while ((buf = hb_annexb_find_next_nalu(buf, &buf_size)) != ((void*)0))
    {
        out_size += hb_nal_unit_write_isomp4(((void*)0), buf, buf_size);
        buf_size = end - buf;
    }

    out = hb_buffer_init(out_size);
    if (out == ((void*)0))
    {
        hb_error("hb_nal_bitstream_annexb_to_mp4: hb_buffer_init failed");
        return ((void*)0);
    }

    out_size = 0;
    buf_size = size;
    buf = (uint8_t*)data;
    end = (uint8_t*)data + size;

    while ((buf = hb_annexb_find_next_nalu(buf, &buf_size)) != ((void*)0))
    {
        out_size += hb_nal_unit_write_isomp4(out->data + out_size, buf, buf_size);
        buf_size = end - buf;
    }

    return out;
}
