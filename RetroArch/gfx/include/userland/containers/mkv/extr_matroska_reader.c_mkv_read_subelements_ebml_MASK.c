#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int int64_t ;
typedef  int /*<<< orphan*/  doctype ;
struct TYPE_10__ {TYPE_1__* priv; } ;
typedef  TYPE_2__ VC_CONTAINER_T ;
typedef  scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_11__ {int is_doctype_valid; } ;
typedef  TYPE_3__ VC_CONTAINER_MODULE_T ;
struct TYPE_9__ {TYPE_3__* module; } ;
typedef  int MKV_ELEMENT_ID_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int MKV_ELEMENT_ID_DOCTYPE ; 
#define  MKV_ELEMENT_ID_DOCTYPE_READ_VERSION 133 
#define  MKV_ELEMENT_ID_DOCTYPE_VERSION 132 
#define  MKV_ELEMENT_ID_EBML_MAX_ID_LENGTH 131 
#define  MKV_ELEMENT_ID_EBML_MAX_SIZE_LENGTH 130 
#define  MKV_ELEMENT_ID_EBML_READ_VERSION 129 
#define  MKV_ELEMENT_ID_EBML_VERSION 128 
 scalar_t__ FUNC1 (TYPE_2__*,char*,int,char*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ; 
 scalar_t__ VC_CONTAINER_SUCCESS ; 
 scalar_t__ FUNC3 (TYPE_2__*,int,int*) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC5( VC_CONTAINER_T *p_ctx, MKV_ELEMENT_ID_T id, int64_t size )
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   uint64_t value;

   /* Deal with DocType first since it's a special case */
   if(id == MKV_ELEMENT_ID_DOCTYPE)
   {
      char doctype[] = "matroska doctype";

      /* Check we've got the right doctype string for matroska */
      if(size <= 0) goto unknown_doctype;
      if(size > (int)sizeof(doctype)) goto unknown_doctype;
      if((int)FUNC1(p_ctx, doctype, size, "string") != size) return FUNC2(p_ctx);
      if((size != sizeof("matroska")-1 || FUNC4(doctype, "matroska", (int)size)) &&
         (size != sizeof("webm")-1 || FUNC4(doctype, "webm", (int)size)))
         goto unknown_doctype;

      module->is_doctype_valid = true;
      return VC_CONTAINER_SUCCESS;

 unknown_doctype:
      FUNC0(p_ctx, "invalid doctype");
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
   }

   /* The rest are just unsigned integers */
   status = FUNC3(p_ctx, size, &value);
   if(status != VC_CONTAINER_SUCCESS) return status;

   switch(id)
   {
   case MKV_ELEMENT_ID_EBML_VERSION:
   case MKV_ELEMENT_ID_EBML_READ_VERSION:
      if(value != 1) return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
      break;
   case MKV_ELEMENT_ID_EBML_MAX_ID_LENGTH:
      if(value > 4) return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
      break;
   case MKV_ELEMENT_ID_EBML_MAX_SIZE_LENGTH:
      if(value > 8) return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
      break;
   case MKV_ELEMENT_ID_DOCTYPE_VERSION:
   case MKV_ELEMENT_ID_DOCTYPE_READ_VERSION:
   default: break;
   }

   return FUNC2(p_ctx);
}