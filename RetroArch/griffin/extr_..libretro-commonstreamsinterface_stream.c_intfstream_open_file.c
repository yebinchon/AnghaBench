
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int intfstream_t ;
struct TYPE_3__ {int type; } ;
typedef TYPE_1__ intfstream_info_t ;


 int INTFSTREAM_FILE ;
 int free (int *) ;
 int intfstream_close (int *) ;
 scalar_t__ intfstream_init (TYPE_1__*) ;
 int intfstream_open (int *,char const*,unsigned int,unsigned int) ;

intfstream_t* intfstream_open_file(const char *path,
      unsigned mode, unsigned hints)
{
   intfstream_info_t info;
   intfstream_t *fd = ((void*)0);

   info.type = INTFSTREAM_FILE;
   fd = (intfstream_t*)intfstream_init(&info);

   if (!fd)
      return ((void*)0);

   if (!intfstream_open(fd, path, mode, hints))
      goto error;

   return fd;

error:
   if (fd)
   {
      intfstream_close(fd);
      free(fd);
   }
   return ((void*)0);
}
