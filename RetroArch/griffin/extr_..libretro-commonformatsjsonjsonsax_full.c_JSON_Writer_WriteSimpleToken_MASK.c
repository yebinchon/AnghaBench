#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  byte ;
struct TYPE_5__ {scalar_t__ error; int outputEncoding; int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  Symbol ;
typedef  TYPE_1__* JSON_Writer ;
typedef  int /*<<< orphan*/  JSON_Status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ JSON_Error_None ; 
 int /*<<< orphan*/  JSON_Failure ; 
 int /*<<< orphan*/  JSON_Success ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/  const* const,size_t) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int) ; 
 int WRITER_IN_PROTECTED_API ; 
 int WRITER_STARTED ; 
 int /*<<< orphan*/  WriterState ; 

__attribute__((used)) static JSON_Status FUNC6(JSON_Writer writer, Symbol token, const byte* const* encodings, size_t length)
{
   JSON_Status status = JSON_Failure;
   if (writer && !FUNC0(writer->state, WRITER_IN_PROTECTED_API) && writer->error == JSON_Error_None)
   {
      size_t encodedLength = length * (size_t)FUNC5(writer->outputEncoding);
      FUNC4(WriterState, writer->state, WRITER_STARTED | WRITER_IN_PROTECTED_API);
      if (FUNC2(writer, token) &&
            FUNC1(writer, encodings[writer->outputEncoding - 1], encodedLength))
         status = JSON_Success;
      FUNC3(WriterState, writer->state, WRITER_IN_PROTECTED_API);
   }
   return status;
}