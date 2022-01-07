
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int check_ts_sync (int const*) ;

__attribute__((used)) static int have_ts_sync(const uint8_t *buf, int psize, int count)
{
    int ii;
    for ( ii = 0; ii < count; ii++ )
    {
        if ( !check_ts_sync(&buf[ii*psize]) )
            return 0;
    }
    return 1;
}
