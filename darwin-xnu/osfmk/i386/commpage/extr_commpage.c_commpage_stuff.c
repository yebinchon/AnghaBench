
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ commpage_address_t ;


 int bcopy (void const*,void*,int) ;
 void* commpage_addr_of (scalar_t__) ;
 scalar_t__ next ;
 int panic (char*,void*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
commpage_stuff(
    commpage_address_t address,
    const void *source,
    int length )
{
    void *dest = commpage_addr_of(address);

    if (address < next)
       panic("commpage overlap at address 0x%p, 0x%x < 0x%x", dest, address, next);

    bcopy(source,dest,length);

    next = address + length;
}
