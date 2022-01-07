
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emit_rorimm (int,int,int) ;

void emit_rotl(int t)
{
  emit_rorimm(t,31,t);
}
