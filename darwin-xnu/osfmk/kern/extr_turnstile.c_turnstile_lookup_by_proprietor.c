
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct turnstile {int dummy; } ;


 struct turnstile* turnstile_htable_lookup (uintptr_t) ;

struct turnstile *
turnstile_lookup_by_proprietor(uintptr_t proprietor)
{
 return turnstile_htable_lookup(proprietor);
}
