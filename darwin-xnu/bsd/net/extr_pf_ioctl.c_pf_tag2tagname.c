
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;


 int pf_tags ;
 int tag2tagname (int *,int ,char*) ;

void
pf_tag2tagname(u_int16_t tagid, char *p)
{
 tag2tagname(&pf_tags, tagid, p);
}
