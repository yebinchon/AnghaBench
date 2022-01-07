
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;
typedef int AVIOContext ;


 int SEEK_SET ;
 int avio_seek (int *,scalar_t__,int ) ;
 scalar_t__ avio_tell (int *) ;
 int avio_wb32 (int *,scalar_t__) ;

__attribute__((used)) static void update_size(AVIOContext *out, int64_t pos)
{
    int64_t end = avio_tell(out);
    avio_seek(out, pos, SEEK_SET);
    avio_wb32(out, end - pos);
    avio_seek(out, end, SEEK_SET);
}
