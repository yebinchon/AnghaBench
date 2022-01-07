
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {void* fout; int * output_buffer; int decoder; void* fin; int * input_buffer; } ;
typedef TYPE_1__ Context ;
typedef scalar_t__ BrotliDecoderResult ;


 int BROTLI_DECODER_PARAM_LARGE_WINDOW ;
 scalar_t__ BROTLI_DECODER_RESULT_NEEDS_MORE_INPUT ;
 scalar_t__ BROTLI_DECODER_RESULT_NEEDS_MORE_OUTPUT ;
 scalar_t__ BROTLI_DECODER_RESULT_SUCCESS ;
 int BUFFER_SIZE ;
 int BrotliDecoderCreateInstance (int ,int ,int ) ;
 scalar_t__ BrotliDecoderDecompressStream (int ,size_t*,int const**,size_t*,int **,int ) ;
 int BrotliDecoderSetParameter (int ,int ,int) ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int cleanup (TYPE_1__*) ;
 int fail (TYPE_1__*,char*) ;
 void* fdopen (int ,char*) ;
 scalar_t__ feof (void*) ;
 scalar_t__ ferror (void*) ;
 size_t fread (int *,int,int,void*) ;
 int fwrite (int *,int,int,void*) ;
 int init (TYPE_1__*) ;
 scalar_t__ malloc (int) ;

int main(int argc, char** argv) {
  Context ctx;
  BrotliDecoderResult result = BROTLI_DECODER_RESULT_NEEDS_MORE_INPUT;
  size_t available_in;
  const uint8_t* next_in;
  size_t available_out = BUFFER_SIZE;
  uint8_t* next_out;
  init(&ctx);

  ctx.fin = fdopen(STDIN_FILENO, "rb");
  if (!ctx.fin) fail(&ctx, "can't open input file");
  ctx.fout = fdopen(STDOUT_FILENO, "wb");
  if (!ctx.fout) fail(&ctx, "can't open output file");
  ctx.input_buffer = (uint8_t*)malloc(BUFFER_SIZE);
  if (!ctx.input_buffer) fail(&ctx, "out of memory / input buffer");
  ctx.output_buffer = (uint8_t*)malloc(BUFFER_SIZE);
  if (!ctx.output_buffer) fail(&ctx, "out of memory / output buffer");
  ctx.decoder = BrotliDecoderCreateInstance(0, 0, 0);
  if (!ctx.decoder) fail(&ctx, "out of memory / decoder");
  BrotliDecoderSetParameter(ctx.decoder, BROTLI_DECODER_PARAM_LARGE_WINDOW, 1);

  next_out = ctx.output_buffer;
  while (1) {
    if (result == BROTLI_DECODER_RESULT_NEEDS_MORE_INPUT) {
      if (feof(ctx.fin)) break;
      available_in = fread(ctx.input_buffer, 1, BUFFER_SIZE, ctx.fin);
      next_in = ctx.input_buffer;
      if (ferror(ctx.fin)) break;
    } else if (result == BROTLI_DECODER_RESULT_NEEDS_MORE_OUTPUT) {
      fwrite(ctx.output_buffer, 1, BUFFER_SIZE, ctx.fout);
      if (ferror(ctx.fout)) break;
      available_out = BUFFER_SIZE;
      next_out = ctx.output_buffer;
    } else {
      break;
    }
    result = BrotliDecoderDecompressStream(
        ctx.decoder, &available_in, &next_in, &available_out, &next_out, 0);
  }
  if (next_out != ctx.output_buffer) {
    fwrite(ctx.output_buffer, 1, next_out - ctx.output_buffer, ctx.fout);
  }
  if ((result == BROTLI_DECODER_RESULT_NEEDS_MORE_OUTPUT) || ferror(ctx.fout)) {
    fail(&ctx, "failed to write output");
  } else if (result != BROTLI_DECODER_RESULT_SUCCESS) {
    fail(&ctx, "corrupt input");
  }
  cleanup(&ctx);
  return 0;
}
