
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;


 int AV_RB32 (char*) ;
 int SEEK_SET ;
 int avio_read (int *,char*,unsigned int) ;
 scalar_t__ avio_seek (int *,int,int ) ;
 scalar_t__ is_tag (char*,unsigned int) ;

__attribute__((used)) static int check_tag(AVIOContext *s, int offset, unsigned int len)
{
    char tag[4];

    if (len > 4 ||
        avio_seek(s, offset, SEEK_SET) < 0 ||
        avio_read(s, tag, len) < (int)len)
        return -1;
    else if (!AV_RB32(tag) || is_tag(tag, len))
        return 1;

    return 0;
}
