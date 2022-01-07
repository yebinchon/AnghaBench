
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {unsigned int len; struct rmsgpack_dom_value* items; } ;
struct TYPE_10__ {unsigned int len; TYPE_3__* items; } ;
struct TYPE_8__ {int len; int buff; } ;
struct TYPE_7__ {int len; int buff; } ;
struct TYPE_12__ {TYPE_5__ array; TYPE_4__ map; TYPE_2__ binary; TYPE_1__ string; int uint_; int int_; int bool_; } ;
struct rmsgpack_dom_value {int type; TYPE_6__ val; } ;
struct TYPE_9__ {struct rmsgpack_dom_value value; struct rmsgpack_dom_value key; } ;
typedef int RFILE ;
 int rmsgpack_write_array_header (int *,unsigned int) ;
 int rmsgpack_write_bin (int *,int ,int ) ;
 int rmsgpack_write_bool (int *,int ) ;
 int rmsgpack_write_int (int *,int ) ;
 int rmsgpack_write_map_header (int *,unsigned int) ;
 int rmsgpack_write_nil (int *) ;
 int rmsgpack_write_string (int *,int ,int ) ;
 int rmsgpack_write_uint (int *,int ) ;

int rmsgpack_dom_write(RFILE *fd, const struct rmsgpack_dom_value *obj)
{
   unsigned i;
   int rv = 0;
   int written = 0;

   switch (obj->type)
   {
      case 130:
         return rmsgpack_write_nil(fd);
      case 133:
         return rmsgpack_write_bool(fd, obj->val.bool_);
      case 132:
         return rmsgpack_write_int(fd, obj->val.int_);
      case 128:
         return rmsgpack_write_uint(fd, obj->val.uint_);
      case 129:
         return rmsgpack_write_string(fd, obj->val.string.buff, obj->val.string.len);
      case 134:
         return rmsgpack_write_bin(fd, obj->val.binary.buff, obj->val.binary.len);
      case 131:
         if ((rv = rmsgpack_write_map_header(fd, obj->val.map.len)) < 0)
            return rv;
         written += rv;

         for (i = 0; i < obj->val.map.len; i++)
         {
            if ((rv = rmsgpack_dom_write(fd, &obj->val.map.items[i].key)) < 0)
               return rv;
            written += rv;
            if ((rv = rmsgpack_dom_write(fd, &obj->val.map.items[i].value)) < 0)
               return rv;
            written += rv;
         }
         break;
      case 135:
         if ((rv = rmsgpack_write_array_header(fd, obj->val.array.len)) < 0)
            return rv;
         written += rv;

         for (i = 0; i < obj->val.array.len; i++)
         {
            if ((rv = rmsgpack_dom_write(fd, &obj->val.array.items[i])) < 0)
               return rv;
            written += rv;
         }
   }
   return written;
}
