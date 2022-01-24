#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ lookahead; size_t strstart; scalar_t__ last_lit; scalar_t__ insert; int /*<<< orphan*/ * window; scalar_t__ match_length; } ;
typedef  TYPE_1__ deflate_state ;
typedef  int /*<<< orphan*/  block_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int Z_FINISH ; 
 int Z_NO_FLUSH ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  block_done ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  finish_done ; 
 int /*<<< orphan*/  need_more ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static block_state FUNC4(deflate_state *s, int flush)
{
   int bflush;             /* set if current block must be flushed */

   for (;;) {
      /* Make sure that we have a literal to write. */
      if (s->lookahead == 0) {
         FUNC3(s);
         if (s->lookahead == 0) {
            if (flush == Z_NO_FLUSH)
               return need_more;
            break;      /* flush the current block */
         }
      }

      /* Output a literal byte */
      s->match_length = 0;
      FUNC1((stderr,"%c", s->window[s->strstart]));
      FUNC2 (s, s->window[s->strstart], bflush);
      s->lookahead--;
      s->strstart++;
      if (bflush) FUNC0(s, 0);
   }
   s->insert = 0;
   if (flush == Z_FINISH) {
      FUNC0(s, 1);
      return finish_done;
   }
   if (s->last_lit)
      FUNC0(s, 0);
   return block_done;
}