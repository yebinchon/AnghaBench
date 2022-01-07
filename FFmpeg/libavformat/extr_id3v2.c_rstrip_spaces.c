
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char*) ;

__attribute__((used)) static void rstrip_spaces(char *buf)
{
    size_t len = strlen(buf);
    while (len > 0 && buf[len - 1] == ' ')
        buf[--len] = 0;
}
