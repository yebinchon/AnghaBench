#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
struct TYPE_8__ {int status; } ;
typedef  TYPE_1__ VC_CONTAINER_IO_T ;

/* Variables and functions */
 scalar_t__ ESCAPE_CHARACTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,size_t) ; 
 scalar_t__ LOWEST_VERBOSITY ; 
 scalar_t__ MAXIMUM_BUFFER_SIZE ; 
 scalar_t__ MINIMUM_BUFFER_SPACE ; 
 int /*<<< orphan*/  VC_CONTAINER_CONTROL_IO_SET_READ_TIMEOUT_MS ; 
#define  VC_CONTAINER_ERROR_CONTINUE 129 
 int /*<<< orphan*/  VC_CONTAINER_IO_MODE_READ ; 
 int /*<<< orphan*/  VC_CONTAINER_IO_MODE_WRITE ; 
#define  VC_CONTAINER_SUCCESS 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ do_print_usage ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ packet_save_file ; 
 scalar_t__ packet_save_is_pktfile ; 
 int /*<<< orphan*/  FUNC11 (int,char**) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 scalar_t__ read_uri ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC16 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t FUNC17 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__) ; 
 size_t FUNC18 (TYPE_1__*,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ verbosity ; 

int FUNC19(int argc, char **argv)
{
   int result = 0;
   uint8_t *buffer = NULL;
   VC_CONTAINER_IO_T *read_io = NULL;
   VC_CONTAINER_IO_T *write_io = NULL;
   VC_CONTAINER_STATUS_T status;
   size_t received_bytes;
   bool ready = true;
   uint32_t available_bytes;
   uint8_t *packet_ptr;

   FUNC11(argc, argv);

   if (do_print_usage || !read_uri)
   {
      FUNC12(argv[0]);
      result = 1; goto tidyup;
   }

   buffer = (uint8_t *)FUNC6(MAXIMUM_BUFFER_SIZE);
   if (!buffer)
   {
      FUNC0(NULL, "Allocating %d bytes for the buffer failed", MAXIMUM_BUFFER_SIZE);
      result = 2; goto tidyup;
   }

   read_io = FUNC16(read_uri, VC_CONTAINER_IO_MODE_READ, &status);
   if (!read_io)
   {
      FUNC0(NULL, "Opening <%s> for read failed: %d", read_uri, status);
      result = 3; goto tidyup;
   }

   FUNC5(read_io);

   if (packet_save_file)
   {
      write_io = FUNC16(packet_save_file, VC_CONTAINER_IO_MODE_WRITE, &status);
      if (!write_io)
      {
         FUNC0(NULL, "Opening <%s> for write failed: %d", packet_save_file, status);
         result = 4; goto tidyup;
      }
      if (!packet_save_is_pktfile)
      {
         FUNC13(buffer, 0x50415753);
         FUNC18(write_io, buffer, sizeof(uint32_t));
      }
   }

   /* Use non-blocking I/O for both network and console */
   FUNC15(read_io, VC_CONTAINER_CONTROL_IO_SET_READ_TIMEOUT_MS, 20);
   FUNC10(1);

   packet_ptr = buffer;
   available_bytes = MAXIMUM_BUFFER_SIZE - sizeof(uint32_t);
   while (ready)
   {
      /* Read a packet and store its length in the word before it */
      received_bytes = FUNC17(read_io, packet_ptr + sizeof(uint32_t), available_bytes);
      if (received_bytes)
      {
         bool packet_has_marker;

         FUNC13(packet_ptr, received_bytes);
         packet_ptr += sizeof(uint32_t);
         packet_has_marker = FUNC7(packet_ptr, received_bytes);
         packet_ptr += received_bytes;
         available_bytes -= received_bytes + sizeof(uint32_t);

         if (packet_has_marker || (available_bytes < MINIMUM_BUFFER_SPACE))
         {
            uint8_t *decode_ptr;

            if (write_io && !packet_save_is_pktfile)
            {
               uint32_t total_bytes = packet_ptr - buffer;
               if (FUNC18(write_io, buffer, total_bytes) != total_bytes)
               {
                  FUNC0(NULL, "Error saving packets to file");
                  break;
               }
               if (verbosity >= LOWEST_VERBOSITY)
                  FUNC1(NULL, "Written %u bytes to file", total_bytes);
            }

            for (decode_ptr = buffer; decode_ptr < packet_ptr;)
            {
               received_bytes = FUNC3(decode_ptr);
               decode_ptr += sizeof(uint32_t);

               if (write_io && packet_save_is_pktfile)
               {
                  if (FUNC18(write_io, buffer, received_bytes) != received_bytes)
                  {
                     FUNC0(NULL, "Error saving packets to file");
                     break;
                  }
                  if (verbosity >= LOWEST_VERBOSITY)
                     FUNC1(NULL, "Written %u bytes to file", received_bytes);
               }

               if (!FUNC2(decode_ptr, received_bytes))
               {
                  FUNC0(NULL, "Failed to decode packet");
                  break;
               }
               decode_ptr += received_bytes;
            }

            /* Reset to start of buffer */
            packet_ptr = buffer;
            available_bytes = MAXIMUM_BUFFER_SIZE - sizeof(uint32_t);
         }
      }

      if (FUNC8())
      {
         if (FUNC9() == ESCAPE_CHARACTER)
            ready = false;
      }

      switch (read_io->status)
      {
      case VC_CONTAINER_SUCCESS:
      case VC_CONTAINER_ERROR_CONTINUE:
         break;
      default:
         ready = false;
      }
   }

   FUNC10(0);

tidyup:
   if (write_io)
      FUNC14(write_io);
   if (read_io)
      FUNC14(read_io);
   if (buffer)
      FUNC4(buffer);

   return result;
}