
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int key; } ;
struct TYPE_5__ {int expect; int inside_chunks; int has_chunks; int part; TYPE_1__ current; } ;
typedef TYPE_2__ unpack_user ;


 int SET_LAST_ERROR (char*) ;
 int expect_chunks_begin ;

 void* expect_map_item_end ;

 int expect_size ;
 int memcmp (char*,char const*,int) ;
 int memcpy (int ,char const*,int) ;

__attribute__((used)) static inline int unpack_callback_raw(unpack_user* u, const char* b, const char* p, unsigned int length)
{


    (void)b;

    switch(u->expect) {
    case 129:
        if(length != 32) {
            SET_LAST_ERROR("Incorrect key length");
            return -1;
        }
        memcpy(u->current.key, p, 32);
        u->expect = expect_size;
        break;
    case 128:
        if(length == 6 && !memcmp("chunks", p, 6)) {
            u->expect = expect_chunks_begin;
            u->inside_chunks = 1;
            u->has_chunks = 1;
        } else if(length == 4 && !memcmp("part", p, 4)) {
            u->expect = expect_map_item_end;
            u->part = 1;
        } else {
            u->expect = expect_map_item_end;
        }
        break;
    default:
        if(u->inside_chunks) {
            SET_LAST_ERROR("Unexpected bytes in chunks structure");
            return -1;
        }
    }
    return 0;
}
