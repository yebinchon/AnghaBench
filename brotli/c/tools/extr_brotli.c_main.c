
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef char uint8_t ;
struct TYPE_5__ {int quality; int lgwin; int longest_path_len; int argc; char** argv; char* modified_path; char* buffer; char* input; char* output; void* iterator_error; int suffix; int * fout; int * fin; int * current_output_path; int * current_input_path; scalar_t__ ignore; scalar_t__ iterator; scalar_t__ input_count; scalar_t__* not_input_indices; int * output_path; void* large_window; void* decompress; void* write_to_stdout; void* test_integrity; void* copy_stat; void* junk_source; void* force_overwrite; scalar_t__ verbosity; } ;
typedef TYPE_1__ Context ;
typedef int Command ;
typedef int BROTLI_BOOL ;


 void* BROTLI_FALSE ;
 void* BROTLI_TRUE ;







 int CompressFiles (TYPE_1__*) ;
 int DEFAULT_SUFFIX ;
 int DecompressFiles (TYPE_1__*) ;
 int FileName (char*) ;
 int MAX_OPTIONS ;
 int ParseParams (TYPE_1__*) ;
 int PrintHelp (int ,int) ;
 int PrintVersion () ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 int kFileBufferSize ;
 scalar_t__ malloc (int) ;
 int stderr ;
 int strlen (int ) ;

int main(int argc, char** argv) {
  Command command;
  Context context;
  BROTLI_BOOL is_ok = BROTLI_TRUE;
  int i;

  context.quality = 11;
  context.lgwin = -1;
  context.verbosity = 0;
  context.force_overwrite = BROTLI_FALSE;
  context.junk_source = BROTLI_FALSE;
  context.copy_stat = BROTLI_TRUE;
  context.test_integrity = BROTLI_FALSE;
  context.write_to_stdout = BROTLI_FALSE;
  context.decompress = BROTLI_FALSE;
  context.large_window = BROTLI_FALSE;
  context.output_path = ((void*)0);
  context.suffix = DEFAULT_SUFFIX;
  for (i = 0; i < MAX_OPTIONS; ++i) context.not_input_indices[i] = 0;
  context.longest_path_len = 1;
  context.input_count = 0;

  context.argc = argc;
  context.argv = argv;
  context.modified_path = ((void*)0);
  context.iterator = 0;
  context.ignore = 0;
  context.iterator_error = BROTLI_FALSE;
  context.buffer = ((void*)0);
  context.current_input_path = ((void*)0);
  context.current_output_path = ((void*)0);
  context.fin = ((void*)0);
  context.fout = ((void*)0);

  command = ParseParams(&context);

  if (command == 134 || command == 133 ||
      command == 129) {
    if (is_ok) {
      size_t modified_path_len =
          context.longest_path_len + strlen(context.suffix) + 1;
      context.modified_path = (char*)malloc(modified_path_len);
      context.buffer = (uint8_t*)malloc(kFileBufferSize * 2);
      if (!context.modified_path || !context.buffer) {
        fprintf(stderr, "out of memory\n");
        is_ok = BROTLI_FALSE;
      } else {
        context.input = context.buffer;
        context.output = context.buffer + kFileBufferSize;
      }
    }
  }

  if (!is_ok) command = 130;

  switch (command) {
    case 130:
      break;

    case 128:
      PrintVersion();
      break;

    case 134:
      is_ok = CompressFiles(&context);
      break;

    case 133:
    case 129:
      is_ok = DecompressFiles(&context);
      break;

    case 132:
    case 131:
    default:
      is_ok = (command == 132);
      PrintHelp(FileName(argv[0]), is_ok);
      break;
  }

  if (context.iterator_error) is_ok = BROTLI_FALSE;

  free(context.modified_path);
  free(context.buffer);

  if (!is_ok) exit(1);
  return 0;
}
