
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Nlist ;
typedef int ** Hideset ;


 int FATAL ;
 int HSSIZ ;
 scalar_t__ domalloc (int) ;
 int error (int ,char*) ;
 int *** hidesets ;
 int inserths (int **,int **,int *) ;
 int maxhidesets ;
 int memmove (int **,int **,int) ;
 int nhidesets ;
 scalar_t__ realloc (int ***,int) ;

int
newhideset(int hs, Nlist *np)
{
 int i, len;
 Nlist *nhs[HSSIZ+3];
 Hideset hs1, hs2;

 len = inserths(nhs, hidesets[hs], np);
 for (i=0; i<nhidesets; i++) {
  for (hs1=nhs, hs2=hidesets[i]; *hs1==*hs2; hs1++, hs2++)
   if (*hs1 == ((void*)0))
    return i;
 }
 if (len>=HSSIZ)
  return hs;
 if (nhidesets >= maxhidesets) {
  maxhidesets = 3*maxhidesets/2+1;
  hidesets = (Hideset *)realloc(hidesets, (sizeof (Hideset *))*maxhidesets);
  if (hidesets == ((void*)0))
   error(FATAL, "Out of memory from realloc");
 }
 hs1 = (Hideset)domalloc(len*sizeof(Hideset));
 memmove(hs1, nhs, len*sizeof(Hideset));
 hidesets[nhidesets] = hs1;
 return nhidesets++;
}
