
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DTestButton (int *) ;
 int * TopRiderButtons ;
 int TopRiderData ;

__attribute__((used)) static void UpdateTopRider(void)
{
 int x;
 TopRiderData=0;
 for(x=0;x<8;x++)
  if(DTestButton(&TopRiderButtons[x]))
   TopRiderData|=1<<x;
}
