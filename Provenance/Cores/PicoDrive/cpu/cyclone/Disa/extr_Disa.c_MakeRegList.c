
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,int,int,...) ;
 int strcat (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int MakeRegList(char *list,int mask,int ea)
{
  int reverse=0,i=0,low=0,len=0;

  if ((ea&0x38)==0x20) reverse=1;

  mask&=0xffff; list[0]=0;

  for (i=0;i<17;i++)
  {
    int bit=0;


    if (reverse) bit=0x8000>>i; else bit=1<<i;
    bit&=mask;

    if (bit==0 || i==8)
    {

      char add[16]="";
      int ad=low&8?'a':'d';
      if (low==i-1) sprintf(add,"%c%d/", ad,low&7);
      if (low< i-1) sprintf(add,"%c%d-%c%d/",ad,low&7, ad,(i-1)&7);
      strcat(list,add);

      low=i;
    }

    if (bit==0) low=i+1;
  }


  len=strlen(list);
  if (len>0) if (list[len-1]=='/') list[len-1]=0;
  return 0;
}
