
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ LZW_HASH_SIZE ;

__attribute__((used)) static inline int hashNext(int head, const int offset)
{
    head -= offset;
    if(head < 0)
        head += LZW_HASH_SIZE;
    return head;
}
