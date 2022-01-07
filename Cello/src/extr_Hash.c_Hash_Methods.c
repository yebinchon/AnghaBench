
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Method {char* member_0; char* member_1; char* member_2; } ;



__attribute__((used)) static struct Method* Hash_Methods(void) {

  static struct Method methods[] = {
    {
      "hash",
      "uint64_t hash(var self);",
      "Get the hash value for the object `self`."
    }, {
      "hash_data",
      "uint64_t hash_data(void* data, size_t num);",
      "Hash `num` bytes pointed to by `data` using "
      "[Murmurhash](http://en.wikipedia.org/wiki/MurmurHash)."
    }, {((void*)0), ((void*)0), ((void*)0)}
  };

  return methods;
}
