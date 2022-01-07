
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 void* GetMemory (int) ;
 int Q_filelength (int *) ;
 int SafeRead (int *,void*,int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;

int TryLoadFile (char *filename, void **bufferptr)
{
 FILE *f;
 int length;
 void *buffer;

 *bufferptr = ((void*)0);

 f = fopen (filename, "rb");
 if (!f)
  return -1;
 length = Q_filelength (f);
 buffer = GetMemory(length+1);
 ((char *)buffer)[length] = 0;
 SafeRead (f, buffer, length);
 fclose (f);

 *bufferptr = buffer;
 return length;
}
