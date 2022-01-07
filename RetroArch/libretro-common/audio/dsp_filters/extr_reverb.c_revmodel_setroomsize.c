
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct revmodel {scalar_t__ roomsize; } ;


 scalar_t__ offsetroom ;
 int revmodel_update (struct revmodel*) ;
 float scaleroom ;

__attribute__((used)) static void revmodel_setroomsize(struct revmodel *rev, float value)
{
   rev->roomsize = value * scaleroom + offsetroom;
   revmodel_update(rev);
}
