
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int hb_debug_level_t ;


 int hb_deep_log (int ,char*,...) ;
 scalar_t__ isgraph (int const) ;
 int memset (char*,char,int) ;
 int sprintf (char*,char*,int const) ;

void hb_hexdump( hb_debug_level_t level, const char * label, const uint8_t * data, int len )
{
    int ii;
    char line[80], ascii[19], *p;

    ascii[18] = 0;
    ascii[0] = '|';
    ascii[17] = '|';
    memset(&ascii[1], '.', 16);
    p = line;
    if( label )
        hb_deep_log(level, "++++ %s ++++", label);
    else
        hb_deep_log(level, "++++++++++++");
    for( ii = 0; ii < len; ii++ )
    {
        if( ( ii & 0x0f ) == 0x0f )
        {
            p += sprintf( p, "%02x", data[ii] );
            hb_deep_log( level, "    %-50s%20s", line, ascii );
            memset(&ascii[1], '.', 16);
            p = line;
        }
        else if( ( ii & 0x07 ) == 0x07 )
        {
            p += sprintf( p, "%02x  ", data[ii] );
        }
        else
        {
            p += sprintf( p, "%02x ", data[ii] );
        }
        if( isgraph( data[ii] ) )
            ascii[(ii & 0x0f) + 1] = data[ii];
        else
            ascii[(ii & 0x0f) + 1] = '.';
    }
    if( p != line )
    {
        hb_deep_log( level, "    %-50s%20s", line, ascii );
    }
}
