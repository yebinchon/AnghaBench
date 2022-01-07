
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int ZIP_PACKER ;
typedef int FIFO ;


 int FifoPtr (int *) ;
 int FifoSize (int *) ;
 int FileWriteAllW (int *,int ,int ) ;
 int * ZipFinish (int *) ;

bool ZipWriteW(ZIP_PACKER *p, wchar_t *name)
{
 FIFO *f;

 if (p == ((void*)0) || name == ((void*)0))
 {
  return 0;
 }

 f = ZipFinish(p);
 if (f == ((void*)0))
 {
  return 0;
 }

 return FileWriteAllW(name, FifoPtr(f), FifoSize(f));
}
