
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* W_CacheLumpNum (int ,int) ;
 int W_GetNumForName (char*) ;

void*
W_CacheLumpName
( char* name,
  int tag )
{
    return W_CacheLumpNum (W_GetNumForName(name), tag);
}
