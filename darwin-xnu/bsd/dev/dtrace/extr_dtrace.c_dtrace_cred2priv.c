
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zoneid_t ;
typedef int uint32_t ;
typedef scalar_t__ uid_t ;
typedef int cred_t ;


 int B_FALSE ;
 int DTRACE_PRIV_ALL ;
 int DTRACE_PRIV_KERNEL ;
 int DTRACE_PRIV_OWNER ;
 int DTRACE_PRIV_PROC ;
 int DTRACE_PRIV_USER ;
 int DTRACE_PRIV_ZONEOWNER ;
 int PRIV_ALL ;
 int PRIV_DTRACE_KERNEL ;
 int PRIV_DTRACE_PROC ;
 int PRIV_DTRACE_USER ;
 scalar_t__ PRIV_POLICY_ONLY (int *,int ,int ) ;
 int PRIV_PROC_OWNER ;
 int PRIV_PROC_ZONE ;
 scalar_t__ crgetuid (int *) ;
 scalar_t__ crgetzoneid (int *) ;
 int dtrace_are_restrictions_relaxed () ;
 scalar_t__ dtrace_is_restricted () ;

__attribute__((used)) static void
dtrace_cred2priv(cred_t *cr, uint32_t *privp, uid_t *uidp, zoneid_t *zoneidp)
{
 uint32_t priv;

 if (cr == ((void*)0) || PRIV_POLICY_ONLY(cr, PRIV_ALL, B_FALSE)) {
  if (dtrace_is_restricted() && !dtrace_are_restrictions_relaxed()) {
   priv = DTRACE_PRIV_USER | DTRACE_PRIV_PROC | DTRACE_PRIV_OWNER;
  }
  else {
   priv = DTRACE_PRIV_ALL;
  }
  *uidp = 0;
  *zoneidp = 0;
 } else {
  *uidp = crgetuid(cr);
  *zoneidp = crgetzoneid(cr);

  priv = 0;
  if (PRIV_POLICY_ONLY(cr, PRIV_DTRACE_KERNEL, B_FALSE))
   priv |= DTRACE_PRIV_KERNEL | DTRACE_PRIV_USER;
  else if (PRIV_POLICY_ONLY(cr, PRIV_DTRACE_USER, B_FALSE))
   priv |= DTRACE_PRIV_USER;
  if (PRIV_POLICY_ONLY(cr, PRIV_DTRACE_PROC, B_FALSE))
   priv |= DTRACE_PRIV_PROC;
  if (PRIV_POLICY_ONLY(cr, PRIV_PROC_OWNER, B_FALSE))
   priv |= DTRACE_PRIV_OWNER;
  if (PRIV_POLICY_ONLY(cr, PRIV_PROC_ZONE, B_FALSE))
   priv |= DTRACE_PRIV_ZONEOWNER;
 }

 *privp = priv;
}
