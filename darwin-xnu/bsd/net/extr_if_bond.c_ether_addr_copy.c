
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ETHER_ADDR_LEN ;
 int bcopy (void const*,void*,int ) ;

__attribute__((used)) static __inline__ void
ether_addr_copy(void * dest, const void * source)
{
    bcopy(source, dest, ETHER_ADDR_LEN);
    return;
}
