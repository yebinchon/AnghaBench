
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int* thd_layout ;

__attribute__((used)) static inline uint64_t truehd_layout(int chanmap)
{
    int i;
    uint64_t layout = 0;

    for (i = 0; i < 13; i++)
        layout |= thd_layout[i] * ((chanmap >> i) & 1);

    return layout;
}
