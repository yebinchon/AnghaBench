
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int chapter; } ;
typedef TYPE_1__ hb_stream_t ;



int hb_stream_chapter( hb_stream_t * src_stream )
{
    return( src_stream->chapter );
}
