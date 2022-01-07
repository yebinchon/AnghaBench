
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LZW_HASH_SIZE ;

__attribute__((used)) static inline int hashOffset(const int head)
{
    return head ? LZW_HASH_SIZE - head : 1;
}
