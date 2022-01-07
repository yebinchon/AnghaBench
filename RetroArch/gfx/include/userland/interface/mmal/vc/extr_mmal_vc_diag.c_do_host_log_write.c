
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mmal_vc_host_log (char const*) ;

__attribute__((used)) static int do_host_log_write(int argc, const char **argv)
{
   if (argc > 2)
      mmal_vc_host_log(argv[2]);
   return 0;
}
