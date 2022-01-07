
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 scalar_t__ is_token_break (char const*) ;
 scalar_t__ is_token_delimiter (char const) ;
 int kYearRangeLen ;
 int token_is_year (char*) ;
 int token_is_yearRange (char*) ;

__attribute__((used)) static boolean_t
dates_are_valid(const char *str, const u_long len)
{
    boolean_t result = FALSE;
    const char *token_ptr = ((void*)0);
    char token_buffer[kYearRangeLen];
    u_int token_index = 0;

    token_index = 0;
    for (token_ptr = str; token_ptr < str + len; ++token_ptr) {
        if (is_token_delimiter(*token_ptr) && !token_index) continue;





        if (token_index == kYearRangeLen) goto finish;

        token_buffer[token_index++] = *token_ptr;
        if (is_token_break(token_ptr)) {
            if (!token_index) continue;

            token_buffer[token_index] = '\0';

            if (!token_is_year(token_buffer) &&
                !token_is_yearRange(token_buffer))
            {
                goto finish;
            }

            token_index = 0;
        }
    }

    result = TRUE;
finish:
    return result;
}
