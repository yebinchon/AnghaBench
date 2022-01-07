
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Buffer ;


 int buf_write (int *,char) ;

void buf_append(Buffer *b, char *s, int len) {
    for (int i = 0; i < len; i++)
        buf_write(b, s[i]);
}
