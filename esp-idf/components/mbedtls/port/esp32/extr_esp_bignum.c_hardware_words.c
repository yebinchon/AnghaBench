
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline size_t hardware_words(size_t words)
{
    return (words + 0xF) & ~0xF;
}
