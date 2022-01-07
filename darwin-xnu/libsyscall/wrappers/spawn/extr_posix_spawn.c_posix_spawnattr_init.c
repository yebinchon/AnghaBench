
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct _posix_spawnattr {int dummy; } ;
typedef int posix_spawnattr_t ;
typedef TYPE_1__* _posix_spawnattr_t ;
struct TYPE_2__ {int psa_priority; int psa_memlimit_active; int psa_memlimit_inactive; int psa_reserved; scalar_t__ psa_max_addr; int psa_darwin_role; int psa_qos_clamp; int * psa_persona_info; int * psa_coalition_info; int * psa_mac_extensions; scalar_t__ psa_cpumonitor_interval; scalar_t__ psa_cpumonitor_percent; scalar_t__ psa_thread_limit; scalar_t__ psa_jetsam_flags; int psa_apptype; scalar_t__ flags_padding; scalar_t__ short_padding; scalar_t__ psa_pcontrol; int * psa_ports; int psa_binprefs; scalar_t__ psa_pgroup; scalar_t__ psa_sigmask; scalar_t__ psa_sigdefault; scalar_t__ psa_flags; } ;


 int ENOMEM ;
 int POSIX_SPAWN_DARWIN_ROLE_NONE ;
 int POSIX_SPAWN_PROCESS_TYPE_DEFAULT ;
 int POSIX_SPAWN_PROC_CLAMP_NONE ;
 scalar_t__ malloc (int) ;
 int memset (int ,int ,int) ;

int
posix_spawnattr_init(posix_spawnattr_t *attr)
{
 _posix_spawnattr_t *psattrp = (_posix_spawnattr_t *)attr;
 int err = 0;

 if ((*psattrp = (_posix_spawnattr_t)malloc(sizeof(struct _posix_spawnattr))) == ((void*)0)) {
  err = ENOMEM;
 } else {





  (*psattrp)->psa_flags = 0;





  (*psattrp)->psa_sigdefault = 0;


  (*psattrp)->psa_sigmask = 0;


  (*psattrp)->psa_pgroup = 0;


  memset((*psattrp)->psa_binprefs, 0,
    sizeof((*psattrp)->psa_binprefs));


  (*psattrp)->psa_ports = ((void*)0);





  (*psattrp)->psa_pcontrol = 0;





   (*psattrp)->short_padding = 0;
   (*psattrp)->flags_padding = 0;


  (*psattrp)->psa_apptype = POSIX_SPAWN_PROCESS_TYPE_DEFAULT;


  (*psattrp)->psa_jetsam_flags = 0;
  (*psattrp)->psa_priority = -1;
  (*psattrp)->psa_memlimit_active = -1;
  (*psattrp)->psa_memlimit_inactive = -1;


  (*psattrp)->psa_thread_limit = 0;


  (*psattrp)->psa_cpumonitor_percent = 0;
  (*psattrp)->psa_cpumonitor_interval = 0;


  (*psattrp)->psa_mac_extensions = ((void*)0);


  (*psattrp)->psa_coalition_info = ((void*)0);

  (*psattrp)->psa_persona_info = ((void*)0);
  (*psattrp)->psa_reserved = 1;


  (*psattrp)->psa_qos_clamp = POSIX_SPAWN_PROC_CLAMP_NONE;


  (*psattrp)->psa_darwin_role = POSIX_SPAWN_DARWIN_ROLE_NONE;

  (*psattrp)->psa_max_addr = 0;
 }

 return (err);
}
