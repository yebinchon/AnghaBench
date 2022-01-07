
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Table ;
typedef int Coordinate ;


 int * allsymbols (int ) ;
 int append (int *,int ) ;
 int loci ;
 int symbols ;

void locus(Table tp, Coordinate *cp) {
 loci = append(cp, loci);
 symbols = append(allsymbols(tp), symbols);
}
