
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int t_flagsext; } ;
typedef int boolean_t ;


 int FALSE ;
 int TF_FASTOPEN ;
 int TRUE ;

boolean_t
tfo_enabled(const struct tcpcb *tp)
{
 return ((tp->t_flagsext & TF_FASTOPEN)? TRUE : FALSE);
}
