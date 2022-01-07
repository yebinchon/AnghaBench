
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * streams; int pb; } ;
typedef TYPE_1__ AVFormatContext ;


 int avio_write (int ,char const*,int ) ;
 int avpriv_set_pts_info (int ,int,int,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int write_header(AVFormatContext *s)
{
    static const char *header = "# timecode format v2\n";
    avio_write(s->pb, header, strlen(header));
    avpriv_set_pts_info(s->streams[0], 64, 1, 1000);
    return 0;
}
