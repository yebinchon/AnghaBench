
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_2__ {int sb_flags; } ;
struct socket {TYPE_1__ so_snd; } ;
typedef int int32_t ;


 int SB_SNDBYTE_CNT ;
 int inp_decr_sndbytes_unsent (struct socket*,int ) ;
 int inp_get_sndbytes_allunsent (struct socket*,int ) ;

inline void
inp_decr_sndbytes_allunsent(struct socket *so, u_int32_t th_ack)
{
 int32_t len;

 if (so == ((void*)0) || !(so->so_snd.sb_flags & SB_SNDBYTE_CNT))
  return;

 len = inp_get_sndbytes_allunsent(so, th_ack);
 inp_decr_sndbytes_unsent(so, len);
}
