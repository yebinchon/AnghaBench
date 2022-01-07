
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int ccv_array_t ;
typedef int FILE ;


 int * ccv_array_new (int,int,int ) ;
 int ccv_array_push (int *,char**) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 int getline (char**,size_t*,int *) ;
 scalar_t__ isspace (char) ;
 scalar_t__ malloc (int) ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static ccv_array_t* uri_convnet_words_read(char* filename)
{
 FILE* r = fopen(filename, "rt");
 if(r)
 {
  ccv_array_t* words = ccv_array_new(sizeof(char*), 32, 0);
  size_t len = 1024;
  char* word = (char*)malloc(len);
  ssize_t read;
  while((read = getline(&word, &len, r)) != -1)
  {
   while(read > 1 && isspace(word[read - 1]))
    read--;
   word[read] = 0;
   char* new_word = (char*)malloc(sizeof(char) * (read + 1));
   memcpy(new_word, word, sizeof(char) * (read + 1));
   ccv_array_push(words, &new_word);
  }
  free(word);
  return words;
 }
 return 0;
}
