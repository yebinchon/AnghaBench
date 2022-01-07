
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbuf_t ;
typedef int gss_cfx_wrap_token_desc ;


 int gss_join_mbuf (int ,int ,int ) ;
 int gss_normalize_mbuf (int ,int,size_t*,int *,int *,int ) ;

__attribute__((used)) static void
gss_krb5_cfx_unwrap_rrc_mbuf(mbuf_t header, size_t rrc)
{
 mbuf_t body, trailer;

 gss_normalize_mbuf(header, sizeof(gss_cfx_wrap_token_desc), &rrc, &trailer, &body, 0);
 gss_join_mbuf(header, body, trailer);
}
