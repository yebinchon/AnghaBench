
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int functionname; int linenumber; scalar_t__ filename; scalar_t__ hint; scalar_t__ detail; scalar_t__ message; int code; } ;
struct TYPE_6__ {int elevel; int assoc_context; int funcname; int lineno; void* filename; void* hint; void* detail; void* message; int sqlerrcode; } ;
typedef TYPE_1__ ErrorData ;
typedef TYPE_2__ DeferredErrorMessage ;


 int ErrorContext ;
 int ThrowErrorData (TYPE_1__*) ;
 TYPE_1__* palloc0 (int) ;
 void* pstrdup (scalar_t__) ;

void
RaiseDeferredErrorInternal(DeferredErrorMessage *error, int elevel)
{
 ErrorData *errorData = palloc0(sizeof(ErrorData));

 errorData->sqlerrcode = error->code;
 errorData->elevel = elevel;
 errorData->message = pstrdup(error->message);
 if (error->detail)
 {
  errorData->detail = pstrdup(error->detail);
 }
 if (error->hint)
 {
  errorData->hint = pstrdup(error->hint);
 }
 errorData->filename = pstrdup(error->filename);
 errorData->lineno = error->linenumber;
 errorData->funcname = error->functionname;

 errorData->assoc_context = ErrorContext;

 ThrowErrorData(errorData);
}
