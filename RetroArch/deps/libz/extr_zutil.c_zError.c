
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* ERR_MSG (int) ;

const char * zError(int err)
{
   return ERR_MSG(err);
}
