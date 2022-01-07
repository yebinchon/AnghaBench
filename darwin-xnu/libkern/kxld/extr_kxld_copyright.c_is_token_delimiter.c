
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 scalar_t__ is_space (char const) ;

__attribute__((used)) static boolean_t
is_token_delimiter(const char c)
{
    return (is_space(c) || (',' == c) || ('\0' == c));
}
