
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ushf ;
typedef scalar_t__ ush ;
typedef scalar_t__ ulg ;
typedef scalar_t__ uInt ;
struct TYPE_4__ {unsigned int max_chain_length; scalar_t__* window; int strstart; int prev_length; int nice_match; scalar_t__* prev; scalar_t__ w_mask; int hash_bits; int good_match; scalar_t__ lookahead; int window_size; scalar_t__ match_start; } ;
typedef TYPE_1__ deflate_state ;
typedef scalar_t__ Posf ;
typedef scalar_t__ IPos ;
typedef scalar_t__ Bytef ;
typedef scalar_t__ Byte ;


 int Assert (int,char*) ;
 scalar_t__ MAX_DIST (TYPE_1__*) ;
 int MAX_MATCH ;
 scalar_t__ MIN_LOOKAHEAD ;
 scalar_t__ NIL ;

__attribute__((used)) static uInt longest_match(deflate_state *s, IPos cur_match)
{
   unsigned chain_length = s->max_chain_length;
   register Bytef *scan = s->window + s->strstart;
   register Bytef *match;
   register int len;
   int best_len = s->prev_length;
   int nice_match = s->nice_match;
   IPos limit = s->strstart > (IPos)MAX_DIST(s) ?
      s->strstart - (IPos)MAX_DIST(s) : NIL;



   Posf *prev = s->prev;
   uInt wmask = s->w_mask;
   register Bytef *strend = s->window + s->strstart + MAX_MATCH;
   register Byte scan_end1 = scan[best_len-1];
   register Byte scan_end = scan[best_len];





   Assert(s->hash_bits >= 8 && MAX_MATCH == 258, "Code too clever");


   if (s->prev_length >= s->good_match) {
      chain_length >>= 2;
   }



   if ((uInt)nice_match > s->lookahead) nice_match = s->lookahead;

   Assert((ulg)s->strstart <= s->window_size-MIN_LOOKAHEAD, "need lookahead");

   do {
      Assert(cur_match < s->strstart, "no future");
      match = s->window + cur_match;
      if (match[best_len] != scan_end ||
            match[best_len-1] != scan_end1 ||
            *match != *scan ||
            *++match != scan[1]) continue;







      scan += 2, match++;
      Assert(*scan == *match, "match[2]?");




      do {
      } while (*++scan == *++match && *++scan == *++match &&
            *++scan == *++match && *++scan == *++match &&
            *++scan == *++match && *++scan == *++match &&
            *++scan == *++match && *++scan == *++match &&
            scan < strend);

      Assert(scan <= s->window+(unsigned)(s->window_size-1), "wild scan");

      len = MAX_MATCH - (int)(strend - scan);
      scan = strend - MAX_MATCH;



      if (len > best_len) {
         s->match_start = cur_match;
         best_len = len;
         if (len >= nice_match) break;



         scan_end1 = scan[best_len-1];
         scan_end = scan[best_len];

      }
   } while ((cur_match = prev[cur_match & wmask]) > limit
         && --chain_length != 0);

   if ((uInt)best_len <= s->lookahead) return (uInt)best_len;
   return s->lookahead;
}
