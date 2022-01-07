
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PULLUP_ABS (unsigned char) ;

__attribute__((used)) static int pullup_licomb_y( unsigned char * a, unsigned char * b, int s )
{
    int i, j, diff = 0;
    for( i = 4; i; i-- )
    {
        for( j = 0; j < 8; j++ )
        {
            diff += PULLUP_ABS( (a[j]<<1) - b[j-s] - b[j] )
                  + PULLUP_ABS( (b[j]<<1) - a[j] - a[j+s] );
        }
        a+=s; b+=s;
    }
    return diff;
}
