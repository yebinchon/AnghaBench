
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pb; } ;
typedef TYPE_1__ AVFormatContext ;


 int avio_w8 (int ,int ) ;

__attribute__((used)) static int voc_write_trailer(AVFormatContext *s)
{
    avio_w8(s->pb, 0);
    return 0;
}
