
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int is_space(char c)
{
    return c == ' ' || c == '\t' || c == '\r';
}
