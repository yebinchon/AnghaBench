
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inpcb {int inp_flags2; } ;
typedef int boolean_t ;


 int FALSE ;
 int INP2_AWDL_UNRESTRICTED ;
 int TRUE ;

boolean_t
inp_get_awdl_unrestricted(struct inpcb *inp)
{
 return (inp->inp_flags2 & INP2_AWDL_UNRESTRICTED) ? TRUE : FALSE;
}
