
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int AVIOContext ;


 int avio_rl32 (int *) ;

__attribute__((used)) static int read_ints(AVIOContext *pb, uint32_t *data, int count)
{
    int i, total = 0;
    for (i = 0; i < count; i++) {
        if ((data[total] = avio_rl32(pb)))
           total++;
    }
    return total;
}
