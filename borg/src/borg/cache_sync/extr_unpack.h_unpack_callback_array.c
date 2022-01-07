
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int expect; int level; int inside_chunks; } ;
typedef TYPE_1__ unpack_user ;


 int SET_LAST_ERROR (char*) ;


 int expect_key ;

__attribute__((used)) static inline int unpack_callback_array(unpack_user* u, unsigned int n)
{
    switch(u->expect) {
    case 129:


        u->expect = 128;
        break;
    case 128:


        if(n != 3) {
            SET_LAST_ERROR("Invalid chunk list entry length");
            return -1;
        }
        u->expect = expect_key;
        break;
    default:
        if(u->inside_chunks) {
            SET_LAST_ERROR("Unexpected array start");
            return -1;
        } else {
            u->level++;
            return 0;
        }
    }
    return 0;
}
