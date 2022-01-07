
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void finish_bitfield(int *off, int *bitoff) {
    *off += (*bitoff + 7) / 8;
    *bitoff = 0;
}
