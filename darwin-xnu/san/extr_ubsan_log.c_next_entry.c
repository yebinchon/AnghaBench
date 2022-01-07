
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ubsan_log_size ;

__attribute__((used)) static inline size_t
next_entry(size_t x)
{
 return (x + 1) % ubsan_log_size;
}
