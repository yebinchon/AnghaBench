
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char uint8_t ;
typedef int header ;
struct TYPE_3__ {int pb; } ;
typedef TYPE_1__ AVFormatContext ;


 int avio_write (int ,char*,int) ;
 int memcpy (char*,char const*,int) ;
 int memset (char*,char,int) ;
 int snprintf (char*,int,char*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int write_keyword_value(AVFormatContext *s, const char *keyword, int value, int *lines_written)
{
    int len, ret;
    uint8_t header[80];

    len = strlen(keyword);
    memset(header, ' ', sizeof(header));
    memcpy(header, keyword, len);

    header[8] = '=';
    header[9] = ' ';

    ret = snprintf(header + 10, 70, "%d", value);
    memset(&header[ret + 10], ' ', sizeof(header) - (ret + 10));

    avio_write(s->pb, header, sizeof(header));
    *lines_written += 1;
    return 0;
}
