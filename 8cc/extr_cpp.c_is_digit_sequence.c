
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isdigit (char) ;

__attribute__((used)) static bool is_digit_sequence(char *p) {
    for (; *p; p++)
        if (!isdigit(*p))
            return 0;
    return 1;
}
