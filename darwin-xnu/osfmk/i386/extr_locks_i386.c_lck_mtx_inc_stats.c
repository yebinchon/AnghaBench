
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int os_atomic_inc (scalar_t__*,int ) ;
 int relaxed ;

__attribute__((used)) static void __inline__
lck_mtx_inc_stats(
 uint64_t* stat)
{



  *stat = (*stat)++;

}
