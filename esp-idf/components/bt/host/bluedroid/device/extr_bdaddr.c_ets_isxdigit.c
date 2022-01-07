
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline bool ets_isxdigit(char c)
{
    if ((c >= '0') && (c <= '9')) {
        return 1;
    }
    if ((c >= 'a') && (c <= 'f')) {
        return 1;
    }
    return ((c >= 'A') && (c <= 'F'));
}
