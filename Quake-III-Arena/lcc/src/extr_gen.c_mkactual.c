
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int argoffset ;
 int roundup (int,int) ;

int mkactual(int align, int size) {
 int n = roundup(argoffset, align);

 argoffset = n + size;
 return n;
}
