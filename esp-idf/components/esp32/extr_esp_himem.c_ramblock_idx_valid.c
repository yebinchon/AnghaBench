
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int s_ramblockcnt ;

__attribute__((used)) static inline int ramblock_idx_valid(int ramblock_idx)
{
    return (ramblock_idx >= 0 && ramblock_idx < s_ramblockcnt);
}
