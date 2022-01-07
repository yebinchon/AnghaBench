
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAT ;
 scalar_t__ FALSE ;
 int LBRA ;
 scalar_t__ NSUBEXP ;
 int PLUS ;
 int QUEST ;
 int RBRA ;
 int STAR ;
 scalar_t__ TRUE ;
 scalar_t__ cursubid ;
 int evaluntil (int) ;
 scalar_t__ lastwasand ;
 scalar_t__ nbra ;
 int pushator (int) ;
 int rcerror (char*) ;

__attribute__((used)) static void
operator(int t)
{
 if(t==RBRA && --nbra<0)
  rcerror("unmatched right paren");
 if(t==LBRA){
  if(++cursubid >= NSUBEXP)
   rcerror ("too many subexpressions");
  nbra++;
  if(lastwasand)
   operator(CAT);
 } else
  evaluntil(t);
 if(t != RBRA)
  pushator(t);
 lastwasand = FALSE;
 if(t==STAR || t==QUEST || t==PLUS || t==RBRA)
  lastwasand = TRUE;
}
