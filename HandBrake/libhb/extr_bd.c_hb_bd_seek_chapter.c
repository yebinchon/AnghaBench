
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int next_chap; int stream; int bd; } ;
typedef TYPE_1__ hb_bd_t ;


 int bd_seek_chapter (int ,int) ;
 int hb_ts_stream_reset (int ) ;

int hb_bd_seek_chapter( hb_bd_t * d, int c )
{
    d->next_chap = c;
    bd_seek_chapter( d->bd, c - 1 );
    hb_ts_stream_reset(d->stream);
    return 1;
}
