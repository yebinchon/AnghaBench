
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint8_t ;


 int AV_WB32 (int const*,int) ;

__attribute__((used)) static void update_size(uint8_t *size, const uint8_t *end)
{
    AV_WB32(size, end-size);
}
