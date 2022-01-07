
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stub_state {scalar_t__* stack; scalar_t__ i; } ;
typedef int RFILE ;


 int RETRO_VFS_FILE_ACCESS_HINT_NONE ;
 int RETRO_VFS_FILE_ACCESS_READ ;
 int filestream_close (int *) ;
 int * filestream_open (char*,int ,int ) ;
 int printf (char*) ;
 int rmsgpack_read (int *,int *,struct stub_state*) ;
 int stub_callbacks ;

int main(void)
{
   struct stub_state state;
   RFILE *fd = filestream_open("test.msgpack",
         RETRO_VFS_FILE_ACCESS_READ,
         RETRO_VFS_FILE_ACCESS_HINT_NONE);

   state.i = 0;
   state.stack[0] = 0;

   rmsgpack_read(fd, &stub_callbacks, &state);

   printf("Test succeeded.\n");
   filestream_close(fd);

   return 0;
}
