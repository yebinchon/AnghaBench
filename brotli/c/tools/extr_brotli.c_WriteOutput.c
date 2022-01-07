
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t total_out; int current_output_path; int fout; scalar_t__ output; scalar_t__ test_integrity; scalar_t__ next_out; } ;
typedef TYPE_1__ Context ;
typedef int BROTLI_BOOL ;


 int BROTLI_FALSE ;
 int BROTLI_TRUE ;
 char* PrintablePath (int ) ;
 int errno ;
 scalar_t__ ferror (int ) ;
 int fprintf (int ,char*,char*,char*) ;
 int fwrite (scalar_t__,int,size_t,int ) ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static BROTLI_BOOL WriteOutput(Context* context) {
  size_t out_size = (size_t)(context->next_out - context->output);
  context->total_out += out_size;
  if (out_size == 0) return BROTLI_TRUE;
  if (context->test_integrity) return BROTLI_TRUE;

  fwrite(context->output, 1, out_size, context->fout);
  if (ferror(context->fout)) {
    fprintf(stderr, "failed to write output [%s]: %s\n",
            PrintablePath(context->current_output_path), strerror(errno));
    return BROTLI_FALSE;
  }
  return BROTLI_TRUE;
}
