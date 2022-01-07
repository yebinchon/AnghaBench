
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int level; int expect; } ;
typedef TYPE_1__ unpack_user ;


 int SET_LAST_ERROR (char*) ;

 int expect_map_key ;

__attribute__((used)) static inline int unpack_callback_map_item(unpack_user* u, unsigned int current)
{
    (void)u; (void)current;

    if(u->level == 1) {
        switch(u->expect) {
        case 128:
            u->expect = expect_map_key;
            break;
        default:
            SET_LAST_ERROR("Unexpected map item");
            return -1;
        }
    }
    return 0;
}
