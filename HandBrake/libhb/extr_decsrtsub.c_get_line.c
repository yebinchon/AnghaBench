
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ utf8_pos; scalar_t__ utf8_end; char* utf8_buf; } ;
typedef TYPE_1__ hb_work_private_t ;


 int memset (char*,char,int) ;
 int utf8_fill (TYPE_1__*) ;

__attribute__((used)) static int get_line( hb_work_private_t * pv, char *buf, int size )
{
    int i;
    char c;


    memset(buf, '\0', size);


    for( i = 0; i < size - 1; i++ )
    {
        if( pv->utf8_pos >= pv->utf8_end )
        {
            if( !utf8_fill( pv ) )
            {
                if( i )
                    return 1;
                else
                    return 0;
            }
        }
        c = pv->utf8_buf[pv->utf8_pos++];
        if( c == '\n' )
        {
            buf[i] = '\n';
            buf[i+1] = '\0';
            return 1;
        }
        buf[i] = c;
    }
    buf[0] = '\0';
    return 1;
}
