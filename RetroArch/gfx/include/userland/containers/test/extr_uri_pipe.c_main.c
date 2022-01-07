
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int buffer ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_6__ {char* status; } ;
typedef TYPE_1__ VC_CONTAINER_IO_T ;


 int LOG_INFO (int *,char*,char*,...) ;
 int MAX_BUFFER_SIZE ;
 char* VC_CONTAINER_ERROR_EOS ;
 int VC_CONTAINER_IO_MODE_READ ;
 int VC_CONTAINER_IO_MODE_WRITE ;
 char* VC_CONTAINER_SUCCESS ;
 scalar_t__ nb_char_available () ;
 char nb_get_char () ;
 int nb_set_nonblocking_input (int) ;
 int vc_container_io_close (TYPE_1__*) ;
 TYPE_1__* vc_container_io_open (char*,int ,int *) ;
 size_t vc_container_io_read (TYPE_1__*,char*,int) ;
 scalar_t__ vc_container_io_write (TYPE_1__*,char*,size_t) ;

int main(int argc, char **argv)
{
   char buffer[MAX_BUFFER_SIZE];
   VC_CONTAINER_IO_T *read_io, *write_io;
   VC_CONTAINER_STATUS_T status;
   size_t received;
   bool ready = 1;

   if (argc < 3)
   {
      LOG_INFO(((void*)0), "Usage:\n%s <read URI> <write URI>\n", argv[0]);
      return 1;
   }

   read_io = vc_container_io_open(argv[1], VC_CONTAINER_IO_MODE_READ, &status);
   if (!read_io)
   {
      LOG_INFO(((void*)0), "Opening <%s> for read failed: %d\n", argv[1], status);
      return 2;
   }

   write_io = vc_container_io_open(argv[2], VC_CONTAINER_IO_MODE_WRITE, &status);
   if (!write_io)
   {
      vc_container_io_close(read_io);
      LOG_INFO(((void*)0), "Opening <%s> for write failed: %d\n", argv[2], status);
      return 3;
   }

   nb_set_nonblocking_input(1);

   while (ready)
   {
      size_t total_written = 0;

      received = vc_container_io_read(read_io, buffer, sizeof(buffer));
      while (ready && total_written < received)
      {
         total_written += vc_container_io_write(write_io, buffer + total_written, received - total_written);
         ready &= (write_io->status == VC_CONTAINER_SUCCESS);
      }
      ready &= (read_io->status == VC_CONTAINER_SUCCESS);

      if (nb_char_available())
      {
         char c = nb_get_char();

         switch (c)
         {
         case 'q':
         case 'Q':
         case 0x04:
         case 0x1A:
         case 0x1B:
            ready = 0;
            break;
         default:
            ;
         }
      }
   }

   if (read_io->status != VC_CONTAINER_SUCCESS && read_io->status != VC_CONTAINER_ERROR_EOS)
   {
      LOG_INFO(((void*)0), "Read failed: %d\n", read_io->status);
   }

   if (write_io->status != VC_CONTAINER_SUCCESS)
   {
      LOG_INFO(((void*)0), "Write failed: %d\n", write_io->status);
   }

   vc_container_io_close(read_io);
   vc_container_io_close(write_io);

   nb_set_nonblocking_input(0);

   return 0;
}
