
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
struct kpersona_info {scalar_t__ persona_gmuid; scalar_t__ persona_id; int persona_type; int persona_gid; int persona_ngroups; int* persona_groups; int persona_name; } ;
typedef int pid_t ;
typedef int kinfo ;
typedef int gid_t ;
struct TYPE_2__ {int verbose; } ;


 scalar_t__ KAUTH_UID_NONE ;
 int MAXLOGNAME ;
 int PERSONA_GUEST ;
 int PERSONA_ID_NONE ;
 int PERSONA_INVALID ;
 int PERSONA_MANAGED ;



 int PERSONA_OP_MAX ;

 int PERSONA_PRIV ;
 int PERSONA_SYSTEM ;
 int PERSONA_TYPE_MAX ;
 int PROG_NAME ;
 int atoi (int) ;
 int basename (char*) ;
 int dump_kpersona (char*,struct kpersona_info*) ;
 int err (char*,int,...) ;
 TYPE_1__ g ;
 scalar_t__ geteuid () ;
 char getopt (int,char**,char*) ;
 int memset (struct kpersona_info*,int ,int) ;
 int optarg ;
 int optind ;
 int parse_groupspec (struct kpersona_info*,int) ;
 int persona_op_create (struct kpersona_info*) ;
 int persona_op_destroy (struct kpersona_info*) ;
 int persona_op_lookup (struct kpersona_info*,int ,scalar_t__) ;
 int persona_op_support () ;
 int printf (char*,char) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strncmp (int,char*,int) ;
 int strncpy (int ,int,int ) ;
 int usage_main (char*,char*,int) ;

int main(int argc, char **argv)
{
 char ch;
 int ret;

 const char *op_str = ((void*)0);
 int persona_op = -1;
 struct kpersona_info kinfo;
 uid_t uid = (uid_t)-1;
 pid_t pid = (pid_t)-1;




 g.verbose = 0;

 if (geteuid() != 0)
  err("%s must be run as root", argv[0] ? basename(argv[0]) : PROG_NAME);

 if (argc < 2)
  usage_main(argv[0], "Not enough arguments", 0);

 op_str = argv[1];

 if (strcmp(op_str, "create") == 0)
  persona_op = 131;
 else if (strcmp(op_str, "destroy") == 0)
  persona_op = 130;
 else if (strcmp(op_str, "lookup") == 0)
  persona_op = 129;
 else if (strcmp(op_str, "support") == 0)
  persona_op = 128;
 else if (strcmp(op_str, "help") == 0 || strcmp(op_str, "-h") == 0)
  usage_main(argv[0], ((void*)0), 1);

 if (persona_op <= 0 || persona_op > PERSONA_OP_MAX)
  usage_main(argv[0], "Invalid [op]", 0);

 memset(&kinfo, 0, sizeof(kinfo));
 kinfo.persona_gmuid = KAUTH_UID_NONE;




 optind = 2;
 while ((ch = getopt(argc, argv, "vi:t:p:u:g:l:G:m:h")) != -1) {
  switch (ch) {
  case 'i':
   ret = atoi(optarg);
   if (ret <= 0) {
    ret = PERSONA_ID_NONE;
   }
   kinfo.persona_id = (uid_t)ret;
   break;
  case 't':
   if (strncmp(optarg, "guest", 6) == 0) {
    kinfo.persona_type = PERSONA_GUEST;
   } else if (strncmp(optarg, "managed", 8) == 0) {
    kinfo.persona_type = PERSONA_MANAGED;
   } else if (strncmp(optarg, "priv", 4) == 0) {
    kinfo.persona_type = PERSONA_PRIV;
   } else if (strncmp(optarg, "system", 7) == 0) {
    kinfo.persona_type = PERSONA_SYSTEM;
   } else {
    ret = atoi(optarg);
    if (ret <= PERSONA_INVALID || ret > PERSONA_TYPE_MAX) {
     err("Invalid type specification: %s", optarg);
    }
    kinfo.persona_type = ret;
   }
   break;
  case 'p':
   ret = atoi(optarg);
   if (ret <= 0)
    err("Invalid PID: %s", optarg);
   pid = (pid_t)ret;
   break;
  case 'u':
   ret = atoi(optarg);

   if (ret < 0 && persona_op != 129) {
    err("Invalid UID:%s (%d)", optarg, ret);
   }
   uid = (uid_t)ret;
   break;
  case 'g':
   kinfo.persona_gid = (gid_t)atoi(optarg);
   if (kinfo.persona_gid <= 500)
    err("Invalid GID: %d", kinfo.persona_gid);
   break;
  case 'l':
   strncpy(kinfo.persona_name, optarg, MAXLOGNAME);
   break;
  case 'G':
   ret = parse_groupspec(&kinfo, optarg);
   if (ret < 0)
    err("Invalid groupspec: \"%s\"", optarg);
   break;
  case 'm':
   ret = atoi(optarg);
   if (ret < 0)
    err("Invalid group membership ID: %s", optarg);
   kinfo.persona_gmuid = (uid_t)ret;
   break;
  case 'v':
   g.verbose = 1;
   break;
  case 'h':
  case '?':
   usage_main(argv[0], ((void*)0), 1);
  case ':':
  default:
   printf("Invalid option: '%c'\n", ch);
   usage_main(argv[0], ((void*)0), 0);
  }
 }

 if (uid == (uid_t)-1 && persona_op != 129) {
  uid = kinfo.persona_id;
 }

 if (kinfo.persona_gmuid != KAUTH_UID_NONE && kinfo.persona_ngroups == 0) {




  kinfo.persona_ngroups = 1;
  if (kinfo.persona_gid)
   kinfo.persona_groups[0] = kinfo.persona_gid;
  else
   kinfo.persona_groups[0] = kinfo.persona_id;
 }

 if (g.verbose)
  dump_kpersona("Input persona:", &kinfo);

 switch (persona_op) {
 case 131:
  ret = persona_op_create(&kinfo);
  break;
 case 130:
  ret = persona_op_destroy(&kinfo);
  break;
 case 129:
  ret = persona_op_lookup(&kinfo, pid, uid);
  break;
 case 128:
  ret = persona_op_support();
  break;
 default:
  err("Invalid persona op: %d", persona_op);
 }

 return ret;
}
