
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;
typedef int FILE ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 int CURLE_WRITE_ERROR ;
 int Curl_safefree (char*) ;
 int DIR_CHAR ;
 scalar_t__ EEXIST ;
 int PATH_DELIMITERS ;
 scalar_t__ errno ;
 char* malloc (size_t) ;
 int mkdir (char*,int ) ;
 int msnprintf (char*,size_t,char*,int ,char*) ;
 int show_dir_errno (int *,char*) ;
 int strcpy (char*,char*) ;
 char* strdup (char const*) ;
 size_t strlen (char const*) ;
 char* strtok (char*,int ) ;

CURLcode create_dir_hierarchy(const char *outfile, FILE *errors)
{
  char *tempdir;
  char *tempdir2;
  char *outdup;
  char *dirbuildup;
  CURLcode result = CURLE_OK;
  size_t outlen;

  outlen = strlen(outfile);
  outdup = strdup(outfile);
  if(!outdup)
    return CURLE_OUT_OF_MEMORY;

  dirbuildup = malloc(outlen + 1);
  if(!dirbuildup) {
    Curl_safefree(outdup);
    return CURLE_OUT_OF_MEMORY;
  }
  dirbuildup[0] = '\0';



  tempdir = strtok(outdup, PATH_DELIMITERS);

  while(tempdir != ((void*)0)) {
    tempdir2 = strtok(((void*)0), PATH_DELIMITERS);


    if(tempdir2 != ((void*)0)) {
      size_t dlen = strlen(dirbuildup);
      if(dlen)
        msnprintf(&dirbuildup[dlen], outlen - dlen, "%s%s", DIR_CHAR, tempdir);
      else {
        if(outdup == tempdir)

          strcpy(dirbuildup, tempdir);
        else
          msnprintf(dirbuildup, outlen, "%s%s", DIR_CHAR, tempdir);
      }
      if((-1 == mkdir(dirbuildup, (mode_t)0000750)) && (errno != EEXIST)) {
        show_dir_errno(errors, dirbuildup);
        result = CURLE_WRITE_ERROR;
        break;
      }
    }
    tempdir = tempdir2;
  }

  Curl_safefree(dirbuildup);
  Curl_safefree(outdup);

  return result;
}
