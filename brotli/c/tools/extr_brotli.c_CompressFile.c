
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ available_in; scalar_t__ available_out; scalar_t__ verbosity; int current_input_path; int next_out; int next_in; } ;
typedef TYPE_1__ Context ;
typedef int BrotliEncoderState ;
typedef int BROTLI_BOOL ;


 int BROTLI_FALSE ;
 int BROTLI_OPERATION_FINISH ;
 int BROTLI_OPERATION_PROCESS ;
 int BROTLI_TRUE ;
 int BrotliEncoderCompressStream (int *,int ,scalar_t__*,int *,scalar_t__*,int *,int *) ;
 scalar_t__ BrotliEncoderIsFinished (int *) ;
 int FlushOutput (TYPE_1__*) ;
 int HasMoreInput (TYPE_1__*) ;
 int InitializeBuffers (TYPE_1__*) ;
 int PrintFileProcessingProgress (TYPE_1__*) ;
 char* PrintablePath (int ) ;
 int ProvideInput (TYPE_1__*) ;
 int ProvideOutput (TYPE_1__*) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static BROTLI_BOOL CompressFile(Context* context, BrotliEncoderState* s) {
  BROTLI_BOOL is_eof = BROTLI_FALSE;
  InitializeBuffers(context);
  for (;;) {
    if (context->available_in == 0 && !is_eof) {
      if (!ProvideInput(context)) return BROTLI_FALSE;
      is_eof = !HasMoreInput(context);
    }

    if (!BrotliEncoderCompressStream(s,
        is_eof ? BROTLI_OPERATION_FINISH : BROTLI_OPERATION_PROCESS,
        &context->available_in, &context->next_in,
        &context->available_out, &context->next_out, ((void*)0))) {

      fprintf(stderr, "failed to compress data [%s]\n",
              PrintablePath(context->current_input_path));
      return BROTLI_FALSE;
    }

    if (context->available_out == 0) {
      if (!ProvideOutput(context)) return BROTLI_FALSE;
    }

    if (BrotliEncoderIsFinished(s)) {
      if (!FlushOutput(context)) return BROTLI_FALSE;
      if (context->verbosity > 0) {
        fprintf(stderr, "Compressed ");
        PrintFileProcessingProgress(context);
        fprintf(stderr, "\n");
      }
      return BROTLI_TRUE;
    }
  }
}
