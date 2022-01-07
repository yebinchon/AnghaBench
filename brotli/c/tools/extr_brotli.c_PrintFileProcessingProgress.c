
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int total_out; int total_in; int current_input_path; } ;
typedef TYPE_1__ Context ;


 int PrintBytes (int ) ;
 char* PrintablePath (int ) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void PrintFileProcessingProgress(Context* context) {
  fprintf(stderr, "[%s]: ", PrintablePath(context->current_input_path));
  PrintBytes(context->total_in);
  fprintf(stderr, " -> ");
  PrintBytes(context->total_out);
}
