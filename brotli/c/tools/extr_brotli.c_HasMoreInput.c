
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fin; } ;
typedef TYPE_1__ Context ;
typedef int BROTLI_BOOL ;


 int BROTLI_FALSE ;
 int BROTLI_TRUE ;
 scalar_t__ feof (int ) ;

__attribute__((used)) static BROTLI_BOOL HasMoreInput(Context* context) {
  return feof(context->fin) ? BROTLI_FALSE : BROTLI_TRUE;
}
