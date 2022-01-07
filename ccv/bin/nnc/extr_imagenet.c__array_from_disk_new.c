
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* filename; } ;
typedef TYPE_1__ ccv_file_info_t ;
typedef int ccv_categorized_t ;
typedef int ccv_array_t ;
typedef int FILE ;


 scalar_t__ EOF ;
 int assert (int) ;
 scalar_t__ ccmalloc (int) ;
 int * ccv_array_new (int,int,int ) ;
 int ccv_array_push (int *,int *) ;
 int ccv_categorized (int,int ,TYPE_1__*) ;
 int fclose (int *) ;
 int * fopen (char const* const,char*) ;
 int free (char*) ;
 scalar_t__ fscanf (int *,char*,int*,char*) ;
 scalar_t__ malloc (int) ;
 int strlen (char const* const) ;
 int strncpy (char*,char const* const,int) ;

__attribute__((used)) static ccv_array_t* _array_from_disk_new(const char* const list, const char* const base_dir)
{
 FILE *r = fopen(list, "r");
 assert(r && "list doesn't exists");
 int dirlen = (base_dir != 0) ? strlen(base_dir) + 1 : 0;
 ccv_array_t* categorizeds = ccv_array_new(sizeof(ccv_categorized_t), 64, 0);
 int c;
 char* file = (char*)malloc(1024);
 while (fscanf(r, "%d %s", &c, file) != EOF)
 {
  char* filename = (char*)ccmalloc(1024);
  if (base_dir != 0)
  {
   strncpy(filename, base_dir, 1024);
   filename[dirlen - 1] = '/';
  }
  strncpy(filename + dirlen, file, 1024 - dirlen);
  ccv_file_info_t file_info = {
   .filename = filename,
  };

  ccv_categorized_t categorized = ccv_categorized(c - 1, 0, &file_info);
  ccv_array_push(categorizeds, &categorized);
 }
 free(file);
 fclose(r);
 return categorizeds;
}
