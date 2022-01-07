
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef int URL_FILE ;
typedef int FILE ;


 int FGETSFILE ;
 int FREADFILE ;
 int REWINDFILE ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fwrite (char*,int,size_t,int *) ;
 int perror (char*) ;
 int printf (char*,...) ;
 size_t strlen (char*) ;
 int url_fclose (int *) ;
 int url_feof (int *) ;
 int url_fgets (char*,int,int *) ;
 int * url_fopen (char const*,char*) ;
 size_t url_fread (char*,int,int,int *) ;
 int url_rewind (int *) ;

int main(int argc, char *argv[])
{
  URL_FILE *handle;
  FILE *outf;

  size_t nread;
  char buffer[256];
  const char *url;

  if(argc < 2)
    url = "http://192.168.7.3/testfile";
  else
    url = argv[1];


  outf = fopen(FGETSFILE, "wb+");
  if(!outf) {
    perror("couldn't open fgets output file\n");
    return 1;
  }

  handle = url_fopen(url, "r");
  if(!handle) {
    printf("couldn't url_fopen() %s\n", url);
    fclose(outf);
    return 2;
  }

  while(!url_feof(handle)) {
    url_fgets(buffer, sizeof(buffer), handle);
    fwrite(buffer, 1, strlen(buffer), outf);
  }

  url_fclose(handle);

  fclose(outf);



  outf = fopen(FREADFILE, "wb+");
  if(!outf) {
    perror("couldn't open fread output file\n");
    return 1;
  }

  handle = url_fopen("testfile", "r");
  if(!handle) {
    printf("couldn't url_fopen() testfile\n");
    fclose(outf);
    return 2;
  }

  do {
    nread = url_fread(buffer, 1, sizeof(buffer), handle);
    fwrite(buffer, 1, nread, outf);
  } while(nread);

  url_fclose(handle);

  fclose(outf);



  outf = fopen(REWINDFILE, "wb+");
  if(!outf) {
    perror("couldn't open fread output file\n");
    return 1;
  }

  handle = url_fopen("testfile", "r");
  if(!handle) {
    printf("couldn't url_fopen() testfile\n");
    fclose(outf);
    return 2;
  }

  nread = url_fread(buffer, 1, sizeof(buffer), handle);
  fwrite(buffer, 1, nread, outf);
  url_rewind(handle);

  buffer[0]='\n';
  fwrite(buffer, 1, 1, outf);

  nread = url_fread(buffer, 1, sizeof(buffer), handle);
  fwrite(buffer, 1, nread, outf);

  url_fclose(handle);

  fclose(outf);

  return 0;
}
