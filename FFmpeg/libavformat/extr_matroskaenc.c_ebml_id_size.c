
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int av_log2 (scalar_t__) ;

__attribute__((used)) static int ebml_id_size(uint32_t id)
{
    return (av_log2(id + 1) - 1) / 7 + 1;
}
