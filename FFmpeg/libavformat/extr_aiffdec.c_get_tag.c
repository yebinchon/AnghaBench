
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int AVIOContext ;


 int AVERROR (int ) ;
 int EIO ;
 scalar_t__ avio_feof (int *) ;
 int avio_rb32 (int *) ;
 int avio_rl32 (int *) ;

__attribute__((used)) static int get_tag(AVIOContext *pb, uint32_t * tag)
{
    int size;

    if (avio_feof(pb))
        return AVERROR(EIO);

    *tag = avio_rl32(pb);
    size = avio_rb32(pb);

    if (size < 0)
        size = 0x7fffffff;

    return size;
}
