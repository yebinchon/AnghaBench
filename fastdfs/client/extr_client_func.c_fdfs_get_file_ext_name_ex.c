
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FDFS_FILE_EXT_NAME_MAX_LEN ;
 int * strchr (char const*,char) ;
 int strlen (char const*) ;
 char* strrchr (char const*,char) ;

const char *fdfs_get_file_ext_name_ex(const char *filename,
 const bool twoExtName)
{
 const char *fileExtName;
 const char *p;
 const char *pStart;
 int extNameLen;

 fileExtName = strrchr(filename, '.');
 if (fileExtName == ((void*)0))
 {
  return ((void*)0);
 }

 extNameLen = strlen(fileExtName + 1);
 if (extNameLen > FDFS_FILE_EXT_NAME_MAX_LEN)
 {
  return ((void*)0);
 }

 if (strchr(fileExtName + 1, '/') != ((void*)0))
 {
  return ((void*)0);
 }

 if (!twoExtName)
 {
  return fileExtName + 1;
 }

 pStart = fileExtName - (FDFS_FILE_EXT_NAME_MAX_LEN - extNameLen) - 1;
 if (pStart < filename)
 {
  pStart = filename;
 }

 p = fileExtName - 1;
 while ((p > pStart) && (*p != '.'))
 {
  p--;
 }

 if (p > pStart)
 {
  if (strchr(p + 1, '/') == ((void*)0))
  {
   return p + 1;
  }
 }

 return fileExtName + 1;
}
