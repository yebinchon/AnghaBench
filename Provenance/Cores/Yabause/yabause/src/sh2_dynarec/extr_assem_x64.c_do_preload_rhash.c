
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emit_movimm (int,int) ;

void do_preload_rhash(int r) {
  emit_movimm(0xf8,r);
}
