#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uInt ;
struct TYPE_7__ {scalar_t__ lookahead; scalar_t__ match_length; scalar_t__ strstart; scalar_t__* window; int window_size; scalar_t__ last_lit; scalar_t__ insert; } ;
typedef  TYPE_1__ deflate_state ;
typedef  int /*<<< orphan*/  block_state ;
typedef  scalar_t__ Bytef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 scalar_t__ MAX_MATCH ; 
 scalar_t__ MIN_MATCH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int Z_FINISH ; 
 int Z_NO_FLUSH ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__,int) ; 
 int /*<<< orphan*/  block_done ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  finish_done ; 
 int /*<<< orphan*/  need_more ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static block_state FUNC6(deflate_state *s, int flush)
{
   int bflush;             /* set if current block must be flushed */
   uInt prev;              /* byte at distance one to match */
   Bytef *scan, *strend;   /* scan goes up to strend for length of run */

   for (;;) {
      /* Make sure that we always have enough lookahead, except
       * at the end of the input file. We need MAX_MATCH bytes
       * for the longest run, plus one for the unrolled loop.
       */
      if (s->lookahead <= MAX_MATCH) {
         FUNC5(s);
         if (s->lookahead <= MAX_MATCH && flush == Z_NO_FLUSH) {
            return need_more;
         }
         if (s->lookahead == 0) break; /* flush the current block */
      }

      /* See how many times the previous byte repeats */
      s->match_length = 0;
      if (s->lookahead >= MIN_MATCH && s->strstart > 0) {
         scan = s->window + s->strstart - 1;
         prev = *scan;
         if (prev == *++scan && prev == *++scan && prev == *++scan) {
            strend = s->window + s->strstart + MAX_MATCH;
            do {
            } while (prev == *++scan && prev == *++scan &&
                  prev == *++scan && prev == *++scan &&
                  prev == *++scan && prev == *++scan &&
                  prev == *++scan && prev == *++scan &&
                  scan < strend);
            s->match_length = MAX_MATCH - (int)(strend - scan);
            if (s->match_length > s->lookahead)
               s->match_length = s->lookahead;
         }
         FUNC0(scan <= s->window+(uInt)(s->window_size-1), "wild scan");
      }

      /* Emit match if have run of MIN_MATCH or longer, else emit literal */
      if (s->match_length >= MIN_MATCH) {
         FUNC3(s, 1, s->match_length - MIN_MATCH, bflush);

         s->lookahead -= s->match_length;
         s->strstart += s->match_length;
         s->match_length = 0;
      } else {
         /* No match, output a literal byte */
         FUNC2((stderr,"%c", s->window[s->strstart]));
         FUNC4 (s, s->window[s->strstart], bflush);
         s->lookahead--;
         s->strstart++;
      }
      if (bflush) FUNC1(s, 0);
   }
   s->insert = 0;
   if (flush == Z_FINISH) {
      FUNC1(s, 1);
      return finish_done;
   }
   if (s->last_lit)
      FUNC1(s, 0);
   return block_done;
}