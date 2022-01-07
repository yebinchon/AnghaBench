
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_entries; } ;
typedef TYPE_1__ HashIndex ;



__attribute__((used)) static int
hashindex_len(HashIndex *index)
{
    return index->num_entries;
}
