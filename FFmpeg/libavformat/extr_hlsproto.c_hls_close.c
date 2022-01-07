
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_7__ {int seg_hd; } ;
typedef TYPE_2__ HLSContext ;


 int ffurl_close (int ) ;
 int free_segment_list (TYPE_2__*) ;
 int free_variant_list (TYPE_2__*) ;

__attribute__((used)) static int hls_close(URLContext *h)
{
    HLSContext *s = h->priv_data;

    free_segment_list(s);
    free_variant_list(s);
    ffurl_close(s->seg_hd);
    return 0;
}
