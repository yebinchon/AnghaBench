
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pb; } ;
typedef TYPE_1__ AVFormatContext ;


 int avio_printf (int ,char*) ;

__attribute__((used)) static void write_footer(AVFormatContext *s)
{
    avio_printf(s->pb, "</MPD>\n");
}
