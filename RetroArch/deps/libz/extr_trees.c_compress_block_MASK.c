#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uInt ;
struct TYPE_5__ {unsigned int last_lit; unsigned int* d_buf; int* l_buf; scalar_t__ lit_bufsize; scalar_t__ pending; } ;
typedef  TYPE_1__ deflate_state ;
typedef  int /*<<< orphan*/  ct_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 unsigned int D_CODES ; 
 unsigned int END_BLOCK ; 
 unsigned int LITERALS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int* _length_code ; 
 scalar_t__* base_dist ; 
 scalar_t__* base_length ; 
 unsigned int FUNC2 (unsigned int) ; 
 int* extra_dbits ; 
 int* extra_lbits ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,unsigned int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC6(deflate_state *s, const ct_data *ltree, const ct_data *dtree)
   {
      unsigned dist;      /* distance of matched string */
      int lc;             /* match length or unmatched char (if dist == 0) */
      unsigned lx = 0;    /* running index in l_buf */
      unsigned codes;      /* the code to send */
      int extra;          /* number of extra bits to send */

      if (s->last_lit != 0) do {
         dist = s->d_buf[lx];
         lc = s->l_buf[lx++];
         if (dist == 0) {
            FUNC5(s, lc, ltree); /* send a literal byte */
            FUNC1(FUNC3(lc), (stderr," '%c' ", lc));
         } else {
            /* Here, lc is the match length - MIN_MATCH */
            codes = _length_code[lc];
            FUNC5(s, codes + LITERALS+1, ltree); /* send the length code */
            extra = extra_lbits[codes];
            if (extra != 0) {
               lc -= base_length[codes];
               FUNC4(s, lc, extra);       /* send the extra length bits */
            }
            dist--; /* dist is now the match distance - 1 */
            codes = FUNC2(dist);
            FUNC0 (codes < D_CODES, "bad d_code");

            FUNC5(s, codes, dtree);       /* send the distance code */
            extra = extra_dbits[codes];
            if (extra != 0) {
               dist -= base_dist[codes];
               FUNC4(s, dist, extra);   /* send the extra distance bits */
            }
         } /* literal or match pair ? */

         /* Check that the overlay between pending_buf and d_buf+l_buf is ok: */
         FUNC0((uInt)(s->pending) < s->lit_bufsize + 2*lx,
               "pendingBuf overflow");

      } while (lx < s->last_lit);

      FUNC5(s, END_BLOCK, ltree);
   }