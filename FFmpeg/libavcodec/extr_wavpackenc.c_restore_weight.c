
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int8_t ;



__attribute__((used)) static int restore_weight(int8_t weight)
{
    int result = 8 * weight;

    if (result > 0)
        result += (result + 64) >> 7;

    return result;
}
