
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * spvc_resources ;
typedef int * spvc_parsed_ir ;
typedef int * spvc_context ;
typedef int * spvc_compiler_options ;
typedef int * spvc_compiler ;
typedef int SpvId ;


 int SPVC_BACKEND_CPP ;
 int SPVC_BACKEND_GLSL ;
 int SPVC_BACKEND_HLSL ;
 int SPVC_BACKEND_JSON ;
 int SPVC_BACKEND_MSL ;
 int SPVC_BACKEND_NONE ;
 int SPVC_CAPTURE_MODE_COPY ;
 int SPVC_CAPTURE_MODE_TAKE_OWNERSHIP ;
 int SPVC_CHECKED_CALL (int ) ;
 int SPVC_CHECKED_CALL_NEGATIVE (int ) ;
 int SPVC_COMPILER_OPTION_HLSL_SHADER_MODEL ;
 int SPVC_COMPILER_OPTION_MSL_PLATFORM ;
 int compile (int *,char*) ;
 int dump_resources (int *,int *) ;
 int error_callback ;
 int fprintf (int ,char*) ;
 int free (int *) ;
 int printf (char*,char const*) ;
 scalar_t__ read_file (char*,int **,size_t*) ;
 int spvc_compiler_create_compiler_options (int *,int **) ;
 int spvc_compiler_create_shader_resources (int *,int **) ;
 int spvc_compiler_install_compiler_options (int *,int *) ;
 int spvc_compiler_options_set_uint (int *,int ,int) ;
 int spvc_context_create (int **) ;
 int spvc_context_create_compiler (int *,int ,int *,int ,int **) ;
 int spvc_context_destroy (int *) ;
 int spvc_context_parse_spirv (int *,int *,size_t,int **) ;
 int spvc_context_set_error_callback (int *,int ,int *) ;
 char* spvc_get_commit_revision_and_timestamp () ;
 int spvc_get_version (unsigned int*,unsigned int*,unsigned int*) ;
 int stderr ;
 unsigned int strtoul (char*,int *,int ) ;

int main(int argc, char **argv)
{
 const char *rev = ((void*)0);

 spvc_context context = ((void*)0);
 spvc_parsed_ir ir = ((void*)0);
 spvc_compiler compiler_glsl = ((void*)0);
 spvc_compiler compiler_hlsl = ((void*)0);
 spvc_compiler compiler_msl = ((void*)0);
 spvc_compiler compiler_cpp = ((void*)0);
 spvc_compiler compiler_json = ((void*)0);
 spvc_compiler compiler_none = ((void*)0);
 spvc_compiler_options options = ((void*)0);
 spvc_resources resources = ((void*)0);
 SpvId *buffer = ((void*)0);
 size_t word_count = 0;

 rev = spvc_get_commit_revision_and_timestamp();
 if (!rev || *rev == '\0')
  return 1;

 printf("Revision: %s\n", rev);

 if (argc != 5)
  return 1;

 if (read_file(argv[1], &buffer, &word_count) < 0)
  return 1;

 unsigned abi_major, abi_minor, abi_patch;
 spvc_get_version(&abi_major, &abi_minor, &abi_patch);
 if (abi_major != strtoul(argv[2], ((void*)0), 0))
 {
  fprintf(stderr, "VERSION_MAJOR mismatch!\n");
  return 1;
 }

 if (abi_minor != strtoul(argv[3], ((void*)0), 0))
 {
  fprintf(stderr, "VERSION_MINOR mismatch!\n");
  return 1;
 }

 if (abi_patch != strtoul(argv[4], ((void*)0), 0))
 {
  fprintf(stderr, "VERSION_PATCH mismatch!\n");
  return 1;
 }

 SPVC_CHECKED_CALL(spvc_context_create(&context));
 spvc_context_set_error_callback(context, error_callback, ((void*)0));
 SPVC_CHECKED_CALL(spvc_context_parse_spirv(context, buffer, word_count, &ir));
 SPVC_CHECKED_CALL(spvc_context_create_compiler(context, SPVC_BACKEND_GLSL, ir, SPVC_CAPTURE_MODE_COPY, &compiler_glsl));
 SPVC_CHECKED_CALL(spvc_context_create_compiler(context, SPVC_BACKEND_HLSL, ir, SPVC_CAPTURE_MODE_COPY, &compiler_hlsl));
 SPVC_CHECKED_CALL(spvc_context_create_compiler(context, SPVC_BACKEND_MSL, ir, SPVC_CAPTURE_MODE_COPY, &compiler_msl));
 SPVC_CHECKED_CALL(spvc_context_create_compiler(context, SPVC_BACKEND_CPP, ir, SPVC_CAPTURE_MODE_COPY, &compiler_cpp));
 SPVC_CHECKED_CALL(spvc_context_create_compiler(context, SPVC_BACKEND_JSON, ir, SPVC_CAPTURE_MODE_COPY, &compiler_json));
 SPVC_CHECKED_CALL(spvc_context_create_compiler(context, SPVC_BACKEND_NONE, ir, SPVC_CAPTURE_MODE_TAKE_OWNERSHIP, &compiler_none));

 SPVC_CHECKED_CALL(spvc_compiler_create_compiler_options(compiler_none, &options));
 SPVC_CHECKED_CALL(spvc_compiler_install_compiler_options(compiler_none, options));
 SPVC_CHECKED_CALL(spvc_compiler_create_compiler_options(compiler_json, &options));
 SPVC_CHECKED_CALL(spvc_compiler_install_compiler_options(compiler_json, options));
 SPVC_CHECKED_CALL(spvc_compiler_create_compiler_options(compiler_cpp, &options));
 SPVC_CHECKED_CALL(spvc_compiler_install_compiler_options(compiler_cpp, options));
 SPVC_CHECKED_CALL(spvc_compiler_create_compiler_options(compiler_msl, &options));
 SPVC_CHECKED_CALL(spvc_compiler_install_compiler_options(compiler_msl, options));
 SPVC_CHECKED_CALL(spvc_compiler_create_compiler_options(compiler_hlsl, &options));
 SPVC_CHECKED_CALL(spvc_compiler_options_set_uint(options, SPVC_COMPILER_OPTION_HLSL_SHADER_MODEL, 50));
 SPVC_CHECKED_CALL_NEGATIVE(spvc_compiler_options_set_uint(options, SPVC_COMPILER_OPTION_MSL_PLATFORM, 1));
 SPVC_CHECKED_CALL(spvc_compiler_install_compiler_options(compiler_hlsl, options));
 SPVC_CHECKED_CALL(spvc_compiler_create_compiler_options(compiler_glsl, &options));
 SPVC_CHECKED_CALL(spvc_compiler_install_compiler_options(compiler_glsl, options));

 SPVC_CHECKED_CALL(spvc_compiler_create_shader_resources(compiler_none, &resources));
 dump_resources(compiler_none, resources);
 compile(compiler_glsl, "GLSL");
 compile(compiler_hlsl, "HLSL");
 compile(compiler_msl, "MSL");
 compile(compiler_json, "JSON");
 compile(compiler_cpp, "CPP");

 spvc_context_destroy(context);
 free(buffer);
 return 0;
}
