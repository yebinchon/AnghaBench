
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int d_modtime; int d_attrib; int d_size; int d_name; } ;


 int D_NAME_MAX_SIZE ;
 int memcpy (char*,int *,int ) ;
 int write_bytestream (void*,char*,int) ;

__attribute__((used)) static int fs_host_direntbytestream_create(struct dirent *d, void *buffer)
{
   char *buf = (char*)buffer;


   memcpy(buf, &d->d_name, D_NAME_MAX_SIZE);
   buf += D_NAME_MAX_SIZE;


   write_bytestream((void *)&d->d_size, buf, (int)sizeof(d->d_size));
   buf += 4;


   write_bytestream((void *)&d->d_attrib, buf, (int)sizeof(d->d_attrib));
   buf += 4;


   write_bytestream((void *)&d->d_modtime, buf, (int)sizeof(d->d_modtime));
   buf += 4;

   return (int)(buf-(char *)buffer);
}
