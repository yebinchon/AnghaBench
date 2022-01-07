
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char*) ;

__attribute__((used)) static void imap_get_message(char *buffer, char **outptr)
{
  size_t len = strlen(buffer);
  char *message = ((void*)0);

  if(len > 2) {

    len -= 2;
    for(message = buffer + 2; *message == ' ' || *message == '\t';
        message++, len--)
      ;


    for(; len--;)
      if(message[len] != '\r' && message[len] != '\n' && message[len] != ' ' &&
         message[len] != '\t')
        break;


    if(++len) {
      message[len] = '\0';
    }
  }
  else

    message = &buffer[len];

  *outptr = message;
}
