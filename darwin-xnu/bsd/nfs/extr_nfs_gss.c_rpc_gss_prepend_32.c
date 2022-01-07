
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int mbuf_t ;
typedef int errno_t ;


 int MBUF_TYPE_DATA ;
 int MBUF_WAITOK ;
 int * mbuf_data (int ) ;
 int mbuf_get (int ,int ,int *) ;
 int mbuf_prepend (int *,int,int ) ;
 int mbuf_setnext (int ,int ) ;
 int txdr_unsigned (int ) ;

__attribute__((used)) static errno_t
rpc_gss_prepend_32(mbuf_t *mb, uint32_t value)
{
 int error;
 uint32_t *data;
 error = mbuf_prepend(mb, sizeof(uint32_t), MBUF_WAITOK);
 if (error)
  return (error);

 data = mbuf_data(*mb);
 *data = txdr_unsigned(value);

 return (0);
}
