
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ush ;
typedef long ulg ;
typedef scalar_t__ uch ;
struct TYPE_8__ {size_t last_lit; int matches; int level; int lit_bufsize; TYPE_2__* dyn_dtree; scalar_t__ block_start; scalar_t__ strstart; TYPE_1__* dyn_ltree; scalar_t__* l_buf; scalar_t__* d_buf; } ;
typedef TYPE_3__ deflate_state ;
struct TYPE_7__ {scalar_t__ Freq; } ;
struct TYPE_6__ {int Freq; } ;


 int Assert (int,char*) ;
 int D_CODES ;
 int LITERALS ;
 scalar_t__ MAX_DIST (TYPE_3__*) ;
 scalar_t__ MAX_MATCH ;
 scalar_t__ MIN_MATCH ;
 int Tracev (int ) ;
 int* _length_code ;
 size_t d_code (unsigned int) ;
 long* extra_dbits ;
 int stderr ;

int
_tr_tally(deflate_state *s, unsigned dist, unsigned lc)
{
    s->d_buf[s->last_lit] = (ush)dist;
    s->l_buf[s->last_lit++] = (uch)lc;
    if (dist == 0) {

        s->dyn_ltree[lc].Freq++;
    } else {
        s->matches++;

        dist--;
        Assert((ush)dist < (ush)MAX_DIST(s) &&
               (ush)lc <= (ush)(MAX_MATCH-MIN_MATCH) &&
               (ush)d_code(dist) < (ush)D_CODES, "_tr_tally: bad match");

        s->dyn_ltree[_length_code[lc]+LITERALS+1].Freq++;
        s->dyn_dtree[d_code(dist)].Freq++;
    }
    return (s->last_lit == s->lit_bufsize-1);




}
