
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int log ;
typedef int VC_MEM_ADDR_T ;
typedef int VC_MEM_ACCESS_HANDLE_T ;
struct TYPE_3__ {char* buffer; } ;
typedef TYPE_1__ MMAL_VC_HOST_LOG_T ;


 int CloseVideoCoreMemory (int ) ;
 int OpenVideoCoreMemory (int *) ;
 int ReadVideoCoreMemory (int ,TYPE_1__*,int,int) ;
 int ReadVideoCoreUInt32BySymbol (int ,char*,int*) ;
 int fprintf (int ,char*,...) ;
 int printf (char*,char const*) ;
 int stderr ;

__attribute__((used)) static int do_host_log(int argc, const char **argv)
{
   VC_MEM_ACCESS_HANDLE_T vc;
   VC_MEM_ADDR_T log_addr;
   MMAL_VC_HOST_LOG_T log;
   const char *msg = &log.buffer[0];
   const char *log_end = &log.buffer[sizeof(log.buffer)];
   int rc;

   (void) argc;
   (void) argv;

   if ((rc = OpenVideoCoreMemory(&vc)) < 0)
   {
      fprintf(stderr,"Unable to open videocore memory: %d\n", rc);
      return -1;
   }
   if (!ReadVideoCoreUInt32BySymbol(vc, "mmal_host_log", &log_addr))
   {
      fprintf(stderr, "Could not read mmal_host_log address\n");
      goto fail;
   }
   if (!ReadVideoCoreMemory(vc, &log, log_addr, sizeof(log)))
   {
      fprintf(stderr, "Could not read log at 0x%x\n", log_addr);
      goto fail;
   }

   while (msg < log_end)
   {
      if (*msg)
         msg += printf("%s", msg);


      while (msg < log_end && *msg == 0) ++msg;
   }

   CloseVideoCoreMemory(vc);
   return 0;

fail:
   CloseVideoCoreMemory(vc);
   return -1;
}
