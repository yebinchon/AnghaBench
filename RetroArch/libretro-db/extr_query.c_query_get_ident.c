
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int offset; char* data; } ;


 scalar_t__ isalpha (int) ;
 scalar_t__ isdigit (int) ;
 scalar_t__ query_is_eot (struct buffer) ;
 int query_peek_char (struct buffer,char*,char const**) ;
 int query_raise_unexpected_eof (int,char const**) ;

__attribute__((used)) static struct buffer query_get_ident(struct buffer buff,
      const char **ident,
      size_t *len, const char **error)
{
   char c = '\0';

   if (query_is_eot(buff))
   {
      query_raise_unexpected_eof(buff.offset, error);
      return buff;
   }

   *ident = buff.data + buff.offset;
   *len = 0;
   query_peek_char(buff, &c, error);

   if (*error)
      goto clean;
   if (!isalpha((int)c))
      return buff;

   buff.offset++;
   *len = *len + 1;
   query_peek_char(buff, &c, error);

   while (!*error)
   {
      if (!(isalpha((int)c) || isdigit((int)c) || c == '_'))
         break;
      buff.offset++;
      *len = *len + 1;
      query_peek_char(buff, &c, error);
   }

clean:
   return buff;
}
