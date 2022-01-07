
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int wp_log2 (int ) ;

__attribute__((used)) static int log2s(int32_t value)
{
    return (value < 0) ? -wp_log2(-value) : wp_log2(value);
}
