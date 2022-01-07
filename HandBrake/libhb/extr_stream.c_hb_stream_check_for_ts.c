
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ have_ts_sync (int const*,int,int) ;

__attribute__((used)) static int hb_stream_check_for_ts(const uint8_t *buf)
{



    int offset = 0;
    int count = 16;

    for ( offset = 0; offset < 8*1024-count*188; ++offset )
    {
        if ( have_ts_sync( &buf[offset], 188, count) )
            return 188 | (offset << 8);
        if ( have_ts_sync( &buf[offset], 192, count) )
            return 192 | (offset << 8);
        if ( have_ts_sync( &buf[offset], 204, count) )
            return 204 | (offset << 8);
        if ( have_ts_sync( &buf[offset], 208, count) )
            return 208 | (offset << 8);
    }
    return 0;
}
