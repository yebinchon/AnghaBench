
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t consumed ;
 int data ;
 int memcpy (void*,int ,size_t) ;
 size_t strlen (int ) ;

__attribute__((used)) static size_t read_callback(void *ptr, size_t size, size_t nmemb, void *stream)
{
  size_t amount = nmemb * size;

  if(consumed == strlen(data)) {
    return 0;
  }

  if(amount > strlen(data)-consumed) {
    amount = strlen(data);
  }

  consumed += amount;
  (void)stream;
  memcpy(ptr, data, amount);
  return amount;
}
