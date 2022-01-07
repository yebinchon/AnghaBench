
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;
typedef int AVIOContext ;


 scalar_t__ avio_tell (int *) ;

__attribute__((used)) static void update_offsets(AVIOContext *pb, int64_t *off, int *len)
{
    int64_t new_off = avio_tell(pb);
    (*len) -= new_off - *off;
    *off = new_off;
}
