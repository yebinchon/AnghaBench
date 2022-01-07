
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * SafeOpenWrite (char*) ;
 int SafeWrite (int *,void*,int) ;
 int fclose (int *) ;

void SaveFile (char *filename, void *buffer, int count)
{
 FILE *f;

 f = SafeOpenWrite (filename);
 SafeWrite (f, buffer, count);
 fclose (f);
}
