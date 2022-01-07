
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BupRam ;
 int CartFlush () ;
 scalar_t__ T123Save (scalar_t__,int,int,scalar_t__) ;
 int YAB_ERR_FILEWRITE ;
 int YabSetError (int ,void*) ;
 scalar_t__ bupfilename ;

void YabFlushBackups(void)
{
   if (BupRam)
   {
      if (T123Save(BupRam, 0x10000, 1, bupfilename) != 0)
         YabSetError(YAB_ERR_FILEWRITE, (void *)bupfilename);
   }

   CartFlush();
}
