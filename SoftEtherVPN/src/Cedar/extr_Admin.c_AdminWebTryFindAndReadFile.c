
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp3 ;
typedef int tmp2 ;
typedef int tmp ;
typedef int relative_path ;
typedef int UINT ;
typedef int BUF ;


 int * AdminWebTryOneFile (char*,char*,int) ;
 int CombinePath (char*,int,char*,char*) ;
 int MAX_PATH ;
 int StartWith (char*,char*) ;
 int StrCpy (char*,int,char*) ;
 int StrLen (char*) ;

BUF *AdminWebTryFindAndReadFile(char *vroot, char *proot, char *url, char *ret_filename, UINT ret_filename_size, bool *is_index_html)
{
 char tmp[MAX_PATH];
 char tmp2[MAX_PATH];
 UINT vroot_len;
 UINT url_len;
 char relative_path[MAX_PATH];
 BUF *b;
 if (vroot == ((void*)0) || proot == ((void*)0) || url == ((void*)0) || ret_filename == ((void*)0) || is_index_html == ((void*)0))
 {
  return ((void*)0);
 }

 *is_index_html = 0;

 if (StartWith(url, vroot) == 0)
 {
  return ((void*)0);
 }

 vroot_len = StrLen(vroot);
 url_len = StrLen(url);

 StrCpy(relative_path, sizeof(relative_path), url + vroot_len);

 if (StartWith(relative_path, "/"))
 {
  char tmp3[MAX_PATH];

  StrCpy(tmp3, sizeof(tmp3), relative_path + 1);
  StrCpy(relative_path, sizeof(relative_path), tmp3);
 }

 CombinePath(tmp, sizeof(tmp), proot, relative_path);


 CombinePath(tmp2, sizeof(tmp2), tmp, "index.html");
 b = AdminWebTryOneFile(tmp2, ret_filename, ret_filename_size);
 if (b != ((void*)0))
 {
  *is_index_html = 1;
  return b;
 }


 StrCpy(tmp2, sizeof(tmp2), tmp);
 b = AdminWebTryOneFile(tmp2, ret_filename, ret_filename_size);
 if (b != ((void*)0))
 {
  return b;
 }

 return ((void*)0);
}
