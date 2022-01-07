
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int const LZW_HASH_SHIFT ;
 int LZW_HASH_SIZE ;
 int av_assert2 (int) ;

__attribute__((used)) static inline int hash(int head, const int add)
{
    head ^= (add << LZW_HASH_SHIFT);
    if (head >= LZW_HASH_SIZE)
        head -= LZW_HASH_SIZE;
    av_assert2(head >= 0 && head < LZW_HASH_SIZE);
    return head;
}
