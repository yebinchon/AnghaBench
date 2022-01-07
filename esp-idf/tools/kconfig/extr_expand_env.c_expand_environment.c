
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_LEN ;
 scalar_t__ allowed_env_var_name (char const) ;
 int assert (int ) ;
 char* calloc (int,size_t) ;
 int exit (int) ;
 int free (char*) ;
 char* getenv (char*) ;
 char* malloc (int) ;
 int printf (char*,char const*,int,...) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 int strncpy (char*,char const*,size_t) ;

char *expand_environment(const char *input, const char *src_name, int src_line_no)
{
  char *result = malloc(MAX_LEN);

  char *out = result;
  const char *in = input;

  while (*in != '\0') {

    if (out >= result + MAX_LEN - 1) {
      goto too_long;
    }

    if (*in != '$') {

      *out++ = *in++;
      continue;
    }


    in++;
    const char *env_start = in;
    while (allowed_env_var_name(*in)) {
      in++;
    }
    size_t env_len = in - env_start;




    char *env_name = calloc(1, env_len + 1);
    assert(env_name != ((void*)0));
    strncpy(env_name, env_start, env_len);

    const char *value = getenv(env_name);
    if (value == ((void*)0) || strlen(value) == 0) {
      printf("%s:%d: undefined environment variable \"%s\"\n",
             src_name, src_line_no, env_name);
      exit(1);
    }
    free(env_name);
    if (out + strlen(value) >= result + MAX_LEN - 1) {
      goto too_long;
    }
    strcpy(out, value);
    out += strlen(value);
  }

  *out = '\0';

  return result;

too_long:
  printf("%s:%d: Expansion is longer than %d bytes\n",
         src_name, src_line_no, MAX_LEN);
  free(result);
  exit(1);
}
