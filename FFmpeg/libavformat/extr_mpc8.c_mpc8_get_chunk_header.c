
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;
typedef int AVIOContext ;


 int avio_rl16 (int *) ;
 scalar_t__ avio_tell (int *) ;
 scalar_t__ ffio_read_varlen (int *) ;

__attribute__((used)) static void mpc8_get_chunk_header(AVIOContext *pb, int *tag, int64_t *size)
{
    int64_t pos;
    pos = avio_tell(pb);
    *tag = avio_rl16(pb);
    *size = ffio_read_varlen(pb);
    *size -= avio_tell(pb) - pos;
}
