
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LoadFile (char*,void**,int ,int ) ;

int FS_ReadFileAndCache(const char *qpath, void **buffer)
{
 return LoadFile((char *) qpath, buffer, 0, 0);
}
