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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct rmsgpack_read_callbacks {int (* read_int ) (int,void*) ;int (* read_string ) (char*,int /*<<< orphan*/ ,void*) ;int (* read_nil ) (void*) ;int (* read_bool ) (int,void*) ;int (* read_bin ) (char*,int /*<<< orphan*/ ,void*) ;int (* read_uint ) (int,void*) ;} ;
typedef  int ssize_t ;
typedef  int int64_t ;
typedef  int /*<<< orphan*/  RFILE ;

/* Variables and functions */
 int ENOMEM ; 
 int MPF_FIXARRAY ; 
 int MPF_FIXMAP ; 
 int MPF_FIXSTR ; 
 int MPF_MAP32 ; 
 int MPF_NIL ; 
 int FUNC0 (int) ; 
#define  _MPF_ARRAY16 148 
#define  _MPF_ARRAY32 147 
#define  _MPF_BIN16 146 
#define  _MPF_BIN32 145 
#define  _MPF_BIN8 144 
#define  _MPF_FALSE 143 
#define  _MPF_INT16 142 
#define  _MPF_INT32 141 
#define  _MPF_INT64 140 
#define  _MPF_INT8 139 
#define  _MPF_MAP16 138 
#define  _MPF_MAP32 137 
#define  _MPF_NIL 136 
#define  _MPF_STR16 135 
#define  _MPF_STR32 134 
#define  _MPF_STR8 133 
#define  _MPF_TRUE 132 
#define  _MPF_UINT16 131 
#define  _MPF_UINT32 130 
#define  _MPF_UINT64 129 
#define  _MPF_UINT8 128 
 int errno ; 
 int FUNC1 (int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (size_t) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct rmsgpack_read_callbacks*,void*) ; 
 int FUNC5 (int /*<<< orphan*/ *,size_t,char**,int*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int*,size_t) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct rmsgpack_read_callbacks*,void*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int*,int) ; 
 int FUNC9 (int,void*) ; 
 int FUNC10 (char*,int /*<<< orphan*/ ,void*) ; 
 int FUNC11 (char*,int /*<<< orphan*/ ,void*) ; 
 int FUNC12 (int,void*) ; 
 int FUNC13 (void*) ; 
 int FUNC14 (int,void*) ; 
 int FUNC15 (int,void*) ; 
 int FUNC16 (char*,int /*<<< orphan*/ ,void*) ; 
 int FUNC17 (int,void*) ; 
 int FUNC18 (int,void*) ; 

int FUNC19(RFILE *fd,
      struct rmsgpack_read_callbacks *callbacks, void *data)
{
   int rv;
   uint64_t tmp_len  = 0;
   uint64_t tmp_uint = 0;
   int64_t tmp_int   = 0;
   uint8_t type      = 0;
   char *buff        = NULL;

   if (FUNC1(fd, &type, sizeof(uint8_t)) == -1)
      goto error;

   if (type < MPF_FIXMAP)
   {
      if (!callbacks->read_int)
         return 0;
      return callbacks->read_int(type, data);
   }
   else if (type < MPF_FIXARRAY)
   {
      tmp_len = type - MPF_FIXMAP;
      return FUNC7(fd, (uint32_t)tmp_len, callbacks, data);
   }
   else if (type < MPF_FIXSTR)
   {
      tmp_len = type - MPF_FIXARRAY;
      return FUNC4(fd, (uint32_t)tmp_len, callbacks, data);
   }
   else if (type < MPF_NIL)
   {
      ssize_t read_len = 0;
      tmp_len = type - MPF_FIXSTR;
      buff = (char *)FUNC3((size_t)(tmp_len + 1) * sizeof(char));
      if (!buff)
         return -ENOMEM;
      if ((read_len = FUNC1(fd, buff, (ssize_t)tmp_len)) == -1)
      {
         FUNC2(buff);
         goto error;
      }
      buff[read_len] = '\0';
      if (!callbacks->read_string)
      {
         FUNC2(buff);
         return 0;
      }
      return callbacks->read_string(buff, (uint32_t)read_len, data);
   }
   else if (type > MPF_MAP32)
   {
      if (!callbacks->read_int)
         return 0;
      return callbacks->read_int(type - 0xff - 1, data);
   }

   switch (type)
   {
      case _MPF_NIL:
         if (callbacks->read_nil)
            return callbacks->read_nil(data);
         break;
      case _MPF_FALSE:
         if (callbacks->read_bool)
            return callbacks->read_bool(0, data);
         break;
      case _MPF_TRUE:
         if (callbacks->read_bool)
            return callbacks->read_bool(1, data);
         break;
      case _MPF_BIN8:
      case _MPF_BIN16:
      case _MPF_BIN32:
         if ((rv = FUNC5(fd, (size_t)(1 << (type - _MPF_BIN8)),
                     &buff, &tmp_len)) < 0)
            return rv;

         if (callbacks->read_bin)
            return callbacks->read_bin(buff, (uint32_t)tmp_len, data);
         break;
      case _MPF_UINT8:
      case _MPF_UINT16:
      case _MPF_UINT32:
      case _MPF_UINT64:
         tmp_len  = FUNC0(1) << (type - _MPF_UINT8);
         tmp_uint = 0;
         if (FUNC8(fd, &tmp_uint, (size_t)tmp_len) == -1)
            goto error;

         if (callbacks->read_uint)
            return callbacks->read_uint(tmp_uint, data);
         break;
      case _MPF_INT8:
      case _MPF_INT16:
      case _MPF_INT32:
      case _MPF_INT64:
         tmp_len = FUNC0(1) << (type - _MPF_INT8);
         tmp_int = 0;
         if (FUNC6(fd, &tmp_int, (size_t)tmp_len) == -1)
            goto error;

         if (callbacks->read_int)
            return callbacks->read_int(tmp_int, data);
         break;
      case _MPF_STR8:
      case _MPF_STR16:
      case _MPF_STR32:
         if ((rv = FUNC5(fd, (size_t)(1 << (type - _MPF_STR8)), &buff, &tmp_len)) < 0)
            return rv;

         if (callbacks->read_string)
            return callbacks->read_string(buff, (uint32_t)tmp_len, data);
         break;
      case _MPF_ARRAY16:
      case _MPF_ARRAY32:
         if (FUNC8(fd, &tmp_len, 2<<(type - _MPF_ARRAY16)) == -1)
            goto error;
         return FUNC4(fd, (uint32_t)tmp_len, callbacks, data);
      case _MPF_MAP16:
      case _MPF_MAP32:
         if (FUNC8(fd, &tmp_len, 2<<(type - _MPF_MAP16)) == -1)
            goto error;
         return FUNC7(fd, (uint32_t)tmp_len, callbacks, data);
   }

   if (buff)
      FUNC2(buff);
   return 0;

error:
   return -errno;
}