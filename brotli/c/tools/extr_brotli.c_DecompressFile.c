
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ available_in; scalar_t__ verbosity; int next_out; int available_out; int next_in; int current_input_path; } ;
typedef TYPE_1__ Context ;
typedef int BrotliDecoderState ;
typedef scalar_t__ BrotliDecoderResult ;
typedef int BROTLI_BOOL ;


 scalar_t__ BROTLI_DECODER_RESULT_NEEDS_MORE_INPUT ;
 scalar_t__ BROTLI_DECODER_RESULT_NEEDS_MORE_OUTPUT ;
 scalar_t__ BROTLI_DECODER_RESULT_SUCCESS ;
 int BROTLI_FALSE ;
 int BROTLI_TRUE ;
 scalar_t__ BrotliDecoderDecompressStream (int *,scalar_t__*,int *,int *,int *,int ) ;
 int FlushOutput (TYPE_1__*) ;
 scalar_t__ HasMoreInput (TYPE_1__*) ;
 int InitializeBuffers (TYPE_1__*) ;
 int PrintFileProcessingProgress (TYPE_1__*) ;
 char* PrintablePath (int ) ;
 int ProvideInput (TYPE_1__*) ;
 int ProvideOutput (TYPE_1__*) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static BROTLI_BOOL DecompressFile(Context* context, BrotliDecoderState* s) {
  BrotliDecoderResult result = BROTLI_DECODER_RESULT_NEEDS_MORE_INPUT;
  InitializeBuffers(context);
  for (;;) {
    if (result == BROTLI_DECODER_RESULT_NEEDS_MORE_INPUT) {
      if (!HasMoreInput(context)) {
        fprintf(stderr, "corrupt input [%s]\n",
                PrintablePath(context->current_input_path));
        return BROTLI_FALSE;
      }
      if (!ProvideInput(context)) return BROTLI_FALSE;
    } else if (result == BROTLI_DECODER_RESULT_NEEDS_MORE_OUTPUT) {
      if (!ProvideOutput(context)) return BROTLI_FALSE;
    } else if (result == BROTLI_DECODER_RESULT_SUCCESS) {
      if (!FlushOutput(context)) return BROTLI_FALSE;
      if (context->available_in != 0 || HasMoreInput(context)) {
        fprintf(stderr, "corrupt input [%s]\n",
                PrintablePath(context->current_input_path));
        return BROTLI_FALSE;
      }
      if (context->verbosity > 0) {
        fprintf(stderr, "Decompressed ");
        PrintFileProcessingProgress(context);
        fprintf(stderr, "\n");
      }
      return BROTLI_TRUE;
    } else {
      fprintf(stderr, "corrupt input [%s]\n",
              PrintablePath(context->current_input_path));
      return BROTLI_FALSE;
    }

    result = BrotliDecoderDecompressStream(s, &context->available_in,
        &context->next_in, &context->available_out, &context->next_out, 0);
  }
}
