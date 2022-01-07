
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
typedef int u_int64_t ;
typedef scalar_t__ u_int32_t ;
struct socket {int dummy; } ;


 scalar_t__ MPTCP_DATASEQ_LOW32 (int ) ;
 int mptcp_output_getm_dsnmap64 (struct socket*,int,int *,scalar_t__*,int *,int *) ;

void
mptcp_output_getm_dsnmap32(struct socket *so, int off,
    uint32_t *dsn, uint32_t *relseq, uint16_t *data_len, uint16_t *dss_csum)
{
 u_int64_t dsn64;

 mptcp_output_getm_dsnmap64(so, off, &dsn64, relseq, data_len, dss_csum);
 *dsn = (u_int32_t)MPTCP_DATASEQ_LOW32(dsn64);
}
