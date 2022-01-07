
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t maxcount; } ;
struct arg_end {size_t count; int* error; char const** argval; TYPE_1__ hdr; struct arg_end** parent; } ;


 int ARG_ELIMIT ;

__attribute__((used)) static
void arg_register_error(struct arg_end *end,
                        void *parent,
                        int error,
                        const char *argval)
{

    if (end->count < end->hdr.maxcount)
    {
        end->error[end->count] = error;
        end->parent[end->count] = parent;
        end->argval[end->count] = argval;
        end->count++;
    }
    else
    {
        end->error[end->hdr.maxcount - 1] = ARG_ELIMIT;
        end->parent[end->hdr.maxcount - 1] = end;
        end->argval[end->hdr.maxcount - 1] = ((void*)0);
    }
}
