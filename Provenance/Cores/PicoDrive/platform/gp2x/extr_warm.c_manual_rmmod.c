
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_EXCL ;
 int O_NONBLOCK ;
 int delete_module (char const*,int) ;

__attribute__((used)) static int manual_rmmod(const char *name)
{
 return delete_module(name, O_NONBLOCK|O_EXCL);
}
