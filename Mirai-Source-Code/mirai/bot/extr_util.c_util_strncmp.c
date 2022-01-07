
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int util_strlen (char*) ;

BOOL util_strncmp(char *str1, char *str2, int len)
{
    int l1 = util_strlen(str1), l2 = util_strlen(str2);

    if (l1 < len || l2 < len)
        return FALSE;

    while (len--)
    {
        if (*str1++ != *str2++)
            return FALSE;
    }

    return TRUE;
}
