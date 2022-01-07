
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* csize; void* size; } ;
struct TYPE_5__ {int expect; TYPE_1__ current; } ;
typedef TYPE_2__ unpack_user ;
typedef void* int64_t ;


 int UNEXPECTED (char*) ;

 int expect_entry_end ;


__attribute__((used)) static inline int unpack_callback_uint64(unpack_user* u, int64_t d)
{
    switch(u->expect) {
        case 128:
            u->current.size = d;
            u->expect = 129;
            break;
        case 129:
            u->current.csize = d;
            u->expect = expect_entry_end;
            break;
        default:
            UNEXPECTED("integer");
    }
    return 0;
}
