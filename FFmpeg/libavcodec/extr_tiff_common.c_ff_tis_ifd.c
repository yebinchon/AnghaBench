
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FF_ARRAY_ELEMS (unsigned int*) ;
 unsigned int* ifd_tags ;

int ff_tis_ifd(unsigned tag)
{
    int i;
    for (i = 0; i < FF_ARRAY_ELEMS(ifd_tags); i++) {
        if (ifd_tags[i] == tag) {
            return i + 1;
        }
    }
    return 0;
}
