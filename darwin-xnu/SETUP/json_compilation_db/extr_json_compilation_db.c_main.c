
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int start ;
typedef int FILE ;


 int DEFFILEMODE ;
 int EX_NOINPUT ;
 int EX_UNAVAILABLE ;
 int EX_USAGE ;
 int O_CREAT ;
 int O_EXLOCK ;
 int O_RDWR ;
 int SEEK_END ;
 int SEEK_SET ;
 int S_ISREG (int ) ;
 int err (int ,char*,...) ;
 char* escape_string (char*) ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 int fprintf (int *,char*,...) ;
 int fputs (char*,int *) ;
 size_t fread (char*,int,int,int *) ;
 int free (char*) ;
 int fseeko (int *,int,int ) ;
 int fstat (int,struct stat*) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int open (char const*,int,int ) ;
 scalar_t__ strchr (char*,char) ;
 scalar_t__ strcmp (char*,char const*) ;
 size_t strlen (char const*) ;
 int usage () ;

int main(int argc, char * argv[])
{
 struct stat sb;
 int ret;
 int dstfd;
 FILE *dst = ((void*)0);
 const char *json_output = ((void*)0);
 const char *cwd = ((void*)0);
 const char *input_file = ((void*)0);
 char start[2];
 size_t read_bytes;
 int i;
 size_t input_file_len;

 if (argc < 5) {
  usage();
 }

 json_output = argv[1];
 cwd = argv[2];
 input_file = argv[3];

 argv += 4;
 argc -= 4;

 input_file_len = strlen(input_file);
 if (!(input_file_len > 2 && 0 == strcmp(".c", input_file + input_file_len - 2)) &&
  !(input_file_len > 3 && 0 == strcmp(".cp", input_file + input_file_len - 3)) &&
  !(input_file_len > 4 && 0 == strcmp(".cpp", input_file + input_file_len - 4))) {

  return 0;
 }

 dstfd = open(json_output, O_RDWR | O_CREAT | O_EXLOCK, DEFFILEMODE);
 if (dstfd < 0)
  err(EX_NOINPUT, "open(%s)", json_output);

 ret = fstat(dstfd, &sb);
 if (ret < 0)
  err(EX_NOINPUT, "fstat(%s)", json_output);

 if (!S_ISREG(sb.st_mode))
  err(EX_USAGE, "%s is not a regular file", json_output);

 dst = fdopen(dstfd, "w+");
 if (dst == ((void*)0))
  err(EX_UNAVAILABLE, "fdopen");

 read_bytes = fread(start, sizeof(start[0]), sizeof(start)/sizeof(start[0]), dst);
 if ((read_bytes != sizeof(start)) || (0 != memcmp(start, "[\n", sizeof(start)/sizeof(start[0])))) {

  ret = fseeko(dst, 0, SEEK_SET);
  if (ret < 0)
   err(EX_UNAVAILABLE, "fseeko");

  ret = fputs("[", dst);
  if (ret < 0)
   err(EX_UNAVAILABLE, "fputs");
 } else {

  ret = fseeko(dst, -3, SEEK_END);
  if (ret < 0)
   err(EX_UNAVAILABLE, "fseeko");

  ret = fputs(",", dst);
  if (ret < 0)
   err(EX_UNAVAILABLE, "fputs");
 }

 fprintf(dst, "\n");
 fprintf(dst, "{\n");
 fprintf(dst, "  \"directory\": \"%s\",\n", cwd);
 fprintf(dst, "  \"file\": \"%s\",\n", input_file);
 fprintf(dst, "  \"command\": \"");
 for (i=0; i < argc; i++) {
  bool needs_escape = strchr(argv[i], '\\') || strchr(argv[i], '"') || strchr(argv[i], ' ');

  if (needs_escape) {
   char *escaped_string = escape_string(argv[i]);
   fprintf(dst, "%s\\\"%s\\\"", i == 0 ? "" : " ", escaped_string);
   free(escaped_string);
  } else {
   fprintf(dst, "%s%s", i == 0 ? "" : " ", argv[i]);
  }
 }
 fprintf(dst, "\"\n");
 fprintf(dst, "}\n");
 fprintf(dst, "]\n");

 ret = fclose(dst);
 if (ret < 0)
  err(EX_UNAVAILABLE, "fclose");

 return 0;
}
