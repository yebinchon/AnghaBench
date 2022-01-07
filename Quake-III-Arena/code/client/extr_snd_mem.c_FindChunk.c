
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FindNextChunk (char*) ;
 int iff_data ;
 int last_chunk ;

__attribute__((used)) static void FindChunk(char *name)
{
 last_chunk = iff_data;
 FindNextChunk (name);
}
