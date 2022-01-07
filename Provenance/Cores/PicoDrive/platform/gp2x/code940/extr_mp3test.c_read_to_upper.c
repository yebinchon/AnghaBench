
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fread (void*,int,int,int *) ;
 int memcpy (unsigned char*,void*,int) ;

__attribute__((used)) static int read_to_upper(void *dest, void *tmpbuf, int tmpsize, FILE *f)
{
 int nRead, nLen = 0;

 while(1)
 {
  nRead = fread(tmpbuf, 1, tmpsize, f);
  if(nRead <= 0)
   break;
  memcpy((unsigned char *)dest + nLen, tmpbuf, nRead);
  nLen += nRead;
 }

 return nLen;
}
