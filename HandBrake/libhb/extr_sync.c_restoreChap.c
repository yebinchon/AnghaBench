
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ new_chap; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_2__ video; } ;
typedef TYPE_3__ sync_stream_t ;
struct TYPE_7__ {scalar_t__ new_chap; } ;
struct TYPE_10__ {TYPE_1__ s; } ;
typedef TYPE_4__ hb_buffer_t ;


 scalar_t__ SYNC_TYPE_VIDEO ;

__attribute__((used)) static void restoreChap( sync_stream_t * stream, hb_buffer_t * buf )
{
    if (stream->type != SYNC_TYPE_VIDEO || buf == ((void*)0))
    {
        return;
    }
    if (stream->video.new_chap > 0 && buf->s.new_chap <= 0)
    {
        buf->s.new_chap = stream->video.new_chap;
        stream->video.new_chap = 0;
    }
}
