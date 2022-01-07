
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * SafeOpenWrite (char const*) ;
 int SafeWrite (int *,void const*,int) ;
 int fclose (int *) ;

void SaveFile (const char *filename, const void *buffer, int count)
{
 FILE *f;

 f = SafeOpenWrite (filename);
 SafeWrite (f, buffer, count);
 fclose (f);
}
