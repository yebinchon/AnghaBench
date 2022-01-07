
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {void* d_modtime; void* d_attrib; void* d_size; int d_name; } ;


 int D_NAME_MAX_SIZE ;
 void* VC_VTOH32 (void*) ;
 int memcpy (int *,char*,int ) ;
 int read_bytestream (void*,char*,int) ;

__attribute__((used)) static void fs_host_direntbytestream_interp(struct dirent *d, void *buffer)
{
   char *buf = (char*)buffer;


   memcpy(&d->d_name, buf, D_NAME_MAX_SIZE);
   buf += D_NAME_MAX_SIZE;


   read_bytestream((void *)&d->d_size, buf, (int)sizeof(d->d_size));
   d->d_size = VC_VTOH32(d->d_size);
   buf += 4;


   read_bytestream((void *)&d->d_attrib, buf, (int)sizeof(d->d_attrib));
   d->d_attrib = VC_VTOH32(d->d_attrib);
   buf += 4;


   read_bytestream((void *)&d->d_modtime, buf, (int)sizeof(d->d_modtime));
   d->d_modtime = VC_VTOH32(d->d_modtime);

   return;
}
