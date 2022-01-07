
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Sudoku {int dummy; } ;


 int Sudoku ;
 int Sudoku_Solve (struct Sudoku*,char*) ;
 int del (struct Sudoku*) ;
 scalar_t__ fgets (char*,int,int ) ;
 struct Sudoku* new (int ) ;
 int stdin ;
 int strlen (char*) ;

int main(int argc, char** argv) {
 struct Sudoku* a = new(Sudoku);
 char buf[1024];
 while (fgets(buf, 1024, stdin) != 0) {
  if (strlen(buf) < 81) continue;
  Sudoku_Solve(a, buf);

 }
 del(a);
 return 0;
}
