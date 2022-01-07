
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kpersona_info {int dummy; } ;
struct persona_args {int flags; int override_uid; struct kpersona_info kinfo; } ;


 int PA_HAS_UID ;
 int _dump_kpersona (int *,int,struct kpersona_info const*) ;
 int info (char*,...) ;

__attribute__((used)) static inline void dump_persona_args(const char *msg, const struct persona_args *pa)
{
 const struct kpersona_info *ki = &pa->kinfo;

 if (msg)
  info("%s", msg);
 info("\t flags: 0x%x", pa->flags);
 info("\t %cuid: %d", pa->flags & PA_HAS_UID ? '+' : '-', pa->override_uid);
 _dump_kpersona(((void*)0), pa->flags, ki);
}
