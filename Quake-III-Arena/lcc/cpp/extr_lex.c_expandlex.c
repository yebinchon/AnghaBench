
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsm {scalar_t__ state; int* ch; int nextstate; } ;





 size_t EOB ;
 size_t EOFC ;
 int MAXSTATE ;
 int QBSBIT ;
 int S_EOB ;
 int S_EOF ;
 int S_SELF ;
 int** bigfsm ;
 struct fsm* fsm ;

void
expandlex(void)
{
           struct fsm *fp;
 int i, j, nstate;

 for (fp = fsm; fp->state>=0; fp++) {
  for (i=0; fp->ch[i]; i++) {
   nstate = fp->nextstate;
   if (nstate >= S_SELF)
    nstate = ~nstate;
   switch (fp->ch[i]) {

   case 128:
    for (j=0; j<256; j++)
     bigfsm[j][fp->state] = nstate;
    continue;
   case 130:
    for (j=0; j<=256; j++)
     if ('a'<=j&&j<='z' || 'A'<=j&&j<='Z'
       || j=='_')
      bigfsm[j][fp->state] = nstate;
    continue;
   case 129:
    for (j='0'; j<='9'; j++)
     bigfsm[j][fp->state] = nstate;
    continue;
   default:
    bigfsm[fp->ch[i]][fp->state] = nstate;
   }
  }
 }

 for (i=0; i<MAXSTATE; i++) {
  for (j=0; j<0xFF; j++)
   if (j=='?' || j=='\\') {
    if (bigfsm[j][i]>0)
     bigfsm[j][i] = ~bigfsm[j][i];
    bigfsm[j][i] &= ~QBSBIT;
   }
  bigfsm[EOB][i] = ~S_EOB;
  if (bigfsm[EOFC][i]>=0)
   bigfsm[EOFC][i] = ~S_EOF;
 }
}
