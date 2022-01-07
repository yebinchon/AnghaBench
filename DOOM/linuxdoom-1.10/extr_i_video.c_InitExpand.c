
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* exptable ;

void InitExpand (void)
{
    int i;

    for (i=0 ; i<256 ; i++)
 exptable[i] = i | (i<<8) | (i<<16) | (i<<24);
}
