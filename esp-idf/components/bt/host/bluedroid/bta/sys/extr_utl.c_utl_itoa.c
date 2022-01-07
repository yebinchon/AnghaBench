
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT16 ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;

UINT8 utl_itoa(UINT16 i, char *p_s)
{
    UINT16 j, k;
    char *p = p_s;
    BOOLEAN fill = FALSE;

    if (i == 0) {

        *p++ = '0';
    } else {
        for (j = 10000; j > 0; j /= 10) {
            k = i / j;
            i %= j;
            if (k > 0 || fill) {
                *p++ = k + '0';
                fill = TRUE;
            }
        }
    }
    *p = 0;
    return (UINT8) (p - p_s);
}
