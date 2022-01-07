
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;
typedef scalar_t__ int32_t ;
typedef int AVIOContext ;


 int SEEK_SET ;
 scalar_t__ avio_rb32 (int *) ;
 int avio_seek (int *,scalar_t__,int ) ;
 scalar_t__ avio_tell (int *) ;
 scalar_t__ expect_tag (scalar_t__,scalar_t__) ;

__attribute__((used)) static int skip_tag(AVIOContext *in, int32_t tag_name)
{
    int64_t pos = avio_tell(in);
    int32_t size, tag;

    size = avio_rb32(in);
    tag = avio_rb32(in);
    if (expect_tag(tag, tag_name) != 0)
        return -1;
    avio_seek(in, pos + size, SEEK_SET);
    return 0;
}
