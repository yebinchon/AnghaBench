
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pullup_context {int nplanes; int* stride; int* h; } ;
struct pullup_buffer {unsigned char** planes; } ;


 int memcpy (unsigned char*,unsigned char*,int) ;

__attribute__((used)) static void pullup_copy_field( struct pullup_context * c,
                               struct pullup_buffer * dest,
                               struct pullup_buffer * src,
                               int parity )
{
    int i, j;
    unsigned char *d, *s;
    for( i = 0; i < c->nplanes; i++ )
    {
        s = src->planes[i] + parity*c->stride[i];
        d = dest->planes[i] + parity*c->stride[i];
        for( j = c->h[i]>>1; j; j-- )
        {
            memcpy( d, s, c->stride[i] );
            s += c->stride[i]<<1;
            d += c->stride[i]<<1;
        }
    }
}
