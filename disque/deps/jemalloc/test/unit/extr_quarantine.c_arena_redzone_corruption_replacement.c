
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int detected_redzone_corruption ;

__attribute__((used)) static void
arena_redzone_corruption_replacement(void *ptr, size_t usize, bool after,
    size_t offset, uint8_t byte)
{

 detected_redzone_corruption = 1;
}
