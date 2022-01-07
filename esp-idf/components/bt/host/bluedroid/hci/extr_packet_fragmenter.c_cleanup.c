
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hash_map_free (scalar_t__) ;
 scalar_t__ partial_packets ;

__attribute__((used)) static void cleanup(void)
{
    if (partial_packets) {
        hash_map_free(partial_packets);
    }
}
