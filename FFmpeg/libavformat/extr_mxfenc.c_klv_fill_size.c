
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int KAG_SIZE ;

__attribute__((used)) static unsigned klv_fill_size(uint64_t size)
{
    unsigned pad = KAG_SIZE - (size & (KAG_SIZE-1));
    if (pad < 20)
        return pad + KAG_SIZE;
    else
        return pad & (KAG_SIZE-1);
}
