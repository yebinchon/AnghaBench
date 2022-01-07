
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;


 int pf_tags ;
 int tag_unref (int *,int ) ;

void
pf_tag_unref(u_int16_t tag)
{
 tag_unref(&pf_tags, tag);
}
