
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ int64_t ;
typedef int AVIOContext ;


 scalar_t__ INT64_MAX ;
 int SEEK_SET ;
 int avio_seek (int *,scalar_t__,int ) ;
 scalar_t__ avio_tell (int *) ;

__attribute__((used)) static void align_position(AVIOContext *pb, int64_t offset, uint64_t size)
{
    if (size < INT64_MAX - offset && avio_tell(pb) != offset + size)
        avio_seek(pb, offset + size, SEEK_SET);
}
