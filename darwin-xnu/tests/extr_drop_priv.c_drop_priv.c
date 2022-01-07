
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct passwd {int pw_gid; int pw_uid; } ;
typedef int gid_t ;


 int INVOKER_GID ;
 int INVOKER_UID ;
 int T_ASSERT_NOTNULL (struct passwd*,char*) ;
 int T_ASSERT_POSIX_SUCCESS (int ,char*,int ) ;
 int T_QUIET ;
 int T_WITH_ERRNO ;
 int _get_sudo_invoker (int ) ;
 struct passwd* getpwnam (char*) ;
 int setgid (int ) ;
 int setuid (int ) ;

void
drop_priv(void)
{




    struct passwd *pw = getpwnam("mobile");
    T_QUIET; T_WITH_ERRNO; T_ASSERT_NOTNULL(pw, "getpwnam(\"mobile\")");
    uid_t lower_uid = pw->pw_uid;
    gid_t lower_gid = pw->pw_gid;

    T_ASSERT_POSIX_SUCCESS(setgid(lower_gid), "Change group to %u", lower_gid);
    T_ASSERT_POSIX_SUCCESS(setuid(lower_uid), "Change user to %u", lower_uid);
}
