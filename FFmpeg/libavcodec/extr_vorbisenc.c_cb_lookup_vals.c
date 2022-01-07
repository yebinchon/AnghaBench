
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ff_vorbis_nth_root (int,int) ;

__attribute__((used)) static int cb_lookup_vals(int lookup, int dimensions, int entries)
{
    if (lookup == 1)
        return ff_vorbis_nth_root(entries, dimensions);
    else if (lookup == 2)
        return dimensions *entries;
    return 0;
}
