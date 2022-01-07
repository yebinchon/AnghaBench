
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;


 int Matrix_Gen (int) ;
 int Matrix_Mul (int ,int ) ;
 int del (int ) ;

int main(int argc, char *argv[]) {
 int n = 300;
 n = (n/2) * 2;
 var a = Matrix_Gen(n);
 var b = Matrix_Gen(n);
 var m = Matrix_Mul(a, b);
 del(a); del(b); del(m);
 return 0;
}
