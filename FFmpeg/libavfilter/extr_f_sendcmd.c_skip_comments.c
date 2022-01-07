
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPACES ;
 int strcspn (char const*,char*) ;
 int strspn (char const*,int ) ;

__attribute__((used)) static void skip_comments(const char **buf)
{
    while (**buf) {

        *buf += strspn(*buf, SPACES);
        if (**buf != '#')
            break;

        (*buf)++;


        *buf += strcspn(*buf, "\n");
        if (**buf)
            (*buf)++;
    }
}
