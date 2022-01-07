
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* Hideset ;


 scalar_t__** hidesets ;
 int newhideset (int,scalar_t__) ;

int
unionhideset(int hs1, int hs2)
{
 Hideset hp;

 for (hp = hidesets[hs2]; *hp; hp++)
  hs1 = newhideset(hs1, *hp);
 return hs1;
}
