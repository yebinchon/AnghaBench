
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int pnm_space(int c)
{
    return c == ' ' || c == '\n' || c == '\r' || c == '\t';
}
