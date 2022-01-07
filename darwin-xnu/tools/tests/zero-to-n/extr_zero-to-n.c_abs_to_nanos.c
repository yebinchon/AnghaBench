
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef double uint64_t ;
struct TYPE_2__ {scalar_t__ denom; scalar_t__ numer; } ;


 TYPE_1__ g_mti ;

__attribute__((used)) static uint64_t
abs_to_nanos(uint64_t abstime)
{
 return (uint64_t)(abstime * (((double)g_mti.numer) / ((double)g_mti.denom)));
}
