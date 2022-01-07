
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef size_t uint32 ;
typedef int bytea ;
typedef TYPE_1__* TupleDesc ;
struct TYPE_17__ {char* null_print_client; char* delim; scalar_t__ binary; int rowcontext; } ;
struct TYPE_16__ {scalar_t__ attgenerated; scalar_t__ attisdropped; } ;
struct TYPE_15__ {int natts; } ;
typedef int MemoryContext ;
typedef TYPE_2__* Form_pg_attribute ;
typedef int FmgrInfo ;
typedef int Datum ;
typedef TYPE_3__* CopyOutState ;
typedef int CopyCoercionData ;


 scalar_t__ ATTRIBUTE_GENERATED_STORED ;
 size_t AvailableColumnCount (TYPE_1__*) ;
 int CoerceColumnValue (int ,int *) ;
 int CopyAttributeOutText (TYPE_3__*,char*) ;
 int CopySendChar (TYPE_3__*,char) ;
 int CopySendData (TYPE_3__*,int ,int) ;
 int CopySendInt16 (TYPE_3__*,size_t) ;
 int CopySendInt32 (TYPE_3__*,int) ;
 int CopySendString (TYPE_3__*,char*) ;
 int MemoryContextSwitchTo (int ) ;
 char* OutputFunctionCall (int *,int ) ;
 int * SendFunctionCall (int *,int ) ;
 TYPE_2__* TupleDescAttr (TYPE_1__*,size_t) ;
 int VARDATA (int *) ;
 int VARHDRSZ ;
 int VARSIZE (int *) ;

void
AppendCopyRowData(Datum *valueArray, bool *isNullArray, TupleDesc rowDescriptor,
      CopyOutState rowOutputState, FmgrInfo *columnOutputFunctions,
      CopyCoercionData *columnCoercionPaths)
{
 uint32 totalColumnCount = (uint32) rowDescriptor->natts;
 uint32 availableColumnCount = AvailableColumnCount(rowDescriptor);
 uint32 appendedColumnCount = 0;
 uint32 columnIndex = 0;

 MemoryContext oldContext = MemoryContextSwitchTo(rowOutputState->rowcontext);

 if (rowOutputState->binary)
 {
  CopySendInt16(rowOutputState, availableColumnCount);
 }
 for (columnIndex = 0; columnIndex < totalColumnCount; columnIndex++)
 {
  Form_pg_attribute currentColumn = TupleDescAttr(rowDescriptor, columnIndex);
  Datum value = valueArray[columnIndex];
  bool isNull = isNullArray[columnIndex];
  bool lastColumn = 0;

  if (!isNull && columnCoercionPaths != ((void*)0))
  {
   value = CoerceColumnValue(value, &columnCoercionPaths[columnIndex]);
  }

  if (currentColumn->attisdropped



   )
  {
   continue;
  }
  else if (rowOutputState->binary)
  {
   if (!isNull)
   {
    FmgrInfo *outputFunctionPointer = &columnOutputFunctions[columnIndex];
    bytea *outputBytes = SendFunctionCall(outputFunctionPointer, value);

    CopySendInt32(rowOutputState, VARSIZE(outputBytes) - VARHDRSZ);
    CopySendData(rowOutputState, VARDATA(outputBytes),
        VARSIZE(outputBytes) - VARHDRSZ);
   }
   else
   {
    CopySendInt32(rowOutputState, -1);
   }
  }
  else
  {
   if (!isNull)
   {
    FmgrInfo *outputFunctionPointer = &columnOutputFunctions[columnIndex];
    char *columnText = OutputFunctionCall(outputFunctionPointer, value);

    CopyAttributeOutText(rowOutputState, columnText);
   }
   else
   {
    CopySendString(rowOutputState, rowOutputState->null_print_client);
   }

   lastColumn = ((appendedColumnCount + 1) == availableColumnCount);
   if (!lastColumn)
   {
    CopySendChar(rowOutputState, rowOutputState->delim[0]);
   }
  }

  appendedColumnCount++;
 }

 if (!rowOutputState->binary)
 {


  CopySendChar(rowOutputState, '\n');



 }

 MemoryContextSwitchTo(oldContext);
}
