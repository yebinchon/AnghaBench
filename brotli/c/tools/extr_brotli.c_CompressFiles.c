
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_7__ {scalar_t__ lgwin; int input_file_length; int force_overwrite; int current_output_path; scalar_t__ quality; } ;
typedef TYPE_1__ Context ;
typedef int BrotliEncoderState ;
typedef scalar_t__ BROTLI_BOOL ;


 scalar_t__ BROTLI_FALSE ;
 scalar_t__ BROTLI_MAX_BACKWARD_LIMIT (scalar_t__) ;
 scalar_t__ BROTLI_MAX_WINDOW_BITS ;
 scalar_t__ BROTLI_MIN_WINDOW_BITS ;
 int BROTLI_PARAM_LARGE_WINDOW ;
 int BROTLI_PARAM_LGWIN ;
 int BROTLI_PARAM_QUALITY ;
 int BROTLI_PARAM_SIZE_HINT ;
 scalar_t__ BROTLI_TRUE ;
 int * BrotliEncoderCreateInstance (int *,int *,int *) ;
 int BrotliEncoderDestroyInstance (int *) ;
 int BrotliEncoderSetParameter (int *,int ,scalar_t__) ;
 int CloseFiles (TYPE_1__*,scalar_t__) ;
 scalar_t__ CompressFile (TYPE_1__*,int *) ;
 scalar_t__ DEFAULT_LGWIN ;
 scalar_t__ NextFile (TYPE_1__*) ;
 scalar_t__ OpenFiles (TYPE_1__*) ;
 int STDOUT_FILENO ;
 int fprintf (int ,char*) ;
 scalar_t__ isatty (int ) ;
 int stderr ;

__attribute__((used)) static BROTLI_BOOL CompressFiles(Context* context) {
  while (NextFile(context)) {
    BROTLI_BOOL is_ok = BROTLI_TRUE;
    BrotliEncoderState* s = BrotliEncoderCreateInstance(((void*)0), ((void*)0), ((void*)0));
    if (!s) {
      fprintf(stderr, "out of memory\n");
      return BROTLI_FALSE;
    }
    BrotliEncoderSetParameter(s,
        BROTLI_PARAM_QUALITY, (uint32_t)context->quality);
    if (context->lgwin > 0) {


      if (context->lgwin > BROTLI_MAX_WINDOW_BITS) {
        BrotliEncoderSetParameter(s, BROTLI_PARAM_LARGE_WINDOW, 1u);
      }
      BrotliEncoderSetParameter(s,
          BROTLI_PARAM_LGWIN, (uint32_t)context->lgwin);
    } else {

      uint32_t lgwin = DEFAULT_LGWIN;

      if (context->input_file_length >= 0) {
        lgwin = BROTLI_MIN_WINDOW_BITS;
        while (BROTLI_MAX_BACKWARD_LIMIT(lgwin) <
               (uint64_t)context->input_file_length) {
          lgwin++;
          if (lgwin == BROTLI_MAX_WINDOW_BITS) break;
        }
      }
      BrotliEncoderSetParameter(s, BROTLI_PARAM_LGWIN, lgwin);
    }
    if (context->input_file_length > 0) {
      uint32_t size_hint = context->input_file_length < (1 << 30) ?
          (uint32_t)context->input_file_length : (1u << 30);
      BrotliEncoderSetParameter(s, BROTLI_PARAM_SIZE_HINT, size_hint);
    }
    is_ok = OpenFiles(context);
    if (is_ok && !context->current_output_path &&
        !context->force_overwrite && isatty(STDOUT_FILENO)) {
      fprintf(stderr, "Use -h help. Use -f to force output to a terminal.\n");
      is_ok = BROTLI_FALSE;
    }
    if (is_ok) is_ok = CompressFile(context, s);
    BrotliEncoderDestroyInstance(s);
    if (!CloseFiles(context, is_ok)) is_ok = BROTLI_FALSE;
    if (!is_ok) return BROTLI_FALSE;
  }
  return BROTLI_TRUE;
}
