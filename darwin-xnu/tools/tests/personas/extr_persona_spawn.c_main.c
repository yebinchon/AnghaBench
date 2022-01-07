
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* persona_id; void* persona_gid; } ;
struct persona_args {int flags; void* override_uid; TYPE_1__ kinfo; } ;
typedef int sigset_t ;
typedef int pid_t ;
typedef int pa ;
struct TYPE_4__ {int verbose; int wait_for_children; } ;


 int ERR_CHILD_FAIL ;
 int PA_HAS_GID ;
 int PA_HAS_GROUPS ;
 int PA_HAS_ID ;
 int PA_HAS_UID ;
 int PA_NONE ;
 int PA_OVERRIDE ;
 int PA_SHOULD_VERIFY ;
 int PERSONA_TEST_NAME ;
 int SIGCHLD ;
 int SIG_UNBLOCK ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 void* atoi (int ) ;
 int basename (char*) ;
 int child_main_loop (int,char**) ;
 int err (char*,int ) ;
 int errc (int ,char*,int) ;
 int exit (int) ;
 TYPE_2__ g ;
 int g_child_mtx ;
 scalar_t__ geteuid () ;
 char getopt (int,char**,char*) ;
 void* getuid () ;
 int info (char*) ;
 int infov (char*) ;
 int main_sighandler ;
 int memset (struct persona_args*,int ,int) ;
 int optarg ;
 size_t optind ;
 int parse_groupspec (TYPE_1__*,int ) ;
 int printf (char*,...) ;
 int pthread_mutex_init (int *,int *) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int signal (int ,int ) ;
 int sigprocmask (int ,int *,int *) ;
 int spawn_child (int,char**,struct persona_args*) ;
 scalar_t__ strcmp (char*,char*) ;
 int usage_main (char*,int) ;
 int waitpid (int ,int*,int ) ;

int main(int argc, char **argv)
{
 char ch;
 int ret;

 pthread_mutex_init(&g_child_mtx, ((void*)0));




 g.verbose = 0;
 g.wait_for_children = 1;

 if (argc > 1 && strcmp(argv[1], "child") == 0) {
  optind = 2;
  ret = child_main_loop(argc, argv);
  if (ret != 1)
   exit(ret);
  if (strcmp(argv[optind], "spawn") != 0) {
   printf("child exiting (%s).\n", argv[optind]);
   exit(0);
  }
  optind++;







 }

 if (geteuid() != 0)
  err("%s must be run as root", argv[0] ? basename(argv[0]) : PERSONA_TEST_NAME);

 struct persona_args pa;
 memset(&pa, 0, sizeof(pa));

 pa.flags = PA_NONE;
 pa.kinfo.persona_id = getuid();




 while ((ch = getopt(argc, argv, "Vg:G:I:u:vwh")) != -1) {
  switch (ch) {
  case 'V':
   pa.flags |= PA_SHOULD_VERIFY;
   break;
  case 'g':
   pa.kinfo.persona_gid = atoi(optarg);
   pa.flags |= PA_HAS_GID;
   pa.flags |= PA_OVERRIDE;
   break;
  case 'G':
   ret = parse_groupspec(&pa.kinfo, optarg);
   if (ret < 0)
    err("Invalid groupspec: \"%s\"", optarg);
   pa.flags |= PA_HAS_GROUPS;
   pa.flags |= PA_OVERRIDE;
   break;
  case 'I':
   pa.kinfo.persona_id = atoi(optarg);
   if (pa.kinfo.persona_id == 0)
    err("Invalid Persona ID: %s", optarg);
   pa.flags |= PA_HAS_ID;
   break;
  case 'u':
   pa.override_uid = atoi(optarg);
   pa.flags |= PA_HAS_UID;
   pa.flags |= PA_OVERRIDE;
   break;
  case 'v':
   g.verbose = 1;
   break;
  case 'w':
   g.wait_for_children = 0;
   break;
  case 'h':
  case '?':
   usage_main(argv[0], 1);
  case ':':
  default:
   printf("Invalid option: '%c'\n", ch);
   usage_main(argv[0], 0);
  }
 }

 if (pa.flags & PA_SHOULD_VERIFY)
  pa.flags = ~PA_OVERRIDE;

 if (optind >= argc) {
  printf("No program given!\n");
  usage_main(argv[0], 0);
 }

 argc -= optind;
 for (int i = 0; i < argc; i++) {
  argv[i] = argv[i + optind];
 }

 argv[argc] = ((void*)0);

 ret = spawn_child(argc, argv, &pa);
 if (ret < 0)
  return ret;

 pid_t child_pid = (pid_t)ret;
 int status = 0;
 sigset_t sigset;
 sigemptyset(&sigset);
 sigaddset(&sigset, SIGCHLD);
 sigprocmask(SIG_UNBLOCK, &sigset, ((void*)0));
 signal(SIGCHLD, main_sighandler);

 if (g.wait_for_children) {
  infov("Waiting for child...");
  waitpid(child_pid, &status, 0);
  if (WIFEXITED(status)) {
   status = WEXITSTATUS(status);
   if (status != 0)
    errc(ERR_CHILD_FAIL,
         "Child exited with status: %d", status);
  }
 }

 info("Done.");
 return 0;
}
