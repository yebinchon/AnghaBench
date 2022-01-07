
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct rmsgpack_read_callbacks {int (* read_int ) (int,void*) ;int (* read_string ) (char*,int ,void*) ;int (* read_nil ) (void*) ;int (* read_bool ) (int,void*) ;int (* read_bin ) (char*,int ,void*) ;int (* read_uint ) (int,void*) ;} ;
typedef int ssize_t ;
typedef int int64_t ;
typedef int RFILE ;


 int ENOMEM ;
 int MPF_FIXARRAY ;
 int MPF_FIXMAP ;
 int MPF_FIXSTR ;
 int MPF_MAP32 ;
 int MPF_NIL ;
 int UINT64_C (int) ;
 int errno ;
 int filestream_read (int *,...) ;
 int free (char*) ;
 scalar_t__ malloc (size_t) ;
 int read_array (int *,int ,struct rmsgpack_read_callbacks*,void*) ;
 int read_buff (int *,size_t,char**,int*) ;
 int read_int (int *,int*,size_t) ;
 int read_map (int *,int ,struct rmsgpack_read_callbacks*,void*) ;
 int read_uint (int *,int*,int) ;
 int stub1 (int,void*) ;
 int stub10 (char*,int ,void*) ;
 int stub2 (char*,int ,void*) ;
 int stub3 (int,void*) ;
 int stub4 (void*) ;
 int stub5 (int,void*) ;
 int stub6 (int,void*) ;
 int stub7 (char*,int ,void*) ;
 int stub8 (int,void*) ;
 int stub9 (int,void*) ;

int rmsgpack_read(RFILE *fd,
      struct rmsgpack_read_callbacks *callbacks, void *data)
{
   int rv;
   uint64_t tmp_len = 0;
   uint64_t tmp_uint = 0;
   int64_t tmp_int = 0;
   uint8_t type = 0;
   char *buff = ((void*)0);

   if (filestream_read(fd, &type, sizeof(uint8_t)) == -1)
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
      return read_map(fd, (uint32_t)tmp_len, callbacks, data);
   }
   else if (type < MPF_FIXSTR)
   {
      tmp_len = type - MPF_FIXARRAY;
      return read_array(fd, (uint32_t)tmp_len, callbacks, data);
   }
   else if (type < MPF_NIL)
   {
      ssize_t read_len = 0;
      tmp_len = type - MPF_FIXSTR;
      buff = (char *)malloc((size_t)(tmp_len + 1) * sizeof(char));
      if (!buff)
         return -ENOMEM;
      if ((read_len = filestream_read(fd, buff, (ssize_t)tmp_len)) == -1)
      {
         free(buff);
         goto error;
      }
      buff[read_len] = '\0';
      if (!callbacks->read_string)
      {
         free(buff);
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
      case 136:
         if (callbacks->read_nil)
            return callbacks->read_nil(data);
         break;
      case 143:
         if (callbacks->read_bool)
            return callbacks->read_bool(0, data);
         break;
      case 132:
         if (callbacks->read_bool)
            return callbacks->read_bool(1, data);
         break;
      case 144:
      case 146:
      case 145:
         if ((rv = read_buff(fd, (size_t)(1 << (type - 144)),
                     &buff, &tmp_len)) < 0)
            return rv;

         if (callbacks->read_bin)
            return callbacks->read_bin(buff, (uint32_t)tmp_len, data);
         break;
      case 128:
      case 131:
      case 130:
      case 129:
         tmp_len = UINT64_C(1) << (type - 128);
         tmp_uint = 0;
         if (read_uint(fd, &tmp_uint, (size_t)tmp_len) == -1)
            goto error;

         if (callbacks->read_uint)
            return callbacks->read_uint(tmp_uint, data);
         break;
      case 139:
      case 142:
      case 141:
      case 140:
         tmp_len = UINT64_C(1) << (type - 139);
         tmp_int = 0;
         if (read_int(fd, &tmp_int, (size_t)tmp_len) == -1)
            goto error;

         if (callbacks->read_int)
            return callbacks->read_int(tmp_int, data);
         break;
      case 133:
      case 135:
      case 134:
         if ((rv = read_buff(fd, (size_t)(1 << (type - 133)), &buff, &tmp_len)) < 0)
            return rv;

         if (callbacks->read_string)
            return callbacks->read_string(buff, (uint32_t)tmp_len, data);
         break;
      case 148:
      case 147:
         if (read_uint(fd, &tmp_len, 2<<(type - 148)) == -1)
            goto error;
         return read_array(fd, (uint32_t)tmp_len, callbacks, data);
      case 138:
      case 137:
         if (read_uint(fd, &tmp_len, 2<<(type - 138)) == -1)
            goto error;
         return read_map(fd, (uint32_t)tmp_len, callbacks, data);
   }

   if (buff)
      free(buff);
   return 0;

error:
   return -errno;
}
