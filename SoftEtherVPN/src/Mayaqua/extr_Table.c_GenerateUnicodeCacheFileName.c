
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;
typedef int tmp ;
typedef int hashtemp ;
typedef int hashstr ;
typedef int exe ;
typedef int UINT ;
typedef int UCHAR ;


 int BinToStrW (char*,int,int *,int) ;
 int GetExeDirW (char*,int) ;
 int MAX_SIZE ;
 int MD5_SIZE ;
 int MsGetTempDir () ;
 int NormalizePathW (char*,int ,char*) ;
 int SHA1_SIZE ;
 int Sha0 (int *,char*,int) ;
 int StrToUni (char*,int,int ) ;
 int UNICODE_CACHE_FILE ;
 int UniFormat (char*,int,char*,char*,...) ;
 int UniStrCat (char*,int,char*) ;
 int UniStrCpy (char*,int,char*) ;
 int UniStrLen (char*) ;
 int UniStrLower (char*) ;

void GenerateUnicodeCacheFileName(wchar_t *name, UINT size, wchar_t *strfilename, UINT strfilesize, UCHAR *filehash)
{
 wchar_t tmp[MAX_SIZE];
 wchar_t hashstr[64];
 wchar_t hashtemp[MAX_SIZE];
 wchar_t exe[MAX_SIZE];
 UCHAR hash[SHA1_SIZE];

 if (name == ((void*)0) || strfilename == ((void*)0) || filehash == ((void*)0))
 {
  return;
 }

 GetExeDirW(exe, sizeof(exe));
 UniStrCpy(hashtemp, sizeof(hashtemp), strfilename);
 BinToStrW(tmp, sizeof(tmp), filehash, MD5_SIZE);
 UniStrCat(hashtemp, sizeof(hashtemp), tmp);
 UniStrCat(hashtemp, sizeof(hashtemp), exe);
 UniStrLower(hashtemp);

 Sha0(hash, hashtemp, UniStrLen(hashtemp) * sizeof(wchar_t));
 BinToStrW(hashstr, sizeof(hashstr), hash, 4);
 UniFormat(tmp, sizeof(tmp), UNICODE_CACHE_FILE, hashstr);
 UniStrLower(tmp);


 UniStrCpy(exe, sizeof(exe), L"/tmp");




 UniFormat(name, size, L"%s/%s", exe, tmp);
 NormalizePathW(name, size, name);
}
