
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inpcb {int inp_flags2; } ;
typedef int boolean_t ;


 int FALSE ;
 int INP2_INTCOPROC_ALLOWED ;
 int TRUE ;

boolean_t
inp_get_intcoproc_allowed(struct inpcb *inp)
{
 return (inp->inp_flags2 & INP2_INTCOPROC_ALLOWED) ? TRUE : FALSE;
}
