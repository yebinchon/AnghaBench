
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 int kYearLen ;
 int kYearRangeLen ;

__attribute__((used)) static boolean_t
token_is_yearRange(const char *str)
{
    boolean_t result = FALSE;
    u_int i = 0;

    for (i = 0; i < kYearLen - 1; ++i) {
        if (str[i] < '0' || str[i] > '9') goto finish;
    }

    if (str[i] != '-') goto finish;

    for (i = kYearLen; i < kYearRangeLen - 1; ++i) {
        if (str[i] < '0' || str[i] > '9') goto finish;
    }

    if (str[i] != '\0') goto finish;

    result = TRUE;
finish:
    return result;
}
