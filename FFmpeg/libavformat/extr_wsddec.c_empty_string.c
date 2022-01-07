
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int empty_string(const char *buf, unsigned size)
{
    while (size--) {
       if (*buf++ != ' ')
           return 0;
    }
    return 1;
}
