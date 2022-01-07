
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 scalar_t__ is_token_delimiter (char const) ;

__attribute__((used)) static boolean_t
is_token_break(const char *str)
{



    return (!is_token_delimiter(str[0]) && is_token_delimiter(str[1]));
}
