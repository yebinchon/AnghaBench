
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char const) ;

__attribute__((used)) static const char* rc_parse_line(const char* line, const char** end) {
  const char* nextline;
  const char* endline;


  nextline = line;
  while (*nextline && *nextline != '\n')
    ++nextline;


  endline = line;
  while (endline < nextline && (endline[0] != '/' || endline[1] != '/' || (endline > line && endline[-1] == '\\')))
    ++endline;


  if (endline == nextline) {
    if (endline > line && endline[-1] == '\r')
      --endline;
  } else {
    while (endline > line && isspace(endline[-1]))
      --endline;
  }


  *end = endline;

  if (*nextline == '\n')
    ++nextline;
  return nextline;
}
