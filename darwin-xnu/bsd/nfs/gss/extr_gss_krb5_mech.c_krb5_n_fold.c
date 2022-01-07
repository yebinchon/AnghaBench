
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add1 (void*,unsigned char*,size_t) ;
 int max (size_t,size_t) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;
 int memmove (unsigned char*,unsigned char*,size_t) ;
 int memset (void*,int ,size_t) ;
 int rr13 (unsigned char*,size_t) ;

__attribute__((used)) static int
krb5_n_fold(const void *instr, size_t len, void *foldstr, size_t size)
{


 int ret = 0;
 size_t maxlen = 2 * max(size, len);
 size_t l = 0;
 unsigned char tmp[maxlen];
 unsigned char buf[len];

 memcpy(buf, instr, len);
 memset(foldstr, 0, size);
 do {
  memcpy(tmp + l, buf, len);
  l += len;
  ret = rr13(buf, len * 8);
  if (ret)
   goto out;
  while(l >= size) {
   add1(foldstr, tmp, size);
   l -= size;
   if(l == 0)
    break;
   memmove(tmp, tmp + size, l);
  }
 } while(l != 0);
out:

 return ret;
}
