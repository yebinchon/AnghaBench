
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int int32 ;


 int DOSMemSet (int,int,int) ;
 int LMBuffer ;
 int LMSelector ;
 int __dpmi_allocate_dos_memory (int,int *) ;
 int format ;
 int fragsize ;

__attribute__((used)) static int MakeDMABuffer(void)
{
 uint32 size;
 int32 tmp;

 size=fragsize*2;
 size<<=format;

 size<<=1;


 size=(size+15)>>4;

 if((tmp=__dpmi_allocate_dos_memory(size,&LMSelector))<0)
  return(0);

 LMBuffer=tmp<<=4;

 if(format)
 {
  if((LMBuffer&0x20000) != ((LMBuffer+fragsize*2*2-1)&0x20000))
   LMBuffer+=fragsize*2*2;
 }
 else
 {
  if((LMBuffer&0x10000) != ((LMBuffer+fragsize*2-1)&0x10000))
   LMBuffer+=fragsize*2;
 }

 DOSMemSet(LMBuffer, format?0:128, (fragsize*2)<<format);

 return(1);
}
