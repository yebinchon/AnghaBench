
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int data ;
 int memcpy (void*,int ,size_t) ;
 size_t strlen (int ) ;

__attribute__((used)) static size_t read_callback(void *ptr, size_t size, size_t nmemb, void *stream)
{
  size_t amount = nmemb * size;
  if(amount < strlen(data)) {
    return strlen(data);
  }
  (void)stream;
  memcpy(ptr, data, strlen(data));
  return strlen(data);
}
