
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct nfsm_chain {int dummy; } ;
typedef int mbuf_t ;
typedef int gss_ctx_id_t ;
typedef scalar_t__ errno_t ;


 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ NFSX_UNSIGNED ;
 scalar_t__ gss_krb5_wrap_mbuf (scalar_t__*,int ,int,int ,int *,int ,scalar_t__,int *) ;
 scalar_t__ nfs_gss_mchain_length (int ) ;
 int nfsm_chain_add_opaque_nopad (scalar_t__,struct nfsm_chain*,int ,scalar_t__) ;
 int nfsm_chain_adv (scalar_t__,struct nfsm_chain*,scalar_t__) ;
 int nfsm_chain_build_done (scalar_t__,struct nfsm_chain*) ;
 int nfsm_chain_dissect_init (scalar_t__,struct nfsm_chain*,int ) ;
 int nfsm_chain_finish_mbuf (scalar_t__,struct nfsm_chain*) ;
 scalar_t__ nfsm_pad (scalar_t__) ;
 scalar_t__ rpc_gss_data_create (int *,scalar_t__) ;
 scalar_t__ rpc_gss_prepend_32 (int *,scalar_t__) ;
 int xdrpad ;

__attribute__((used)) static errno_t
rpc_gss_priv_data_create(gss_ctx_id_t ctx, mbuf_t *mb_head, uint32_t seqnum, uint32_t *len)
{
 uint32_t error;
 uint32_t major;
 struct nfsm_chain nmc;
 uint32_t pad;
 uint32_t length;

 error = rpc_gss_data_create(mb_head, seqnum);
 if (error)
  return (error);

 length = nfs_gss_mchain_length(*mb_head);
 major = gss_krb5_wrap_mbuf(&error, ctx, 1, 0, mb_head, 0, length, ((void*)0));
 if (major != GSS_S_COMPLETE)
  return (error);

 length = nfs_gss_mchain_length(*mb_head);
 if (len)
  *len = length;
 pad = nfsm_pad(length);


 error = rpc_gss_prepend_32(mb_head, length);

 if (error)
  return (error);
 if (pad) {
  nfsm_chain_dissect_init(error, &nmc, *mb_head);

  nfsm_chain_adv(error, &nmc, NFSX_UNSIGNED + length);
  nfsm_chain_finish_mbuf(error, &nmc);
  nfsm_chain_add_opaque_nopad(error, &nmc, xdrpad, pad);
  nfsm_chain_build_done(error, &nmc);
 }

 return (error);
}
