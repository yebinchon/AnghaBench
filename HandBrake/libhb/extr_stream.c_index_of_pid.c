
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int count; TYPE_1__* list; } ;
struct TYPE_7__ {TYPE_2__ ts; } ;
typedef TYPE_3__ hb_stream_t ;
struct TYPE_5__ {int pid; } ;



__attribute__((used)) static int index_of_pid(hb_stream_t *stream, int pid)
{
    int i;

    for ( i = 0; i < stream->ts.count; ++i )
    {
        if ( pid == stream->ts.list[i].pid )
        {
            return i;
        }
    }

    return -1;
}
