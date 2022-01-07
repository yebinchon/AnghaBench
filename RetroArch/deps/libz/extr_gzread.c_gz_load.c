
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* gz_statep ;
struct TYPE_4__ {int eof; int fd; } ;


 int Z_ERRNO ;
 int gz_error (TYPE_1__*,int ,int ) ;
 int read (int ,unsigned char*,unsigned int) ;
 int zstrerror () ;

__attribute__((used)) static int gz_load(gz_statep state, unsigned char *buf, unsigned len, unsigned *have)
{
   int ret;

   *have = 0;
   do {
      ret = read(state->fd, buf + *have, len - *have);
      if (ret <= 0)
         break;
      *have += ret;
   } while (*have < len);
   if (ret < 0) {
      gz_error(state, Z_ERRNO, zstrerror());
      return -1;
   }
   if (ret == 0)
      state->eof = 1;
   return 0;
}
