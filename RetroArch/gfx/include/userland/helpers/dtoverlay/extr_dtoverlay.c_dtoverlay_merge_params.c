
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct fdt_property {char* data; } ;
struct TYPE_7__ {int fdt; } ;
struct TYPE_6__ {char* param; int len; int b; } ;
typedef TYPE_1__ DTOVERLAY_PARAM_T ;
typedef TYPE_2__ DTBLOB_T ;


 int FDT_ERR_BADPATH ;
 int NON_FATAL (int ) ;
 int dtoverlay_create_node (TYPE_2__*,char const*,int) ;
 int fdt_appendprop (int ,int,char const*,int ,int ) ;
 struct fdt_property* fdt_get_property_w (int ,int,char const*,int*) ;
 int fdt_setprop (int ,int,char const*,int ,int ) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strrchr (char const*,char) ;

int dtoverlay_merge_params(DTBLOB_T *dtb, const DTOVERLAY_PARAM_T *params,
                           unsigned int num_params)
{
   int err = 0;
   unsigned int i;

   for (i=0; (i<num_params) && (err == 0); i++) {
      const DTOVERLAY_PARAM_T *p;
      const char *node_name, *slash;
      int node_off, path_len;

      p = params + i;
      node_name = p->param;
      slash = strrchr(node_name, '/');

      if (!slash)
      {
         err = NON_FATAL(FDT_ERR_BADPATH);
         break;
      }


      if (slash == node_name)
         path_len = 1;
      else
         path_len = slash - node_name;


      node_off = dtoverlay_create_node(dtb, node_name, path_len);
      if (node_off >= 0)
      {
         const char *prop_name = slash + 1;
         int prop_len;
         struct fdt_property *prop;

         if ((strcmp(prop_name, "bootargs") == 0) &&
            ((prop = fdt_get_property_w(dtb->fdt, node_off, prop_name, &prop_len)) != ((void*)0)) &&
            (prop_len > 0) && *prop->data)
         {
            prop->data[prop_len - 1] = ' ';
            err = fdt_appendprop(dtb->fdt, node_off, prop_name, p->b, p->len);
         }
         else
            err = fdt_setprop(dtb->fdt, node_off, prop_name, p->b, p->len);
      }
      else
         err = node_off;
   }

   return err;
}
