
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t offset; } ;
typedef TYPE_1__ mime_state ;


 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static size_t readback_bytes(mime_state *state,
                             char *buffer, size_t bufsize,
                             const char *bytes, size_t numbytes,
                             const char *trail)
{
  size_t sz;

  if(numbytes > state->offset) {
    sz = numbytes - state->offset;
    bytes += state->offset;
  }
  else {
    size_t tsz = strlen(trail);

    sz = state->offset - numbytes;
    if(sz >= tsz)
      return 0;
    bytes = trail + sz;
    sz = tsz - sz;
  }

  if(sz > bufsize)
    sz = bufsize;

  memcpy(buffer, bytes, sz);
  state->offset += sz;
  return sz;
}
