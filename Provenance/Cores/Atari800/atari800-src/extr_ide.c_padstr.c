
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;



__attribute__((used)) static inline void padstr(uint8_t *str, const char *src, int len) {
    int i;
    for(i = 0; i < len; i++)
        str[i^1] = *src ? *src++ : ' ';
}
