
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display {char* filename; int best; scalar_t__ best_size; scalar_t__ read_size; scalar_t__ size; int ct; int bpp; scalar_t__ h; scalar_t__ w; } ;


 int assert (int ) ;
 int cts (int ) ;
 int fflush (int ) ;
 int printf (char*,char*,unsigned long,unsigned long,int ,int ,unsigned long,unsigned long,unsigned long,int ) ;
 int stdout ;

__attribute__((used)) static void
print_search_results(struct display *dp)
{
   assert(dp->filename != ((void*)0));
   printf("%s [%ld x %ld %d bpp %s, %lu bytes] %lu -> %lu with '%s'\n",
      dp->filename, (unsigned long)dp->w, (unsigned long)dp->h, dp->bpp,
      cts(dp->ct), (unsigned long)dp->size, (unsigned long)dp->read_size,
      (unsigned long)dp->best_size, dp->best);
   fflush(stdout);
}
