
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ccv_bbf_classifier_cascade_t ;
typedef int FILE ;


 int assert (int) ;
 int ccv_bbf_classifier_cascade_write_binary (int *,char*,int) ;
 int * ccv_bbf_read_classifier_cascade (char*) ;
 int fclose (int *) ;
 int fflush (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 int fwrite (char*,int,int,int *) ;
 char* malloc (int) ;
 int printf (char*,unsigned char) ;
 scalar_t__ strcmp (char*,char*) ;
 int write_c (int *) ;
 int write_json (int *) ;

int main(int argc, char** argv)
{
 assert(argc >= 3);
 ccv_bbf_classifier_cascade_t* cascade = ccv_bbf_read_classifier_cascade(argv[1]);
 if (strcmp(argv[2], "bin") == 0)
 {
  assert(argc >= 4);
  int len = ccv_bbf_classifier_cascade_write_binary(cascade, ((void*)0), 0);
  char* s = malloc(len);
  ccv_bbf_classifier_cascade_write_binary(cascade, s, len);
  FILE* w = fopen(argv[3], "w");
  fwrite(s, 1, len, w);
  fclose(w);
  free(s);
 } else if (strcmp(argv[2], "c") == 0) {
  write_c(cascade);
 } else if (strcmp(argv[2], "json") == 0) {
  write_json(cascade);
 } else if (strcmp(argv[2], "cbin") == 0) {
  int len = ccv_bbf_classifier_cascade_write_binary(cascade, ((void*)0), 0);
  char* s = malloc(len);
  ccv_bbf_classifier_cascade_write_binary(cascade, s, len);
  int i;
  for (i = 0; i < len; i++)
   printf("\\x%x", (unsigned char)s[i]);
  fflush(((void*)0));
  free(s);
 }
 return 0;
}
