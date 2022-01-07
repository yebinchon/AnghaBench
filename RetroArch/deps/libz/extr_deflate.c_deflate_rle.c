
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uInt ;
struct TYPE_7__ {scalar_t__ lookahead; scalar_t__ match_length; scalar_t__ strstart; scalar_t__* window; int window_size; scalar_t__ last_lit; scalar_t__ insert; } ;
typedef TYPE_1__ deflate_state ;
typedef int block_state ;
typedef scalar_t__ Bytef ;


 int Assert (int,char*) ;
 int FLUSH_BLOCK (TYPE_1__*,int) ;
 scalar_t__ MAX_MATCH ;
 scalar_t__ MIN_MATCH ;
 int Tracevv (int ) ;
 int Z_FINISH ;
 int Z_NO_FLUSH ;
 int _tr_tally_dist (TYPE_1__*,int,scalar_t__,int) ;
 int _tr_tally_lit (TYPE_1__*,scalar_t__,int) ;
 int block_done ;
 int fill_window (TYPE_1__*) ;
 int finish_done ;
 int need_more ;
 int stderr ;

__attribute__((used)) static block_state deflate_rle(deflate_state *s, int flush)
{
   int bflush;
   uInt prev;
   Bytef *scan, *strend;

   for (;;) {




      if (s->lookahead <= MAX_MATCH) {
         fill_window(s);
         if (s->lookahead <= MAX_MATCH && flush == Z_NO_FLUSH) {
            return need_more;
         }
         if (s->lookahead == 0) break;
      }


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
         Assert(scan <= s->window+(uInt)(s->window_size-1), "wild scan");
      }


      if (s->match_length >= MIN_MATCH) {
         _tr_tally_dist(s, 1, s->match_length - MIN_MATCH, bflush);

         s->lookahead -= s->match_length;
         s->strstart += s->match_length;
         s->match_length = 0;
      } else {

         Tracevv((stderr,"%c", s->window[s->strstart]));
         _tr_tally_lit (s, s->window[s->strstart], bflush);
         s->lookahead--;
         s->strstart++;
      }
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
