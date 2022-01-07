
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ lookahead; size_t strstart; scalar_t__ last_lit; scalar_t__ insert; int * window; scalar_t__ match_length; } ;
typedef TYPE_1__ deflate_state ;
typedef int block_state ;


 int FLUSH_BLOCK (TYPE_1__*,int) ;
 int Tracevv (int ) ;
 int Z_FINISH ;
 int Z_NO_FLUSH ;
 int _tr_tally_lit (TYPE_1__*,int ,int) ;
 int block_done ;
 int fill_window (TYPE_1__*) ;
 int finish_done ;
 int need_more ;
 int stderr ;

__attribute__((used)) static block_state deflate_huff(deflate_state *s, int flush)
{
   int bflush;

   for (;;) {

      if (s->lookahead == 0) {
         fill_window(s);
         if (s->lookahead == 0) {
            if (flush == Z_NO_FLUSH)
               return need_more;
            break;
         }
      }


      s->match_length = 0;
      Tracevv((stderr,"%c", s->window[s->strstart]));
      _tr_tally_lit (s, s->window[s->strstart], bflush);
      s->lookahead--;
      s->strstart++;
      if (bflush) FLUSH_BLOCK(s, 0);
   }
   s->insert = 0;
   if (flush == Z_FINISH) {
      FLUSH_BLOCK(s, 1);
      return finish_done;
   }
   if (s->last_lit)
      FLUSH_BLOCK(s, 0);
   return block_done;
}
