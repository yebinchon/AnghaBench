
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ commpage_address_t ;


 scalar_t__ commPageBaseOffset ;
 scalar_t__ commPagePtr ;

__attribute__((used)) static void*
commpage_addr_of(
    commpage_address_t addr_at_runtime )
{
 return (void*) ((uintptr_t)commPagePtr + (addr_at_runtime - commPageBaseOffset));
}
