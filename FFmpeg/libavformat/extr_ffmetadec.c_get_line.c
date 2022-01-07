
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int AVIOContext ;


 int avio_feof (int *) ;
 char avio_r8 (int *) ;

__attribute__((used)) static void get_line(AVIOContext *s, uint8_t *buf, int size)
{
    do {
        uint8_t c;
        int i = 0;

        while ((c = avio_r8(s))) {
            if (c == '\\') {
                if (i < size - 1)
                    buf[i++] = c;
                c = avio_r8(s);
            } else if (c == '\n')
                break;

            if (i < size - 1)
                buf[i++] = c;
        }
        buf[i] = 0;
    } while (!avio_feof(s) && (buf[0] == ';' || buf[0] == '#' || buf[0] == 0));
}
