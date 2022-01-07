
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* update_altref; void* update_golden; int c; } ;
typedef TYPE_1__ VP8Context ;
typedef int VP56RangeCoder ;


 int VP56_FRAME_GOLDEN ;
 int VP56_FRAME_GOLDEN2 ;
 void* ref_to_update (TYPE_1__*,int,int ) ;
 int vp8_rac_get (int *) ;

__attribute__((used)) static void update_refs(VP8Context *s)
{
    VP56RangeCoder *c = &s->c;

    int update_golden = vp8_rac_get(c);
    int update_altref = vp8_rac_get(c);

    s->update_golden = ref_to_update(s, update_golden, VP56_FRAME_GOLDEN);
    s->update_altref = ref_to_update(s, update_altref, VP56_FRAME_GOLDEN2);
}
