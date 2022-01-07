
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint16_t ;
struct Sudoku {size_t** c; int** r; } ;
typedef scalar_t__ int8_t ;



__attribute__((used)) static int Sudoku_Update(
  struct Sudoku* aux, int8_t sr[729], uint8_t sc[324], int r, int v) {

 int c2, min = 10, min_c = 0;
 for (c2 = 0; c2 < 4; ++c2) sc[aux->c[r][c2]] += v<<7;
 for (c2 = 0; c2 < 4; ++c2) {
  int r2, rr, cc2, c = aux->c[r][c2];
  if (v > 0) {
   for (r2 = 0; r2 < 9; ++r2) {
    if (sr[rr = aux->r[c][r2]]++ != 0) continue;
    for (cc2 = 0; cc2 < 4; ++cc2) {
     int cc = aux->c[rr][cc2];
     if (--sc[cc] < min)
      min = sc[cc], min_c = cc;
    }
   }
  } else {
   const uint16_t *p;
   for (r2 = 0; r2 < 9; ++r2) {
    if (--sr[rr = aux->r[c][r2]] != 0) continue;
    p = aux->c[rr]; ++sc[p[0]]; ++sc[p[1]]; ++sc[p[2]]; ++sc[p[3]];
   }
  }
 }
 return min<<16 | min_c;
}
