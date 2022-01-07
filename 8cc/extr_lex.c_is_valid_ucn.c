
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool is_valid_ucn(unsigned int c) {


    if (0xD800 <= c && c <= 0xDFFF)
        return 0;



    return 0xA0 <= c || c == '$' || c == '@' || c == '`';
}
