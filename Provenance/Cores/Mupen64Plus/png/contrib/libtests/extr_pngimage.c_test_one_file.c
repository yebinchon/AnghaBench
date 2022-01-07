
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display {char* operation; scalar_t__ ignored_transforms; unsigned int active_transforms; int options; char* filename; int written_file; int read_ip; int original_file; int original_ip; scalar_t__ transforms; } ;


 int EXHAUSTIVE ;
 int FIND_BAD_COMBOS ;
 int SKIP_BUGS ;
 int assert (int) ;
 int compare_read (struct display*,unsigned int) ;
 int display_cache_file (struct display*,char const*) ;
 unsigned int first_transform (unsigned int) ;
 scalar_t__ is_combo (unsigned int) ;
 int printf (char*,char*,...) ;
 int read_png (struct display*,int *,char*,unsigned int) ;
 unsigned int read_transforms ;
 unsigned int rw_transforms ;
 scalar_t__ skip_transform (struct display*,unsigned int) ;
 int update_display (struct display*) ;
 int write_png (struct display*,int ,unsigned int) ;
 unsigned int write_transforms ;

__attribute__((used)) static void
test_one_file(struct display *dp, const char *filename)
{



   dp->operation = "cache file";
   dp->transforms = 0;
   display_cache_file(dp, filename);
   update_display(dp);




   if (dp->ignored_transforms != 0)
   {
      read_png(dp, &dp->original_file, "ignored transforms",
         dp->ignored_transforms);


      if (!compare_read(dp, 0 ))
         return;
   }
   {




      unsigned int active = dp->active_transforms;
      const int exhaustive = (dp->options & EXHAUSTIVE) != 0;
      unsigned int current = first_transform(active);
      unsigned int bad_transforms = 0;
      unsigned int bad_combo = ~0U;
      unsigned int bad_combo_list = 0;

      for (;;)
      {
         read_png(dp, &dp->original_file, "active transforms", current);
         if (exhaustive)
         {
            unsigned int next = current;

            do
            {
               if (next == read_transforms)
                  goto combo;

               ++next;
            }


            while ( (next & read_transforms) <= current
                  || (next & active) == 0
                  || (next & bad_transforms) != 0
                  || skip_transform(dp, next));

            assert((next & read_transforms) == next);
            current = next;
         }

         else
         {
            active &= ~current;

            if (active == 0)
               goto combo;

            current = first_transform(active);
         }
      }

combo:
      if (dp->options & FIND_BAD_COMBOS)
      {




         if (bad_combo != ~0U)
            printf("%s[0x%x]: PROBLEM: 0x%x[0x%x] ANTIDOTE: 0x%x\n",
               dp->filename, active, bad_combo, bad_combo_list,
               rw_transforms & ~bad_combo_list);

         else
            printf("%s: no %sbad combos found\n", dp->filename,
               (dp->options & SKIP_BUGS) ? "additional " : "");
      }
   }
}
