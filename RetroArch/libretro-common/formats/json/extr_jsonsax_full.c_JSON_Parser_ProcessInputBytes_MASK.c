#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  byte ;
struct TYPE_6__ {scalar_t__ inputEncoding; int /*<<< orphan*/  decoderData; } ;
typedef  int /*<<< orphan*/  JSON_Status ;
typedef  TYPE_1__* JSON_Parser ;
typedef  int DecoderResultCode ;
typedef  int /*<<< orphan*/  DecoderOutput ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  JSON_Failure ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  JSON_Success ; 
 scalar_t__ JSON_UnknownEncoding ; 
#define  SEQUENCE_COMPLETE 131 
#define  SEQUENCE_INVALID_EXCLUSIVE 130 
#define  SEQUENCE_INVALID_INCLUSIVE 129 
#define  SEQUENCE_PENDING 128 

JSON_Status FUNC7(JSON_Parser parser, const byte* pBytes, size_t length)
{
   /* Note that if length is 0, pBytes is allowed to be NULL. */
   size_t i = 0;
   while (parser->inputEncoding == JSON_UnknownEncoding && i < length)
   {
      if (!FUNC6(parser, pBytes[i]))
         return JSON_Failure;
      i++;
   }
   while (i < length)
   {
      DecoderOutput output     = FUNC3(
            &parser->decoderData, parser->inputEncoding, pBytes[i]);
      DecoderResultCode result = FUNC1(output);
      switch (result)
      {
         case SEQUENCE_PENDING:
            i++;
            break;

         case SEQUENCE_COMPLETE:
            if (!FUNC5(
                     parser, FUNC0(output),
                     FUNC2(output)))
               return JSON_Failure;
            i++;
            break;

         case SEQUENCE_INVALID_INCLUSIVE:
            i++;
            /* fallthrough */
         case SEQUENCE_INVALID_EXCLUSIVE:
            if (!FUNC4(
                     parser, FUNC2(output)))
               return JSON_Failure;
            break;
      }
   }
   return JSON_Success;
}