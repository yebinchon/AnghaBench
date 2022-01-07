
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GC ;
 int current (int ) ;
 int del_raw (int ) ;

void Cello_Exit(void) {
  del_raw(current(GC));
}
