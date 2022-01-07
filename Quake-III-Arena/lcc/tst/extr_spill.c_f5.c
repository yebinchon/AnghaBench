
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* A ;
 int* B ;
 size_t j ;
 size_t k ;
 size_t m ;
 size_t n ;
 int x ;

f5(){
 x=A[k*m]*A[j*m]+B[k*n]*B[j*n];
 x=A[k*m]*B[j*n]-B[k*n]*A[j*m];
}
