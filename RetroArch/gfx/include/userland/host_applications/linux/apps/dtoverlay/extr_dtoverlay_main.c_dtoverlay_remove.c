
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int count; TYPE_1__** namelist; } ;
struct TYPE_5__ {char* d_name; } ;
typedef TYPE_2__ STATE_T ;
typedef int DTBLOB_T ;


 int apply_overlay (char*,char*) ;
 scalar_t__ chdir (int ) ;
 int dt_overlays_dir ;
 int dtoverlay_add (TYPE_2__*,char*,int,char const**) ;
 scalar_t__ dtoverlay_dtb_trailer (int *) ;
 int dtoverlay_free_dtb (int *) ;
 int * dtoverlay_load_dtb (char const*,int ) ;
 int error (char*,...) ;
 int fatal_error (char*,int ) ;
 int free (char const**) ;
 int free_string (char const*) ;
 char** malloc (int) ;
 scalar_t__ memcmp (char const*,char const*,int) ;
 int rename (char const*,char*) ;
 scalar_t__ rmdir (char const*) ;
 void* sprintf_dup (char*,...) ;
 char* strchr (char const*,char) ;
 int strcspn (char*,char*) ;
 int strlen (char const*) ;
 char* strrchr (char const*,char) ;
 int strtoul (char const*,char**,int) ;
 int unlink (char const*) ;
 int work_dir ;

__attribute__((used)) static int dtoverlay_remove(STATE_T *state, const char *overlay, int and_later)
{
    const char *overlay_dir;
    const char *dir_name = ((void*)0);
    char *end;
    int overlay_len;
    int count = state->count;
    int rmpos;
    int i;

    if (chdir(work_dir) != 0)
 fatal_error("Failed to chdir to '%s'", work_dir);

    if (overlay)
    {
 overlay_len = strlen(overlay);

 rmpos = strtoul(overlay, &end, 10);
 if (end && (*end == '\0'))
 {
     if (rmpos >= count)
  return error("Overlay index (%d) too large", rmpos);
     dir_name = state->namelist[rmpos]->d_name;
 }

 else for (rmpos = count - 1; rmpos >= 0; rmpos--)
 {
     const char *left, *right;
     dir_name = state->namelist[rmpos]->d_name;
     left = strchr(dir_name, '_');
     if (!left)
  return error("Internal error");
     left++;
     right = strchr(left, '.');
     if (!right)
  return error("Internal error");
     if (((right - left) == overlay_len) &&
  (memcmp(overlay, left, overlay_len) == 0))
  break;
     dir_name = ((void*)0);
 }

 if (rmpos < 0)
     return error("Overlay '%s' is not loaded", overlay);
    }
    else
    {
 if (!count)
     return error("No overlays loaded");
 rmpos = and_later ? 0 : (count - 1);
 dir_name = state->namelist[rmpos]->d_name;
    }

    if (rmpos < count)
    {

 for (i = count - 1; i >= rmpos; i--)
 {
     const char *left, *right;
     left = state->namelist[i]->d_name;
     right = strrchr(left, '.');
     if (!right)
  return error("Internal error");

     overlay_dir = sprintf_dup("%s/%.*s", dt_overlays_dir,
          right - left, left);
     if (rmdir(overlay_dir) != 0)
  return error("Failed to remove directory '%s'", overlay_dir);

     free_string(overlay_dir);
 }



 for (i = rmpos, state->count = rmpos; i < count; i++)
 {
     const char *left, *right;
     const char *filename = state->namelist[i]->d_name;

     left = strchr(filename, '_');
     if (!left)
  return error("Internal error");
     left++;
     right = strchr(left, '.');
     if (!right)
  return error("Internal error");

            if (and_later || (i == rmpos))
            {

                unlink(filename);
            }
            else
            {

                int len = right - left;
                char *new_name = sprintf_dup("%d_%.*s", state->count,
          len, left);
  char *new_file = sprintf_dup("%s.dtbo", new_name);
  int ret = 0;

                if ((len == 7) && (memcmp(left, "dtparam", 7) == 0))
  {



      DTBLOB_T *dtb;
      char *params;
      const char **paramv;
      int paramc;
      int j;
      char *p;


      dtb = dtoverlay_load_dtb(filename, 0);
      unlink(filename);

      if (!dtb)
      {
   error("Failed to re-apply dtparam");
   continue;
      }

      params = (char *)dtoverlay_dtb_trailer(dtb);
      if (!params)
      {
   error("Failed to re-apply dtparam");
   dtoverlay_free_dtb(dtb);
   continue;
      }


      p = params;
      paramc = 0;
      while (*p)
      {
   int paramlen;
   *(p++) = '\0';
   paramlen = strcspn(p, " ");
   paramc++;
   p += paramlen;
      }

      paramv = malloc((paramc + 1) * sizeof(const char *));
      if (!paramv)
      {
   error("out of memory re-applying dtparam");
   dtoverlay_free_dtb(dtb);
   continue;
      }

      for (j = 0, p = params + 1; j < paramc; j++)
      {
   paramv[j] = p;
   p += strlen(p) + 1;
      }
      paramv[j] = ((void*)0);


      ret = dtoverlay_add(state, "dtparam", paramc, paramv);
      free(paramv);
      dtoverlay_free_dtb(dtb);
  }
  else
  {
      rename(filename, new_file);
      ret = !apply_overlay(new_file, new_name);
  }
  if (ret != 0)
  {
      error("Failed to re-apply dtparam");
      continue;
  }
  state->count++;
     }
 }
    }

    return 0;
}
