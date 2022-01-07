
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pullup_frame {int dummy; } ;
struct pullup_context {int metric_plane; int nbuffers; int metric_w; int* w; int junk_left; int junk_right; int metric_h; int* h; int junk_top; int junk_bottom; int metric_offset; int* bpp; int* stride; int metric_len; scalar_t__ format; int var; int comb; int diff; TYPE_1__* frame; int head; void* buffers; } ;
struct pullup_buffer {int dummy; } ;
struct TYPE_2__ {void* ifields; } ;


 scalar_t__ PULLUP_FMT_Y ;
 void* calloc (int,int) ;
 int pullup_diff_y ;
 int pullup_licomb_y ;
 int pullup_make_field_queue (struct pullup_context*,int) ;
 int pullup_var_y ;

void pullup_init_context( struct pullup_context * c )
{
    int mp = c->metric_plane;
    if ( c->nbuffers < 10 )
    {
        c->nbuffers = 10;
    }
    c->buffers = calloc( c->nbuffers, sizeof (struct pullup_buffer) );

    c->metric_w = (c->w[mp] - ((c->junk_left + c->junk_right) << 3)) >> 3;
    c->metric_h = (c->h[mp] - ((c->junk_top + c->junk_bottom) << 1)) >> 3;
    c->metric_offset = c->junk_left*c->bpp[mp] + (c->junk_top<<1)*c->stride[mp];
    c->metric_len = c->metric_w * c->metric_h;

    c->head = pullup_make_field_queue( c, 8 );

    c->frame = calloc( 1, sizeof (struct pullup_frame) );
    c->frame->ifields = calloc( 3, sizeof (struct pullup_buffer *) );

    if( c->format == PULLUP_FMT_Y )
    {
        c->diff = pullup_diff_y;
        c->comb = pullup_licomb_y;
        c->var = pullup_var_y;
    }
}
