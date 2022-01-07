
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int ssize_t ;
typedef int RFILE ;


 int errno ;
 int filestream_read (int *,char*,size_t) ;
 int free (char*) ;
 scalar_t__ malloc (size_t) ;
 int read_uint (int *,int*,size_t) ;

__attribute__((used)) static int read_buff(RFILE *fd, size_t size, char **pbuff, uint64_t *len)
{
   uint64_t tmp_len = 0;
   ssize_t read_len = 0;

   if (read_uint(fd, &tmp_len, size) == -1)
      return -errno;

   *pbuff = (char *)malloc((size_t)(tmp_len + 1) * sizeof(char));

   if ((read_len = filestream_read(fd, *pbuff, (size_t)tmp_len)) == -1)
      goto error;

   *len = read_len;
   (*pbuff)[read_len] = 0;



   return 0;

error:
   free(*pbuff);
   *pbuff = ((void*)0);
   return -errno;
}
