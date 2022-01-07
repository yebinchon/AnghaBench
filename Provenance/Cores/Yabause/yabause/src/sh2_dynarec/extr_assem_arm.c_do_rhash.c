
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emit_andimm (int,int,int) ;

void do_rhash(int rs,int rh) {
  emit_andimm(rs,0xf8,rh);
}
