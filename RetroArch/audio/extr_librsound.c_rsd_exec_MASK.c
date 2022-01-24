#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ssize_t ;
struct TYPE_8__ {int socket; } ;
struct TYPE_9__ {int /*<<< orphan*/  fifo_buffer; TYPE_1__ conn; } ;
typedef  TYPE_2__ rsound_t ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_NBIO ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 (int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 

int FUNC13(rsound_t *rsound)
{
   FUNC6(rsound != NULL);
   FUNC0("[RSound] rsd_exec().\n");

   // Makes sure we have a working connection
   if ( rsound->conn.socket < 0 )
   {
      FUNC0("[RSound] Calling rsd_start().\n");
      if ( FUNC8(rsound) < 0 )
      {
         FUNC1("[RSound] rsd_start() failed.\n");
         return -1;
      }
   }

   FUNC0("[RSound] Closing ctl.\n");
   if ( FUNC9(rsound) < 0 )
      return -1;

   int fd = rsound->conn.socket;
   FUNC0("[RSound] Socket: %d.\n", fd);

   FUNC11(rsound);

#if defined(__CELLOS_LV2__)
   int i = 0;
   setsockopt(rsound->conn.socket, SOL_SOCKET, SO_NBIO, &i, sizeof(int));
#else
   FUNC2(rsound->conn.socket, F_SETFL, O_NONBLOCK);
#endif

   // Flush the buffer

   if ( FUNC4(rsound->fifo_buffer) > 0 )
   {
      char buffer[FUNC4(rsound->fifo_buffer)];
      FUNC3(rsound->fifo_buffer, buffer, sizeof(buffer));
      if ( FUNC10(fd, buffer, sizeof(buffer), 1) != (ssize_t)sizeof(buffer) )
      {
         FUNC0("[RSound] Failed flushing buffer.\n");
         FUNC5(fd);
         return -1;
      }
   }

   FUNC0("[RSound] Returning from rsd_exec().\n");
   FUNC7(rsound);
   return fd;
}