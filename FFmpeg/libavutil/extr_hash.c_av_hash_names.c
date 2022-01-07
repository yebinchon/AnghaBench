
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* name; } ;


 int NUM_HASHES ;
 TYPE_1__* hashdesc ;

const char *av_hash_names(int i)
{
    if (i < 0 || i >= NUM_HASHES) return ((void*)0);
    return hashdesc[i].name;
}
