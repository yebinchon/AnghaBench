
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct flow_divert_group {int * token_key; int token_key_size; } ;
typedef int * mbuf_t ;
struct TYPE_2__ {int ccsha1_di; int (* cchmac_final_fn ) (int ,int ,int *) ;int (* cchmac_update_fn ) (int ,int ,int ,int ) ;int (* cchmac_init_fn ) (int ,int ,int ,int *) ;} ;


 int ENOPROTOOPT ;
 int cchmac_di_decl (int ,int ) ;
 TYPE_1__* g_crypto_funcs ;
 int hmac_ctx ;
 int mbuf_data (int *) ;
 int mbuf_len (int *) ;
 int * mbuf_next (int *) ;
 int stub1 (int ,int ,int ,int *) ;
 int stub2 (int ,int ,int ,int ) ;
 int stub3 (int ,int ,int *) ;

__attribute__((used)) static int
flow_divert_packet_compute_hmac(mbuf_t packet, struct flow_divert_group *group, uint8_t *hmac)
{
 mbuf_t curr_mbuf = packet;

 if (g_crypto_funcs == ((void*)0) || group->token_key == ((void*)0)) {
  return ENOPROTOOPT;
 }

 cchmac_di_decl(g_crypto_funcs->ccsha1_di, hmac_ctx);
 g_crypto_funcs->cchmac_init_fn(g_crypto_funcs->ccsha1_di, hmac_ctx, group->token_key_size, group->token_key);

 while (curr_mbuf != ((void*)0)) {
  g_crypto_funcs->cchmac_update_fn(g_crypto_funcs->ccsha1_di, hmac_ctx, mbuf_len(curr_mbuf), mbuf_data(curr_mbuf));
  curr_mbuf = mbuf_next(curr_mbuf);
 }

 g_crypto_funcs->cchmac_final_fn(g_crypto_funcs->ccsha1_di, hmac_ctx, hmac);

 return 0;
}
