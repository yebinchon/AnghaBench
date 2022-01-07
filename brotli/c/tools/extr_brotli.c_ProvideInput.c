
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int current_input_path; int fin; int input; int next_in; scalar_t__ available_in; int total_in; } ;
typedef TYPE_1__ Context ;
typedef int BROTLI_BOOL ;


 int BROTLI_FALSE ;
 int BROTLI_TRUE ;
 char* PrintablePath (int ) ;
 int errno ;
 scalar_t__ ferror (int ) ;
 int fprintf (int ,char*,char*,char*) ;
 scalar_t__ fread (int ,int,int ,int ) ;
 int kFileBufferSize ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static BROTLI_BOOL ProvideInput(Context* context) {
  context->available_in =
      fread(context->input, 1, kFileBufferSize, context->fin);
  context->total_in += context->available_in;
  context->next_in = context->input;
  if (ferror(context->fin)) {
    fprintf(stderr, "failed to read input [%s]: %s\n",
            PrintablePath(context->current_input_path), strerror(errno));
    return BROTLI_FALSE;
  }
  return BROTLI_TRUE;
}
