
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int s_rangeblockcnt ;

__attribute__((used)) static inline int rangeblock_idx_valid(int rangeblock_idx)
{
    return (rangeblock_idx >= 0 && rangeblock_idx < s_rangeblockcnt);
}
