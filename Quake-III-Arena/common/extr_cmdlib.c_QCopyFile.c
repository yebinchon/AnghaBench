
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CreatePath (char const*) ;
 int LoadFile (char const*,void**) ;
 int SaveFile (char const*,void*,int) ;
 int free (void*) ;

void QCopyFile (const char *from, const char *to)
{
 void *buffer;
 int length;

 length = LoadFile (from, &buffer);
 CreatePath (to);
 SaveFile (to, buffer, length);
 free (buffer);
}
