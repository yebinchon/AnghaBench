
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 unsigned int av_log2 (scalar_t__) ;

__attribute__((used)) static int is_ebml_id_valid(uint32_t id)
{



    unsigned int bits = av_log2(id);
    return id && (bits + 7) / 8 == (8 - bits % 8);
}
