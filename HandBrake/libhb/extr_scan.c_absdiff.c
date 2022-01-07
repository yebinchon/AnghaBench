
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int absdiff( int x, int y )
{
    return x < y ? y - x : x - y;
}
