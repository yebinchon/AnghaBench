
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT16 ;
typedef int BOOLEAN ;


 int FALSE ;
 int TRUE ;

BOOLEAN utl_isdialstr(const char *p_s)
{
    UINT16 i = 0;

    for (i = 0; p_s[i] != 0; i++) {
        if (!(((p_s[i] >= '0') && (p_s[i] <= '9'))
                || (p_s[i] == '*') || (p_s[i] == '+') || (p_s[i] == '#') || (p_s[i] == ';')
                || ((p_s[i] >= 'A') && (p_s[i] <= 'C'))
                || ((p_s[i] == 'p') || (p_s[i] == 'P')
                    || (p_s[i] == 'w') || (p_s[i] == 'W')))) {
            return FALSE;
        }
    }

    return TRUE;
}
