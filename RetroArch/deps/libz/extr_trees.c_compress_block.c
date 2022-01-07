
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uInt ;
struct TYPE_5__ {unsigned int last_lit; unsigned int* d_buf; int* l_buf; scalar_t__ lit_bufsize; scalar_t__ pending; } ;
typedef TYPE_1__ deflate_state ;
typedef int ct_data ;


 int Assert (int,char*) ;
 unsigned int D_CODES ;
 unsigned int END_BLOCK ;
 unsigned int LITERALS ;
 int Tracecv (int ,int ) ;
 unsigned int* _length_code ;
 scalar_t__* base_dist ;
 scalar_t__* base_length ;
 unsigned int d_code (unsigned int) ;
 int* extra_dbits ;
 int* extra_lbits ;
 int isgraph (int) ;
 int send_bits (TYPE_1__*,unsigned int,int) ;
 int send_code (TYPE_1__*,unsigned int,int const*) ;
 int stderr ;

__attribute__((used)) static void compress_block(deflate_state *s, const ct_data *ltree, const ct_data *dtree)
   {
      unsigned dist;
      int lc;
      unsigned lx = 0;
      unsigned codes;
      int extra;

      if (s->last_lit != 0) do {
         dist = s->d_buf[lx];
         lc = s->l_buf[lx++];
         if (dist == 0) {
            send_code(s, lc, ltree);
            Tracecv(isgraph(lc), (stderr," '%c' ", lc));
         } else {

            codes = _length_code[lc];
            send_code(s, codes + LITERALS+1, ltree);
            extra = extra_lbits[codes];
            if (extra != 0) {
               lc -= base_length[codes];
               send_bits(s, lc, extra);
            }
            dist--;
            codes = d_code(dist);
            Assert (codes < D_CODES, "bad d_code");

            send_code(s, codes, dtree);
            extra = extra_dbits[codes];
            if (extra != 0) {
               dist -= base_dist[codes];
               send_bits(s, dist, extra);
            }
         }


         Assert((uInt)(s->pending) < s->lit_bufsize + 2*lx,
               "pendingBuf overflow");

      } while (lx < s->last_lit);

      send_code(s, END_BLOCK, ltree);
   }
