
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int AVIOContext ;


 int AVERROR_INVALIDDATA ;
 int MLV_VERSION ;
 int avio_read (int *,int *,int) ;
 unsigned int avio_rl32 (int *) ;
 scalar_t__ avio_rl64 (int *) ;
 int avio_skip (int *,unsigned int) ;
 scalar_t__ memcmp (int *,int ,int) ;

__attribute__((used)) static int check_file_header(AVIOContext *pb, uint64_t guid)
{
    unsigned int size;
    uint8_t version[8];

    avio_skip(pb, 4);
    size = avio_rl32(pb);
    if (size < 52)
        return AVERROR_INVALIDDATA;
    avio_read(pb, version, 8);
    if (memcmp(version, MLV_VERSION, 5) || avio_rl64(pb) != guid)
        return AVERROR_INVALIDDATA;
    avio_skip(pb, size - 24);
    return 0;
}
