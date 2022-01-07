
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;


 scalar_t__ avio_feof (int *) ;
 int avio_r8 (int *) ;

__attribute__((used)) static int read_line(AVIOContext * pb, char* line, int bufsize)
{
    int i;
    for (i = 0; i < bufsize - 1; i++) {
        int b = avio_r8(pb);
        if (b == 0)
            break;
        if (b == '\n') {
            line[i] = '\0';
            return avio_feof(pb) ? -1 : 0;
        }
        line[i] = b;
    }
    line[i] = '\0';
    return -1;
}
