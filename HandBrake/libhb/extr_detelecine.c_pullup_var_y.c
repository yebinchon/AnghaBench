
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PULLUP_ABS (unsigned char) ;

__attribute__((used)) static int pullup_var_y( unsigned char * a, unsigned char * b, int s )
{
    int i, j, var = 0;
    for( i = 3; i; i-- )
    {
        for( j = 0; j < 8; j++ )
        {
            var += PULLUP_ABS( a[j]-a[j+s] );
        }
        a+=s; b+=s;
    }
    return 4*var;
}
