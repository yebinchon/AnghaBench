
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hb_stream_t ;
struct TYPE_3__ {scalar_t__ dvd; scalar_t__ bd; } ;
typedef TYPE_1__ hb_scan_t ;
typedef int hb_buffer_t ;


 int * hb_bd_read (scalar_t__) ;
 int * hb_dvd_read (scalar_t__) ;
 int * hb_stream_read (int *) ;

__attribute__((used)) static hb_buffer_t * read_buf(hb_scan_t * data, hb_stream_t * stream)
{
    if (data->bd)
    {
        return hb_bd_read(data->bd);
    }
    else if (data->dvd)
    {
        return hb_dvd_read(data->dvd);
    }
    else if (stream)
    {
        return hb_stream_read(stream);
    }


    return ((void*)0);
}
