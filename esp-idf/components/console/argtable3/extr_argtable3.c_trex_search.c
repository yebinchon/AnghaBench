
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TRexChar ;
typedef int TRexBool ;
typedef int TRex ;


 int scstrlen (int const*) ;
 int trex_searchrange (int *,int const*,int const*,int const**,int const**) ;

TRexBool trex_search(TRex* exp,const TRexChar* text, const TRexChar** out_begin, const TRexChar** out_end)
{
 return trex_searchrange(exp,text,text + scstrlen(text),out_begin,out_end);
}
