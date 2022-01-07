
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct kpersona_info {int persona_ngroups; int persona_name; scalar_t__ persona_gmuid; int * persona_groups; int persona_gid; int persona_type; int persona_id; int persona_info_version; } ;


 int PA_HAS_GID ;
 int PA_HAS_GROUPS ;
 int PA_HAS_ID ;
 int PA_HAS_LOGIN ;
 int PA_HAS_TYPE ;
 int info (char*,...) ;
 int info_cont (char*,...) ;
 int info_end () ;
 int info_start (char*,int) ;

__attribute__((used)) static inline void _dump_kpersona(const char *msg, uint32_t flags, const struct kpersona_info *ki)
{
 if (msg)
  info("%s", msg);
 info("\t kpersona_info (v%d) {", ki->persona_info_version);
 info("\t\t     %cid:  %d", flags & PA_HAS_ID ? '+' : '-', ki->persona_id);
 info("\t\t     %ctype:  %d", flags & PA_HAS_TYPE ? '+' : '-', ki->persona_type);
 info("\t\t    %cgid:  %d", flags & PA_HAS_GID ? '+' : '-', ki->persona_gid);

 info_start("\t\t  ngroups:  %d", ki->persona_ngroups);
 for (int i = 0; i < ki->persona_ngroups; i++) {
  if (i == 0) info_cont(" {");
  info_cont(" %d", ki->persona_groups[i]);
 }
 if (ki->persona_ngroups > 0)
  info_cont(" }");
 info_end();

 info("\t\t  %cgmuid: %d (0x%x)", flags & PA_HAS_GROUPS ? '+' : '-',
      (int)ki->persona_gmuid, ki->persona_gmuid);
 info("\t\t  %clogin: \"%s\"", flags & PA_HAS_LOGIN ? '+' : '-', ki->persona_name);
 info("\t }");
}
