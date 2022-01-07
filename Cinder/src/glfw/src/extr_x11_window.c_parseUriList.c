
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* calloc (scalar_t__,int) ;
 char** realloc (char**,int) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,scalar_t__) ;
 char* strtok (char*,char*) ;
 char strtol (char const*,int *,int) ;

__attribute__((used)) static char** parseUriList(char* text, int* count)
{
    const char* prefix = "file://";
    char** paths = ((void*)0);
    char* line;

    *count = 0;

    while ((line = strtok(text, "\r\n")))
    {
        text = ((void*)0);

        if (line[0] == '#')
            continue;

        if (strncmp(line, prefix, strlen(prefix)) == 0)
            line += strlen(prefix);

        (*count)++;

        char* path = calloc(strlen(line) + 1, 1);
        paths = realloc(paths, *count * sizeof(char*));
        paths[*count - 1] = path;

        while (*line)
        {
            if (line[0] == '%' && line[1] && line[2])
            {
                const char digits[3] = { line[1], line[2], '\0' };
                *path = strtol(digits, ((void*)0), 16);
                line += 2;
            }
            else
                *path = *line;

            path++;
            line++;
        }
    }

    return paths;
}
