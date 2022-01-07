
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ** Hideset ;


 scalar_t__ domalloc (int) ;
 int *** hidesets ;
 int maxhidesets ;
 int nhidesets ;

void
iniths(void)
{
 hidesets = (Hideset *)domalloc(maxhidesets*sizeof(Hideset *));
 hidesets[0] = (Hideset)domalloc(sizeof(Hideset));
 *hidesets[0] = ((void*)0);
 nhidesets++;
}
