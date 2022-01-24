#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
struct TYPE_6__ {char* status; } ;
typedef  TYPE_1__ VC_CONTAINER_IO_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,...) ; 
 int MAX_BUFFER_SIZE ; 
 char* VC_CONTAINER_ERROR_EOS ; 
 int /*<<< orphan*/  VC_CONTAINER_IO_MODE_READ ; 
 int /*<<< orphan*/  VC_CONTAINER_IO_MODE_WRITE ; 
 char* VC_CONTAINER_SUCCESS ; 
 scalar_t__ FUNC1 () ; 
 char FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t FUNC6 (TYPE_1__*,char*,int) ; 
 scalar_t__ FUNC7 (TYPE_1__*,char*,size_t) ; 

int FUNC8(int argc, char **argv)
{
   char buffer[MAX_BUFFER_SIZE];
   VC_CONTAINER_IO_T *read_io, *write_io;
   VC_CONTAINER_STATUS_T status;
   size_t received;
   bool ready = true;

   if (argc < 3)
   {
      FUNC0(NULL, "Usage:\n%s <read URI> <write URI>\n", argv[0]);
      return 1;
   }

   read_io = FUNC5(argv[1], VC_CONTAINER_IO_MODE_READ, &status);
   if (!read_io)
   {
      FUNC0(NULL, "Opening <%s> for read failed: %d\n", argv[1], status);
      return 2;
   }

   write_io = FUNC5(argv[2], VC_CONTAINER_IO_MODE_WRITE, &status);
   if (!write_io)
   {
      FUNC4(read_io);
      FUNC0(NULL, "Opening <%s> for write failed: %d\n", argv[2], status);
      return 3;
   }

   FUNC3(1);

   while (ready)
   {
      size_t total_written = 0;

      received = FUNC6(read_io, buffer, sizeof(buffer));
      while (ready && total_written < received)
      {
         total_written += FUNC7(write_io, buffer + total_written, received - total_written);
         ready &= (write_io->status == VC_CONTAINER_SUCCESS);
      }
      ready &= (read_io->status == VC_CONTAINER_SUCCESS);

      if (FUNC1())
      {
         char c = FUNC2();

         switch (c)
         {
         case 'q':
         case 'Q':
         case 0x04:  /* CTRL+D */
         case 0x1A:  /* CTRL+Z */
         case 0x1B:  /* Escape */
            ready = false;
            break;
         default:
            ;/* Do nothing */
         }
      }
   }

   if (read_io->status != VC_CONTAINER_SUCCESS && read_io->status != VC_CONTAINER_ERROR_EOS)
   {
      FUNC0(NULL, "Read failed: %d\n", read_io->status);
   }

   if (write_io->status != VC_CONTAINER_SUCCESS)
   {
      FUNC0(NULL, "Write failed: %d\n", write_io->status);
   }

   FUNC4(read_io);
   FUNC4(write_io);

   FUNC3(0);

   return 0;
}