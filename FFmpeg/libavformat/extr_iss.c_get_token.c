
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;


 char avio_r8 (int *) ;

__attribute__((used)) static void get_token(AVIOContext *s, char *buf, int maxlen)
{
    int i = 0;
    char c;

    while ((c = avio_r8(s))) {
        if(c == ' ')
            break;
        if (i < maxlen-1)
            buf[i++] = c;
    }

    if(!c)
        avio_r8(s);

    buf[i] = 0;
}
