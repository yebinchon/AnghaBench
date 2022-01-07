
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int** r; } ;
typedef TYPE_1__ sdaux_t ;
typedef size_t int8_t ;
typedef size_t int16_t ;


 int sd_update (TYPE_1__ const*,size_t*,int*,int,int) ;

int sd_solve(const sdaux_t *aux, const char *_s)
{
 int i, j, r, c, r2, dir, cand, n = 0, min, hints = 0;
 int8_t sr[729], cr[81];
 uint8_t sc[324];
 int16_t cc[81];
 char out[82];
 for (r = 0; r < 729; ++r) sr[r] = 0;
 for (c = 0; c < 324; ++c) sc[c] = 0<<7|9;
 for (i = 0; i < 81; ++i) {
  int a = _s[i] >= '1' && _s[i] <= '9'? _s[i] - '1' : -1;
  if (a >= 0) sd_update(aux, sr, sc, i * 9 + a, 1);
  if (a >= 0) ++hints;
  cr[i] = cc[i] = -1, out[i] = _s[i];
 }
 for (i = 0, dir = 1, cand = 10<<16|0, out[81] = 0;;) {
  while (i >= 0 && i < 81 - hints) {
   if (dir == 1) {
    min = cand>>16, cc[i] = cand&0xffff;
    if (min > 1) {
     for (c = 0; c < 324; ++c) {
      if (sc[c] < min) {
       min = sc[c], cc[i] = c;
       if (min <= 1) break;
      }
     }
    }
    if (min == 0 || min == 10) cr[i--] = dir = -1;
   }
   c = cc[i];
   if (dir == -1 && cr[i] >= 0) sd_update(aux, sr, sc, aux->r[c][cr[i]], -1);
   for (r2 = cr[i] + 1; r2 < 9; ++r2)
    if (sr[aux->r[c][r2]] == 0) break;
   if (r2 < 9) {
    cand = sd_update(aux, sr, sc, aux->r[c][r2], 1);
    cr[i++] = r2; dir = 1;
   } else cr[i--] = dir = -1;
  }
  if (i < 0) break;
  for (j = 0; j < i; ++j) r = aux->r[cc[j]][cr[j]], out[r/9] = r%9 + '1';

  ++n; --i; dir = -1;
 }
 return n;
}
