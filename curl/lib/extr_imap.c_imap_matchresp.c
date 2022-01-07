
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 scalar_t__ ISDIGIT (char const) ;
 int TRUE ;
 size_t strlen (char const*) ;
 scalar_t__ strncasecompare (char const*,char const*,size_t) ;

__attribute__((used)) static bool imap_matchresp(const char *line, size_t len, const char *cmd)
{
  const char *end = line + len;
  size_t cmd_len = strlen(cmd);


  line += 2;


  if(line < end && ISDIGIT(*line)) {

    do
      line++;
    while(line < end && ISDIGIT(*line));


    if(line == end || *line != ' ')
      return FALSE;

    line++;
  }



  if(line + cmd_len <= end && strncasecompare(line, cmd, cmd_len) &&
     (line[cmd_len] == ' ' || line + cmd_len + 2 == end))
    return TRUE;

  return FALSE;
}
