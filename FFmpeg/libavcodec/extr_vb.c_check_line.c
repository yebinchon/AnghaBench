
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static inline int check_line(uint8_t *buf, uint8_t *start, uint8_t *end)
{
    return buf >= start && (buf + 4) <= end;
}
