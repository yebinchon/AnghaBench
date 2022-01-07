
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int ntsid_t ;
typedef int guid_t ;
typedef int gid_t ;


 int ENOTSUP ;
 int FREE (char*,int ) ;
 int M_TEMP ;
 int NFS_IDMAP_CTRL_USE_IDMAP_SERVICE ;
 int kauth_cred_gid2guid (int ,int *) ;
 int kauth_cred_grnam2guid (char*,int *) ;
 int kauth_cred_ntsid2guid (int *,int *) ;
 int kauth_cred_pwnam2guid (char*,int *) ;
 int kauth_cred_uid2guid (int ,int *) ;
 int kauth_null_guid ;
 long nfs4_fallback_name (char*,int ) ;
 char* nfs4_map_domain (char*,char**) ;
 int nfs4_mapid_log (int,char*,int,int *) ;
 int nfs4_wkid2sid (char*,int *) ;
 int nfs_idmap_ctrl ;
 int strtol (char*,int *,int) ;

int
nfs4_id2guid( char *id, guid_t *guidp, int isgroup)
{
 int error = 0;
 ntsid_t sid;
 long num;
 char *p, *at, *new_id = ((void*)0);

 *guidp = kauth_null_guid;






 num = 1;
 at = ((void*)0);
 p = id;
 while (*p) {
  if ((*p < '0') || (*p > '9'))
   num = 0;
  if (*p == '@')
   at = p;
  p++;
 }

 if (num) {

  num = *id ? strtol(id, ((void*)0), 10) : -2;
  if (isgroup)
   error = kauth_cred_gid2guid((gid_t)num, guidp);
  else
   error = kauth_cred_uid2guid((uid_t)num, guidp);
  nfs4_mapid_log(error, id, isgroup, guidp);
  return (error);
 }


 error = nfs4_wkid2sid(id, &sid);
 if (!error) {
  error = kauth_cred_ntsid2guid(&sid, guidp);
  nfs4_mapid_log(error, id, 1, guidp);
  return (error);
 }


 if (at && at[1]) {
  new_id = nfs4_map_domain(id, &at);
  if (new_id)
   id = new_id;
 }


 if (nfs_idmap_ctrl & NFS_IDMAP_CTRL_USE_IDMAP_SERVICE) {





  if (isgroup)
   error = kauth_cred_grnam2guid(id, guidp);
  else
   error = kauth_cred_pwnam2guid(id, guidp);
  nfs4_mapid_log(error, id, isgroup, guidp);
 } else {
  error = ENOTSUP;
 }

 if (error) {



  num = nfs4_fallback_name(id, at != ((void*)0));
  if (isgroup)
   error = kauth_cred_gid2guid((gid_t)num, guidp);
  else
   error = kauth_cred_uid2guid((uid_t)num, guidp);
  nfs4_mapid_log(error, id, isgroup, guidp);
 }



 if (at && *at == '\0')
  *at = '@';


 if (new_id)
  FREE(new_id, M_TEMP);

 return (error);
}
