
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbuf_t ;
typedef int ipf_pktopts_t ;
typedef int errno_t ;


 int printf (char*) ;

__attribute__((used)) static errno_t
ipf_output_detached(void *cookie, mbuf_t *data, ipf_pktopts_t options)
{
#pragma unused(cookie, data, options)





 return (0);
}
