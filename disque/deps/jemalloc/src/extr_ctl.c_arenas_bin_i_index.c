
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ctl_named_node_t ;


 size_t NBINS ;
 int const* super_arenas_bin_i_node ;

__attribute__((used)) static const ctl_named_node_t *
arenas_bin_i_index(const size_t *mib, size_t miblen, size_t i)
{

 if (i > NBINS)
  return (((void*)0));
 return (super_arenas_bin_i_node);
}
