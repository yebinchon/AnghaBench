
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VCOS_STATUS_T ;
struct TYPE_2__ {char* file; size_t len; int mem; } ;


 int GX_ERROR (char*,char*) ;
 int GX_TRACE (char*,char*) ;
 int O_RDONLY ;
 int SEEK_END ;
 int SEEK_SET ;
 int VCOS_EINVAL ;
 int VCOS_ENOENT ;
 int VCOS_ENOMEM ;
 int VCOS_SUCCESS ;
 int close (int) ;
 TYPE_1__ default_font ;
 char* fname ;
 int inited ;
 size_t lseek (int,int ,int ) ;
 int open (char*,int ) ;
 int read (int,int ,size_t) ;
 int sprintf (char*,char*,char const*,char*) ;
 int vcos_free (int ) ;
 int vcos_malloc (size_t,char*) ;
 scalar_t__ vgft_init () ;
 int vgft_term () ;

VCOS_STATUS_T gx_priv_font_init(const char *font_dir)
{
   VCOS_STATUS_T ret;
   size_t len;
   int rc;
   if (vgft_init())
   {
      ret = VCOS_ENOMEM;
      goto fail_init;
   }

   int fd = -1;

   sprintf(fname, "%s/%s", font_dir, default_font.file);
   fd = open(fname, O_RDONLY);

   if (fd < 0)
   {
      GX_ERROR("Could not open font file '%s'", default_font.file);
      ret = VCOS_ENOENT;
      goto fail_open;
   }

   len = lseek(fd, 0, SEEK_END);
   lseek(fd, 0, SEEK_SET);

   default_font.mem = vcos_malloc(len, default_font.file);
   if (!default_font.mem)
   {
      GX_ERROR("No memory for font %s", fname);
      ret = VCOS_ENOMEM;
      goto fail_mem;
   }

   rc = read(fd, default_font.mem, len);
   if (rc != len)
   {
      GX_ERROR("Could not read font %s", fname);
      ret = VCOS_EINVAL;
      goto fail_rd;
   }
   default_font.len = len;
   close(fd);

   GX_TRACE("Opened font file '%s'", fname);

   inited = 1;
   return VCOS_SUCCESS;

fail_rd:
   vcos_free(default_font.mem);
fail_mem:
   if (fd >= 0) close(fd);
fail_open:
   vgft_term();
fail_init:
   return ret;
}
