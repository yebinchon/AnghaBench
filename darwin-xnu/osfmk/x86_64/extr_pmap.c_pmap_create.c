
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_map_size_t ;
typedef int pmap_t ;
typedef int ledger_t ;
typedef scalar_t__ boolean_t ;


 int PMAP_CREATE_64BIT ;
 int pmap_create_options (int ,int ,int ) ;

pmap_t
pmap_create(
 ledger_t ledger,
 vm_map_size_t sz,
 boolean_t is_64bit)
{
 return pmap_create_options(ledger, sz, ((is_64bit) ? PMAP_CREATE_64BIT : 0));
}
