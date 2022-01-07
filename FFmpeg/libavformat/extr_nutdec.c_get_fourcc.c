
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int AVIOContext ;


 int AV_LOG_ERROR ;
 int av_log (int *,int ,char*,unsigned int) ;
 int avio_rl16 (int *) ;
 int avio_rl32 (int *) ;
 unsigned int ffio_read_varlen (int *) ;

__attribute__((used)) static uint64_t get_fourcc(AVIOContext *bc)
{
    unsigned int len = ffio_read_varlen(bc);

    if (len == 2)
        return avio_rl16(bc);
    else if (len == 4)
        return avio_rl32(bc);
    else {
        av_log(((void*)0), AV_LOG_ERROR, "Unsupported fourcc length %d\n", len);
        return -1;
    }
}
