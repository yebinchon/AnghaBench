
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct llinfo_nd6 {int ln_expire; } ;



void
ln_setexpire(struct llinfo_nd6 *ln, uint64_t expiry)
{
 ln->ln_expire = expiry;
}
