
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SpvId ;
typedef int FILE ;


 int SEEK_END ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 size_t fread (int *,int,long,int *) ;
 int free (int *) ;
 int fseek (int *,int ,int ) ;
 long ftell (int *) ;
 int * malloc (long) ;
 int rewind (int *) ;

__attribute__((used)) static int read_file(const char *path, SpvId **buffer, size_t *word_count)
{
 long len;
 FILE *file = fopen(path, "rb");

 if (!file)
  return -1;

 fseek(file, 0, SEEK_END);
 len = ftell(file);
 rewind(file);

 *buffer = malloc(len);
 if (fread(*buffer, 1, len, file) != (size_t)len)
 {
  fclose(file);
  free(*buffer);
  return -1;
 }

 fclose(file);
 *word_count = len / sizeof(SpvId);
 return 0;
}
