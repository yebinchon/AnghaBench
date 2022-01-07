
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetLittleLong () ;
 int * data_p ;
 int iff_chunk_len ;
 int * iff_end ;
 int * last_chunk ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static void FindNextChunk(char *name)
{
 while (1)
 {
  data_p=last_chunk;

  if (data_p >= iff_end)
  {
   data_p = ((void*)0);
   return;
  }

  data_p += 4;
  iff_chunk_len = GetLittleLong();
  if (iff_chunk_len < 0)
  {
   data_p = ((void*)0);
   return;
  }
  data_p -= 8;
  last_chunk = data_p + 8 + ( (iff_chunk_len + 1) & ~1 );
  if (!strncmp((char *)data_p, name, 4))
   return;
 }
}
