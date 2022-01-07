__attribute__((used)) static void *
miniwget2(const char * host,
          unsigned short port, const char * path,
          int * size, char * addr_str, int addr_str_len,
          unsigned int scope_id, int * status_code)
{
 char * respbuffer;


 respbuffer = (char*)miniwget3(host, port, path, size,
                        addr_str, addr_str_len, "1.1",
                        scope_id, status_code);
 return respbuffer;
}
