
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fdt; } ;
typedef TYPE_1__ DTBLOB_T ;


 int FDT_ERR_BADPATH ;
 int fdt_add_subnode_namelen (int ,int,char const*,int) ;
 int fdt_subnode_offset_namelen (int ,int,char const*,int) ;
 int strlen (char const*) ;

int dtoverlay_create_node(DTBLOB_T *dtb, const char *node_path, int path_len)
{
   const char *path_ptr;
   const char *path_end;
   int node_off = 0;

   if (!path_len)
      path_len = strlen(node_path);

   path_ptr = node_path;
   path_end = node_path + path_len;

   if ((path_len > 0) && (path_ptr[path_len - 1] == '/'))
       path_end--;

   while (path_ptr < path_end)
   {
      const char *path_next;
      int subnode_off;

      if (*path_ptr != '/')
         return -FDT_ERR_BADPATH;


      path_ptr++;
      for (path_next = path_ptr;
           (path_next != path_end) && (*path_next != '/');
           path_next++)
         continue;

      subnode_off = fdt_subnode_offset_namelen(dtb->fdt, node_off, path_ptr,
                                               path_next - path_ptr);
      if (subnode_off >= 0)
         node_off = subnode_off;
      else
         node_off = fdt_add_subnode_namelen(dtb->fdt, node_off, path_ptr,
                                            path_next - path_ptr);
      if (node_off < 0)
         break;

      path_ptr = path_next;
   }

   if ((node_off >= 0) && (path_ptr != path_end))
      return -FDT_ERR_BADPATH;

   return node_off;
}
