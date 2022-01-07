
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX ;
 scalar_t__ fgets (char*,int,int ) ;
 int printf (char*,long) ;
 int sscanf (char*,char*,double*) ;
 int stdin ;

main()
{
 char buf[256];
 int count=0;

 while(fgets(buf,256,stdin)>0)
 {
  double p;

  if(sscanf(buf,"%lf",&p)==1)
  {
   p*=65536*16;
   printf("%ld,\n",(long)p);
   count++;
   if(count==MAX) break;
  }

 }

}
