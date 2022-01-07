
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ available_out; } ;
typedef TYPE_1__ Context ;
typedef int BROTLI_BOOL ;


 int BROTLI_FALSE ;
 int BROTLI_TRUE ;
 int WriteOutput (TYPE_1__*) ;

__attribute__((used)) static BROTLI_BOOL FlushOutput(Context* context) {
  if (!WriteOutput(context)) return BROTLI_FALSE;
  context->available_out = 0;
  return BROTLI_TRUE;
}
