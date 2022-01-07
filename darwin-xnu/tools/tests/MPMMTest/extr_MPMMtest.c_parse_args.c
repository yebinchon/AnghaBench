
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mach_msg_type_number_t ;
typedef scalar_t__ kern_return_t ;
typedef int host_info_t ;
struct TYPE_2__ {int avail_cpus; } ;
typedef TYPE_1__ host_basic_info_data_t ;


 int HOST_BASIC_INFO ;
 int HOST_BASIC_INFO_COUNT ;
 scalar_t__ KERN_SUCCESS ;
 void* TRUE ;
 void* affinity ;
 void* client_delay ;
 void* client_pages ;
 void* client_spin ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ host_info (int ,int ,int ,int *) ;
 int mach_host_self () ;
 int msg_type ;
 int msg_type_complex ;
 int msg_type_inline ;
 int msg_type_trivial ;
 int num_clients ;
 int num_ints ;
 int num_msgs ;
 int num_servers ;
 void* oneway ;
 int portcount ;
 void* save_perfdata ;
 int setcount ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 void* stress_prepost ;
 void* strtoul (char*,int *,int ) ;
 void* threaded ;
 void* timeshare ;
 int usage (char const*) ;
 void* useset ;
 int verbose ;

void parse_args(int argc, char *argv[]) {
 host_basic_info_data_t info;
 mach_msg_type_number_t count;
 kern_return_t result;


 msg_type = msg_type_trivial;
 num_ints = 64;
 num_msgs = 100000;
 client_delay = 0;
 num_clients = 4;

 count = HOST_BASIC_INFO_COUNT;
 result = host_info(mach_host_self(), HOST_BASIC_INFO,
   (host_info_t)&info, &count);
 if (result == KERN_SUCCESS && info.avail_cpus > 1)
  num_servers = info.avail_cpus / 2;
 else
  num_servers = 1;

 const char *progname = argv[0];
 argc--; argv++;
 while (0 < argc) {
  if (0 == strcmp("-verbose", argv[0])) {
   verbose++;
   argc--; argv++;
  } else if (0 == strcmp("-affinity", argv[0])) {
   affinity = TRUE;
   argc--; argv++;
  } else if (0 == strcmp("-timeshare", argv[0])) {
   timeshare = TRUE;
   argc--; argv++;
  } else if (0 == strcmp("-threaded", argv[0])) {
   threaded = TRUE;
   argc--; argv++;
  } else if (0 == strcmp("-oneway", argv[0])) {
   oneway = TRUE;
   argc--; argv++;
  } else if (0 == strcmp("-perf", argv[0])) {
   save_perfdata = TRUE;
   argc--; argv++;
  } else if (0 == strcmp("-type", argv[0])) {
   if (argc < 2)
    usage(progname);
   if (0 == strcmp("trivial", argv[1])) {
    msg_type = msg_type_trivial;
   } else if (0 == strcmp("inline", argv[1])) {
    msg_type = msg_type_inline;
   } else if (0 == strcmp("complex", argv[1])) {
    msg_type = msg_type_complex;
   } else
    usage(progname);
   argc -= 2; argv += 2;
  } else if (0 == strcmp("-numints", argv[0])) {
   if (argc < 2)
    usage(progname);
   num_ints = strtoul(argv[1], ((void*)0), 0);
   argc -= 2; argv += 2;
  } else if (0 == strcmp("-count", argv[0])) {
   if (argc < 2)
    usage(progname);
   num_msgs = strtoul(argv[1], ((void*)0), 0);
   argc -= 2; argv += 2;
  } else if (0 == strcmp("-clients", argv[0])) {
   if (argc < 2)
    usage(progname);
   num_clients = strtoul(argv[1], ((void*)0), 0);
   argc -= 2; argv += 2;
  } else if (0 == strcmp("-servers", argv[0])) {
   if (argc < 2)
    usage(progname);
   num_servers = strtoul(argv[1], ((void*)0), 0);
   argc -= 2; argv += 2;
  } else if (0 == strcmp("-delay", argv[0])) {
   if (argc < 2)
    usage(progname);
   client_delay = strtoul(argv[1], ((void*)0), 0);
   argc -= 2; argv += 2;
  } else if (0 == strcmp("-spin", argv[0])) {
   if (argc < 2)
    usage(progname);
   client_spin = strtoul(argv[1], ((void*)0), 0);
   argc -= 2; argv += 2;
  } else if (0 == strcmp("-pages", argv[0])) {
   if (argc < 2)
    usage(progname);
   client_pages = strtoul(argv[1], ((void*)0), 0);
   argc -= 2; argv += 2;
  } else if (0 == strcmp("-set", argv[0])) {
   if (argc < 3)
    usage(progname);
   setcount = strtoul(argv[1], ((void*)0), 0);
   portcount = strtoul(argv[2], ((void*)0), 0);
   if (setcount <= 0 || portcount <= 0)
    usage(progname);
   useset = TRUE;
   argc -= 3; argv += 3;
  } else if (0 == strcmp("-prepost", argv[0])) {
   stress_prepost = TRUE;
   threaded = TRUE;
   argc--; argv++;
  } else {
   fprintf(stderr, "unknown option '%s'\n", argv[0]);
   usage(progname);
  }
 }

 if (stress_prepost) {
  if (!threaded) {
   fprintf(stderr, "Prepost stress test _must_ be threaded\n");
   exit(1);
  }
  if (portcount < 1 || setcount < 1) {
   fprintf(stderr, "Prepost stress test requires >= 1 port in >= 1 set.\n");
   exit(1);
  }
 }
}
