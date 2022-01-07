
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmap_io_range_t ;
typedef int DTEntry ;


 int DTGetProperty (int ,char*,void**,unsigned int*) ;
 int DTLookupEntry (int *,char*,int *) ;
 int assert (int) ;
 int cmp_io_rgns ;
 int * io_attr_table ;
 int kSuccess ;
 scalar_t__ num_io_rgns ;
 int qsort (int *,scalar_t__,int,int ) ;

__attribute__((used)) static void
pmap_load_io_rgns(void)
{
 DTEntry entry;
 pmap_io_range_t *ranges;
 void *prop = ((void*)0);
        int err;
 unsigned int prop_size;

 if (num_io_rgns == 0)
  return;

 err = DTLookupEntry(((void*)0), "/defaults", &entry);
 assert(err == kSuccess);

 err = DTGetProperty(entry, "pmap-io-ranges", &prop, &prop_size);
 assert(err == kSuccess);

 ranges = prop;
 for (unsigned int i = 0; i < (prop_size / sizeof(*ranges)); ++i)
  io_attr_table[i] = ranges[i];

 qsort(io_attr_table, num_io_rgns, sizeof(*ranges), cmp_io_rgns);
}
