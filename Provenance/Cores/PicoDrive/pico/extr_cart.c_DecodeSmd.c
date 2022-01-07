
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int InterleveBlock (unsigned char*,unsigned char*) ;
 int free (unsigned char*) ;
 scalar_t__ malloc (int) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static int DecodeSmd(unsigned char *data,int len)
{
  unsigned char *temp=((void*)0);
  int i=0;

  temp=(unsigned char *)malloc(0x4000);
  if (temp==((void*)0)) return 1;
  memset(temp,0,0x4000);


  for (i=0; i+0x4200<=len; i+=0x4000)
  {
    InterleveBlock(temp,data+0x200+i);
    memcpy(data+i,temp,0x4000);
  }

  free(temp);
  return 0;
}
