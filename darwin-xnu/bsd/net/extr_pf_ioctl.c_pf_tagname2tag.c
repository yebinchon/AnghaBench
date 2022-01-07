
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;


 int pf_tags ;
 int tagname2tag (int *,char*) ;

u_int16_t
pf_tagname2tag(char *tagname)
{
 return (tagname2tag(&pf_tags, tagname));
}
