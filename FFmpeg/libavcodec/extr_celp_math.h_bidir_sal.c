
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int bidir_sal(int value, int offset)
{
    if(offset < 0) return value >> -offset;
    else return value << offset;
}
