
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Sudoku* var ;
struct Sudoku {int** c; int** r; } ;
typedef scalar_t__ int8_t ;



__attribute__((used)) static void Sudoku_New(var self, var args) {

 struct Sudoku* a = self;
 int i, j, k, r, c, c2;
 int8_t nr[324];
 for (i = r = 0; i < 9; ++i)
  for (j = 0; j < 9; ++j)
   for (k = 0; k < 9; ++k)
    a->c[r][0] = 9 * i + j,
    a->c[r][1] = (i/3*3 + j/3) * 9 + k + 81,
    a->c[r][2] = 9 * i + k + 162,
    a->c[r][3] = 9 * j + k + 243,
    ++r;
 for (c = 0; c < 324; ++c) nr[c] = 0;
 for (r = 0; r < 729; ++r)
  for (c2 = 0; c2 < 4; ++c2)
   k = a->c[r][c2], a->r[k][nr[k]++] = r;

}
