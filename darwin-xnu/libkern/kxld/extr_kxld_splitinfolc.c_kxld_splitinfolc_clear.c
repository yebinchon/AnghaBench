
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KXLDsplitinfolc ;


 int bzero (int *,int) ;

void
kxld_splitinfolc_clear(KXLDsplitinfolc *splitinfolc)
{
    bzero(splitinfolc, sizeof(*splitinfolc));
}
