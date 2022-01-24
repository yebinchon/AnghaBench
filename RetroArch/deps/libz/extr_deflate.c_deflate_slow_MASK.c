#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uInt ;
struct TYPE_13__ {scalar_t__ lookahead; scalar_t__ strstart; int prev_length; int match_length; scalar_t__ prev_match; scalar_t__ match_start; scalar_t__ max_lazy_match; scalar_t__ strategy; int match_available; int insert; scalar_t__ last_lit; int /*<<< orphan*/ * window; TYPE_1__* strm; } ;
typedef  TYPE_2__ deflate_state ;
typedef  int /*<<< orphan*/  block_state ;
struct TYPE_12__ {scalar_t__ avail_out; } ;
typedef  scalar_t__ IPos ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 scalar_t__ MIN_LOOKAHEAD ; 
 int MIN_MATCH ; 
 scalar_t__ NIL ; 
 scalar_t__ TOO_FAR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ Z_FILTERED ; 
 int Z_FINISH ; 
 int Z_NO_FLUSH ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  block_done ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  finish_done ; 
 int FUNC9 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  need_more ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static block_state FUNC10(deflate_state *s, int flush)
{
   IPos hash_head;          /* head of hash chain */
   int bflush;              /* set if current block must be flushed */

   /* Process the input block. */
   for (;;) {
      /* Make sure that we always have enough lookahead, except
       * at the end of the input file. We need MAX_MATCH bytes
       * for the next match, plus MIN_MATCH bytes to insert the
       * string following the next match.
       */
      if (s->lookahead < MIN_LOOKAHEAD) {
         FUNC8(s);
         if (s->lookahead < MIN_LOOKAHEAD && flush == Z_NO_FLUSH) {
            return need_more;
         }
         if (s->lookahead == 0) break; /* flush the current block */
      }

      /* Insert the string window[strstart .. strstart+2] in the
       * dictionary, and set hash_head to the head of the hash chain:
       */
      hash_head = NIL;
      if (s->lookahead >= MIN_MATCH) {
         FUNC3(s, s->strstart, hash_head);
      }

      /* Find the longest match, discarding those <= prev_length.
      */
      s->prev_length = s->match_length, s->prev_match = s->match_start;
      s->match_length = MIN_MATCH-1;

      if (hash_head != NIL && s->prev_length < s->max_lazy_match &&
            s->strstart - hash_head <= FUNC4(s)) {
         /* To simplify the code, we prevent matches with the string
          * of window index 0 (in particular we have to avoid a match
          * of the string with itself at the start of the input file).
          */
         s->match_length = FUNC9 (s, hash_head);
         /* longest_match() sets match_start */

         if (s->match_length <= 5 && (s->strategy == Z_FILTERED
#if TOO_FAR <= 32767
                  || (s->match_length == MIN_MATCH &&
                     s->strstart - s->match_start > TOO_FAR)
#endif
                  )) {

            /* If prev_match is also MIN_MATCH, match_start is garbage
             * but we will ignore the current match anyway.
             */
            s->match_length = MIN_MATCH-1;
         }
      }
      /* If there was a match at the previous step and the current
       * match is not better, output the previous match:
       */
      if (s->prev_length >= MIN_MATCH && s->match_length <= s->prev_length) {
         uInt max_insert = s->strstart + s->lookahead - MIN_MATCH;
         /* Do not insert strings in hash table beyond this. */

         FUNC6(s, s->strstart -1 - s->prev_match,
               s->prev_length - MIN_MATCH, bflush);

         /* Insert in hash table all strings up to the end of the match.
          * strstart-1 and strstart are already inserted. If there is not
          * enough lookahead, the last two strings are not inserted in
          * the hash table.
          */
         s->lookahead -= s->prev_length-1;
         s->prev_length -= 2;
         do {
            if (++s->strstart <= max_insert) {
               FUNC3(s, s->strstart, hash_head);
            }
         } while (--s->prev_length != 0);
         s->match_available = 0;
         s->match_length = MIN_MATCH-1;
         s->strstart++;

         if (bflush) FUNC1(s, 0);

      } else if (s->match_available) {
         /* If there was no match at the previous position, output a
          * single literal. If there was a match but the current match
          * is longer, truncate the previous match to a single literal.
          */
         FUNC5((stderr,"%c", s->window[s->strstart-1]));
         FUNC7(s, s->window[s->strstart-1], bflush);
         if (bflush) {
            FUNC2(s, 0);
         }
         s->strstart++;
         s->lookahead--;
         if (s->strm->avail_out == 0) return need_more;
      } else {
         /* There is no previous match to compare with, wait for
          * the next step to decide.
          */
         s->match_available = 1;
         s->strstart++;
         s->lookahead--;
      }
   }
   FUNC0 (flush != Z_NO_FLUSH, "no flush?");
   if (s->match_available) {
      FUNC5((stderr,"%c", s->window[s->strstart-1]));
      FUNC7(s, s->window[s->strstart-1], bflush);
      s->match_available = 0;
   }
   s->insert = s->strstart < MIN_MATCH-1 ? s->strstart : MIN_MATCH-1;
   if (flush == Z_FINISH) {
      FUNC1(s, 1);
      return finish_done;
   }
   if (s->last_lit)
      FUNC1(s, 0);
   return block_done;
}