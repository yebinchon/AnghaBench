
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int map_generation; int map; } ;
typedef TYPE_1__ MotionEstContext ;


 int ME_MAP_MV_BITS ;
 int ME_MAP_SIZE ;
 int memset (int ,int ,int) ;

__attribute__((used)) static inline unsigned update_map_generation(MotionEstContext *c)
{
    c->map_generation+= 1<<(ME_MAP_MV_BITS*2);
    if(c->map_generation==0){
        c->map_generation= 1<<(ME_MAP_MV_BITS*2);
        memset(c->map, 0, sizeof(uint32_t)*ME_MAP_SIZE);
    }
    return c->map_generation;
}
