
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ localkey_t ;


 char* get_buffer (scalar_t__,long) ;
 scalar_t__ locbufs ;

__attribute__((used)) static char *
buffer_unthreaded(localkey_t key, long size)

{
  return get_buffer(locbufs + key, size);
}
