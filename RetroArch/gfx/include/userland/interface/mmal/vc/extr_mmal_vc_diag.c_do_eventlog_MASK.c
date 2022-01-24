#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  log ;
typedef  int VC_MEM_ADDR_T ;
typedef  int /*<<< orphan*/  VC_MEM_ACCESS_HANDLE_T ;
struct TYPE_4__ {int magic; int size; int elemsize; int version; int index; int num_entries; } ;
typedef  TYPE_1__ MMAL_DBG_LOG_T ;
typedef  int /*<<< orphan*/  MMAL_DBG_ENTRY_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int*,size_t*) ; 
 int MMAL_MAGIC ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC8(int argc, const char **argv)
{
   VC_MEM_ACCESS_HANDLE_T vc;
   VC_MEM_ADDR_T addr;     /** The address of the pointer to the log */
   size_t size;
   VC_MEM_ADDR_T logaddr;       /** The address of the log itself */
   MMAL_DBG_LOG_T log;

   (void)argc; (void)argv;
   int rc;
   if ((rc = FUNC2(&vc)) < 0)
   {
      FUNC5(stderr,"Unable to open videocore memory: %d\n", rc);
      return -1;
   }
   if (!FUNC1(vc, "mmal_dbg_log", &addr, &size))
   {
      FUNC5(stderr,"Could not get MMAL log address\n");
      goto fail;
   }
   if (!FUNC4(vc, &logaddr, addr))
   {
      FUNC5(stderr,"Could not read MMAL log pointer at address 0x%x\n",
              addr);
      goto fail;
   }
   if (!FUNC3(vc, &log, logaddr, sizeof(log)))
   {
      FUNC5(stderr,"Could not read MMAL log at address 0x%x\n",
              logaddr);
      goto fail;
   }
   if (log.magic != MMAL_MAGIC)
   {
      FUNC5(stderr,"Bad magic 0x%08x in log at 0x%x\n", log.magic, logaddr);
      goto fail;
   }
   if (log.size != sizeof(log))
   {
      FUNC5(stderr,"MMAL Log size mismatch (got %d, expected %lu)\n",
              log.size, sizeof(log));
      goto fail;
   }
   if (log.elemsize != sizeof(MMAL_DBG_ENTRY_T))
   {
      FUNC5(stderr,"MMAL log element size mismatch (got %d, expected %lu)\n",
              log.elemsize, sizeof(MMAL_DBG_ENTRY_T));
      goto fail;
   }

   FUNC7("reading MMAL log at 0x%x version %d magic %x\n",
          logaddr, log.version, log.magic);
   FUNC7("%d events, %d entries each size %d\n", log.index, log.num_entries,
          log.elemsize);
   FUNC6(vc, &log);

   FUNC0(vc);
   return 0;
fail:
   FUNC0(vc);
   return -1;

}