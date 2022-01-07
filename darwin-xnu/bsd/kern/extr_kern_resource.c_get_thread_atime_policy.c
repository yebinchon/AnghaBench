
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uthread {int uu_flag; } ;


 int IOPOL_ATIME_UPDATES_DEFAULT ;
 int IOPOL_ATIME_UPDATES_OFF ;
 int UT_ATIME_UPDATE ;

__attribute__((used)) static inline int
get_thread_atime_policy(struct uthread *ut)
{
 return (ut->uu_flag & UT_ATIME_UPDATE)? IOPOL_ATIME_UPDATES_OFF: IOPOL_ATIME_UPDATES_DEFAULT;
}
