
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;
typedef scalar_t__ BROTLI_BOOL ;


 scalar_t__ BROTLI_FALSE ;
 scalar_t__ BROTLI_TRUE ;
 int MAKE_BINARY (int ) ;
 int O_CREAT ;
 int O_EXCL ;
 int O_TRUNC ;
 int O_WRONLY ;
 char* PrintablePath (char const*) ;
 int STDOUT_FILENO ;
 int S_IRUSR ;
 int S_IWUSR ;
 int errno ;
 int * fdopen (int,char*) ;
 int fprintf (int ,char*,char*,char*) ;
 int open (char const*,int,int) ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static BROTLI_BOOL OpenOutputFile(const char* output_path, FILE** f,
                                  BROTLI_BOOL force) {
  int fd;
  *f = ((void*)0);
  if (!output_path) {
    *f = fdopen(MAKE_BINARY(STDOUT_FILENO), "wb");
    return BROTLI_TRUE;
  }
  fd = open(output_path, O_CREAT | (force ? 0 : O_EXCL) | O_WRONLY | O_TRUNC,
            S_IRUSR | S_IWUSR);
  if (fd < 0) {
    fprintf(stderr, "failed to open output file [%s]: %s\n",
            PrintablePath(output_path), strerror(errno));
    return BROTLI_FALSE;
  }
  *f = fdopen(fd, "wb");
  if (!*f) {
    fprintf(stderr, "failed to open output file [%s]: %s\n",
            PrintablePath(output_path), strerror(errno));
    return BROTLI_FALSE;
  }
  return BROTLI_TRUE;
}
