
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPE_OK ;
 int GPE_OUT_OF_MEMORY ;
 int memcpy (char*,char*,size_t) ;
 char* realloc (char*,size_t) ;
 size_t strlen (char*) ;

__attribute__((used)) static int appenddata(char **dst_buf,
                      size_t *dst_len,
                      size_t *dst_alloc,
                      char *src_buf,
                      int src_b64)
{
  size_t need_alloc = 0;
  size_t src_len = strlen(src_buf);

  if(!src_len)
    return GPE_OK;

  need_alloc = src_len + *dst_len + 1;

  if(src_b64) {
    if(src_buf[src_len - 1] == '\r')
      src_len--;

    if(src_buf[src_len - 1] == '\n')
      src_len--;
  }


  if(need_alloc > *dst_alloc) {
    size_t newsize = need_alloc * 2;
    char *newptr = realloc(*dst_buf, newsize);
    if(!newptr) {
      return GPE_OUT_OF_MEMORY;
    }
    *dst_alloc = newsize;
    *dst_buf = newptr;
  }


  memcpy(*dst_buf + *dst_len, src_buf, src_len);
  *dst_len += src_len;
  *(*dst_buf + *dst_len) = '\0';

  return GPE_OK;
}
