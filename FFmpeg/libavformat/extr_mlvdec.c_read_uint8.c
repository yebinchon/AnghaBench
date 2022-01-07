
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int metadata; } ;
typedef int AVIOContext ;
typedef TYPE_1__ AVFormatContext ;


 int av_dict_set_int (int *,char const*,int ,int ) ;
 int avio_r8 (int *) ;

__attribute__((used)) static void read_uint8(AVFormatContext *avctx, AVIOContext *pb, const char *tag, const char *fmt)
{
    av_dict_set_int(&avctx->metadata, tag, avio_r8(pb), 0);
}
