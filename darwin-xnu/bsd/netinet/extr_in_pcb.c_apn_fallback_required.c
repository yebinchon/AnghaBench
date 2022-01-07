
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vfs_context_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_12__ {long const tv_sec; } ;
struct TYPE_11__ {int tv_sec; } ;
struct TYPE_10__ {int tv_sec; } ;
struct TYPE_9__ {long const tv_sec; } ;
struct stat64 {int ss_len; TYPE_4__ st_birthtimespec; TYPE_3__ st_ctimespec; TYPE_2__ st_mtimespec; TYPE_1__ st_atimespec; int ss_family; } ;
struct socket {int so_options; } ;
struct sockaddr_storage {int ss_len; TYPE_4__ st_birthtimespec; TYPE_3__ st_ctimespec; TYPE_2__ st_mtimespec; TYPE_1__ st_atimespec; int ss_family; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct rtentry {int rt_ifp; } ;
typedef TYPE_5__* proc_t ;
typedef int lookup_default_addr ;
typedef scalar_t__ boolean_t ;
struct TYPE_13__ {int p_textvp; } ;


 int AF_INET ;
 int AF_INET6 ;
 scalar_t__ APN_FALLBACK_IP_FILTER (struct sockaddr_in*) ;
 scalar_t__ APN_FALLBACK_NOTIF_INTERVAL ;
 scalar_t__ FALSE ;
 int IFNET_IS_CELLULAR (int ) ;
 int LOG_INFO ;
 int SO_NOAPNFALLBK ;
 scalar_t__ TRUE ;
 int VERIFY (int ) ;
 scalar_t__ apn_fallbk_enabled ;
 int apn_fallbk_log (int ) ;
 int bzero (struct stat64*,int) ;
 char* cs_identity_get (TYPE_5__*) ;
 TYPE_5__* kernproc ;
 scalar_t__ last_apn_fallback ;
 scalar_t__ net_uptime () ;
 struct rtentry* rtalloc1 (struct sockaddr*,int ,int ) ;
 int rtfree (struct rtentry*) ;
 int * strchr (char const*,char) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int vfs_context_create (int *) ;
 int vfs_context_rele (int ) ;
 int vn_stat (int ,struct stat64*,int *,int,int ) ;

__attribute__((used)) static boolean_t
apn_fallback_required (proc_t proc, struct socket *so, struct sockaddr_in *p_dstv4)
{
 uint64_t timenow;
 struct sockaddr_storage lookup_default_addr;
 struct rtentry *rt = ((void*)0);

 VERIFY(proc != ((void*)0));

 if (apn_fallbk_enabled == FALSE)
  return FALSE;

 if (proc == kernproc)
  return FALSE;

 if (so && (so->so_options & SO_NOAPNFALLBK))
  return FALSE;

 timenow = net_uptime();
 if ((timenow - last_apn_fallback) < APN_FALLBACK_NOTIF_INTERVAL) {
  apn_fallbk_log((LOG_INFO, "APN fallback notification throttled.\n"));
  return FALSE;
 }

 if (p_dstv4 && APN_FALLBACK_IP_FILTER(p_dstv4))
  return FALSE;


 bzero(&lookup_default_addr, sizeof(lookup_default_addr));
 lookup_default_addr.ss_family = AF_INET6;
 lookup_default_addr.ss_len = sizeof(struct sockaddr_in6);

 rt = rtalloc1((struct sockaddr *)&lookup_default_addr, 0, 0);
 if (((void*)0) == rt) {
  apn_fallbk_log((LOG_INFO, "APN fallback notification could not find "
      "unscoped default IPv6 route.\n"));
  return FALSE;
 }

 if (!IFNET_IS_CELLULAR(rt->rt_ifp)) {
  rtfree(rt);
  apn_fallbk_log((LOG_INFO, "APN fallback notification could not find "
      "unscoped default IPv6 route through cellular interface.\n"));
  return FALSE;
 }






 rtfree(rt);
 rt = ((void*)0);

 bzero(&lookup_default_addr, sizeof(lookup_default_addr));
 lookup_default_addr.ss_family = AF_INET;
 lookup_default_addr.ss_len = sizeof(struct sockaddr_in);

 rt = rtalloc1((struct sockaddr *)&lookup_default_addr, 0, 0);

 if (rt) {
  rtfree(rt);
  rt = ((void*)0);
  apn_fallbk_log((LOG_INFO, "APN fallback notification found unscoped "
      "IPv4 default route!\n"));
  return FALSE;
 }

 {





  const char *bundle_id = cs_identity_get(proc);
  if (bundle_id == ((void*)0) ||
      bundle_id[0] == '\0' ||
      strchr(bundle_id, '.') == ((void*)0) ||
      strncmp(bundle_id, "com.apple.", sizeof("com.apple.") - 1) == 0) {
   apn_fallbk_log((LOG_INFO, "Abort: APN fallback notification found first-"
       "party bundle ID \"%s\"!\n", (bundle_id ? bundle_id : "NULL")));
   return FALSE;
  }
 }

 {






  static const long ipv6_start_date = 1464764400L;
  vfs_context_t context;
  struct stat64 sb;
  int vn_stat_error;

  bzero(&sb, sizeof(struct stat64));
  context = vfs_context_create(((void*)0));
  vn_stat_error = vn_stat(proc->p_textvp, &sb, ((void*)0), 1, context);
  (void)vfs_context_rele(context);

  if (vn_stat_error != 0 ||
      sb.st_atimespec.tv_sec >= ipv6_start_date ||
      sb.st_birthtimespec.tv_sec >= ipv6_start_date) {
   apn_fallbk_log((LOG_INFO, "Abort: APN fallback notification found binary "
       "too recent! (err %d atime %ld mtime %ld ctime %ld birthtime %ld)\n",
       vn_stat_error, sb.st_atimespec.tv_sec, sb.st_mtimespec.tv_sec,
       sb.st_ctimespec.tv_sec, sb.st_birthtimespec.tv_sec));
   return FALSE;
  }
 }
 return TRUE;
}
