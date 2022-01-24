#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  unsigned int uint64_t ;
typedef  size_t uint32_t ;
struct ups_data {int const* patch_data; int const* source_data; int* target_data; unsigned int patch_length; unsigned int source_length; unsigned int target_length; int patch_offset; unsigned int source_offset; unsigned int target_offset; size_t patch_checksum; size_t source_checksum; size_t target_checksum; } ;
typedef  enum patch_error { ____Placeholder_patch_error } patch_error ;

/* Variables and functions */
 int PATCH_PATCH_INVALID ; 
 int PATCH_SOURCE_INVALID ; 
 int PATCH_SUCCESS ; 
 int PATCH_TARGET_ALLOC_FAILED ; 
 int PATCH_TARGET_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 scalar_t__ FUNC1 (size_t) ; 
 scalar_t__ FUNC2 (struct ups_data*) ; 
 size_t FUNC3 (struct ups_data*) ; 
 int FUNC4 (struct ups_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct ups_data*,int) ; 

__attribute__((used)) static enum patch_error FUNC6(
      const uint8_t *patchdata, uint64_t patchlength,
      const uint8_t *sourcedata, uint64_t sourcelength,
      uint8_t **targetdata, uint64_t *targetlength)
{
   size_t i;
   struct ups_data data;
   unsigned source_read_length;
   unsigned target_read_length;
   uint32_t patch_result_checksum;
   uint32_t patch_read_checksum  = 0;
   uint32_t source_read_checksum = 0;
   uint32_t target_read_checksum = 0;

   data.patch_data      = patchdata;
   data.source_data     = sourcedata;
   data.target_data     = *targetdata;
   data.patch_length    = (unsigned)patchlength;
   data.source_length   = (unsigned)sourcelength;
   data.target_length   = (unsigned)*targetlength;
   data.patch_offset    = 0;
   data.source_offset   = 0;
   data.target_offset   = 0;
   data.patch_checksum  = ~0;
   data.source_checksum = ~0;
   data.target_checksum = ~0;

   if (data.patch_length < 18)
      return PATCH_PATCH_INVALID;

   if (
         (FUNC3(&data) != 'U') ||
         (FUNC3(&data) != 'P') ||
         (FUNC3(&data) != 'S') ||
         (FUNC3(&data) != '1')
      )
      return PATCH_PATCH_INVALID;

   source_read_length = (unsigned)FUNC2(&data);
   target_read_length = (unsigned)FUNC2(&data);

   if (     (data.source_length != source_read_length)
         && (data.source_length != target_read_length))
      return PATCH_SOURCE_INVALID;

   *targetlength = (data.source_length == source_read_length ?
         target_read_length : source_read_length);

   if (data.target_length < *targetlength){
      uint8_t *prov=(uint8_t*)FUNC1((size_t)*targetlength);
      if(prov!=NULL){
         FUNC0(*targetdata);
         *targetdata=prov;
         data.target_data=prov;
      }else
         return PATCH_TARGET_ALLOC_FAILED;
   }

   data.target_length = (unsigned)*targetlength;
   
   while (data.patch_offset < data.patch_length - 12)
   {
      unsigned length = (unsigned)FUNC2(&data);
      while (length--)
         FUNC5(&data, FUNC4(&data));
      while (true)
      {
         uint8_t patch_xor = FUNC3(&data);
         FUNC5(&data, patch_xor ^ FUNC4(&data));
         if (patch_xor == 0)
            break;
      }
   }

   while (data.source_offset < data.source_length)
      FUNC5(&data, FUNC4(&data));
   while (data.target_offset < data.target_length)
      FUNC5(&data, FUNC4(&data));

   for (i = 0; i < 4; i++)
      source_read_checksum |= FUNC3(&data) << (i * 8);
   for (i = 0; i < 4; i++)
      target_read_checksum |= FUNC3(&data) << (i * 8);

   patch_result_checksum = ~data.patch_checksum;
   data.source_checksum  = ~data.source_checksum;
   data.target_checksum  = ~data.target_checksum;

   for (i = 0; i < 4; i++)
      patch_read_checksum |= FUNC3(&data) << (i * 8);

   if (patch_result_checksum != patch_read_checksum)
      return PATCH_PATCH_INVALID;

   if (data.source_checksum == source_read_checksum
         && data.source_length == source_read_length)
   {
      if (data.target_checksum == target_read_checksum
            && data.target_length == target_read_length)
         return PATCH_SUCCESS;
      return PATCH_TARGET_INVALID;
   }
   else if (data.source_checksum == target_read_checksum
         && data.source_length == target_read_length)
   {
      if (data.target_checksum == source_read_checksum
            && data.target_length == source_read_length)
         return PATCH_SUCCESS;
      return PATCH_TARGET_INVALID;
   }

   return PATCH_SOURCE_INVALID;
}