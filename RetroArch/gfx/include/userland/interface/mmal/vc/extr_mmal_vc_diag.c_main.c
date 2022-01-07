
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int (* pfn ) (int,char const**) ;scalar_t__ name; } ;


 int CONNECT ;
 TYPE_1__* cmds ;
 int do_connect () ;
 int do_usage (int,char const**) ;
 int exit (int) ;
 int fprintf (int ,char*,char const*) ;
 int mmal_vc_deinit () ;
 int stderr ;
 scalar_t__ strcasecmp (scalar_t__,char const*) ;
 int stub1 (int,char const**) ;

int main(int argc, const char **argv)
{
   int i;

   if (argc < 2)
   {
      do_usage(argc, argv);
      exit(1);
   }

   for (i = 0; cmds[i].name; i++)
   {
      if (strcasecmp(cmds[i].name, argv[1]) == 0)
      {
         int rc;
         if (cmds[i].flags & CONNECT)
         {
            do_connect();
         }
         rc = cmds[i].pfn(argc, argv);

         if (cmds[i].flags & CONNECT)
            mmal_vc_deinit();
         return rc;
      }
   }
   fprintf(stderr,"unknown command %s\n", argv[1]);
   return -1;
}
