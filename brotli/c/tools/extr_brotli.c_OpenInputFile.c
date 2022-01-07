
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;
typedef int BROTLI_BOOL ;


 int BROTLI_FALSE ;
 int BROTLI_TRUE ;
 int MAKE_BINARY (int ) ;
 char* PrintablePath (char const*) ;
 int STDIN_FILENO ;
 int errno ;
 int * fdopen (int ,char*) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char*,char*) ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static BROTLI_BOOL OpenInputFile(const char* input_path, FILE** f) {
  *f = ((void*)0);
  if (!input_path) {
    *f = fdopen(MAKE_BINARY(STDIN_FILENO), "rb");
    return BROTLI_TRUE;
  }
  *f = fopen(input_path, "rb");
  if (!*f) {
    fprintf(stderr, "failed to open input file [%s]: %s\n",
            PrintablePath(input_path), strerror(errno));
    return BROTLI_FALSE;
  }
  return BROTLI_TRUE;
}
