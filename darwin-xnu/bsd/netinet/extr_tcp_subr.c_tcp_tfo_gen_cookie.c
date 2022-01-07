
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct inpcb {int inp_vflag; int inp_faddr; int in6p_faddr; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;


 int CCAES_BLOCK_SIZE ;
 int INP_IPV6 ;
 int VERIFY (int) ;
 int aes_encrypt_cbc (int *,int *,int,int *,int *) ;
 int bzero (int *,int) ;
 int memcpy (int *,int *,int) ;
 int tfo_ctx ;

void
tcp_tfo_gen_cookie(struct inpcb *inp, u_char *out, size_t blk_size)
{
 u_char in[CCAES_BLOCK_SIZE];




 VERIFY(blk_size == CCAES_BLOCK_SIZE);

 bzero(&in[0], CCAES_BLOCK_SIZE);
 bzero(&out[0], CCAES_BLOCK_SIZE);






  memcpy(in, &inp->inp_faddr, sizeof(struct in_addr));

 aes_encrypt_cbc(in, ((void*)0), 1, out, &tfo_ctx);
}
