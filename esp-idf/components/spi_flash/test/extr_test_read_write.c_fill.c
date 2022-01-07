
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;



__attribute__((used)) static void fill(char *dest, int32_t start, int32_t len)
{
    for (int32_t i = 0; i < len; i++) {
        *(dest + i) = (char) (start + i);
    }
}
