
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ stream; } ;
typedef TYPE_1__ hb_bd_t ;


 int hb_stream_close (scalar_t__*) ;

void hb_bd_stop( hb_bd_t * d )
{
    if( d->stream ) hb_stream_close( &d->stream );
}
