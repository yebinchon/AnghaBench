
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {char* name; int val; int has_arg; scalar_t__* flag; } ;
struct longoptions {int noptions; struct option* options; scalar_t__ getoptval; } ;
struct arg_hdr {int flag; char* longopts; } ;


 int ARG_HASOPTVALUE ;
 int ARG_HASVALUE ;
 int ARG_TERMINATOR ;
 scalar_t__ malloc (size_t) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;

__attribute__((used)) static
struct longoptions * alloc_longoptions(struct arg_hdr * *table)
{
    struct longoptions *result;
    size_t nbytes;
    int noptions = 1;
    size_t longoptlen = 0;
    int tabindex;
    tabindex = 0;
    do
    {
        const char *longopts = table[tabindex]->longopts;
        longoptlen += (longopts ? strlen(longopts) : 0) + 1;
        while (longopts)
        {
            noptions++;
            longopts = strchr(longopts + 1, ',');
        }
    } while(!(table[tabindex++]->flag & ARG_TERMINATOR));





    nbytes = sizeof(struct longoptions)
             + sizeof(struct option) * noptions
             + longoptlen;
    result = (struct longoptions *)malloc(nbytes);
    if (result)
    {
        int option_index = 0;
        char *store;

        result->getoptval = 0;
        result->noptions = noptions;
        result->options = (struct option *)(result + 1);
        store = (char *)(result->options + noptions);

        for(tabindex = 0; !(table[tabindex]->flag & ARG_TERMINATOR); tabindex++)
        {
            const char *longopts = table[tabindex]->longopts;

            while(longopts && *longopts)
            {
                char *storestart = store;


                while (*longopts != 0 && *longopts != ',')
                    *store++ = *longopts++;
                *store++ = 0;
                if (*longopts == ',')
                    longopts++;


                result->options[option_index].name = storestart;
                result->options[option_index].flag = &(result->getoptval);
                result->options[option_index].val = tabindex;
                if (table[tabindex]->flag & ARG_HASOPTVALUE)
                    result->options[option_index].has_arg = 2;
                else if (table[tabindex]->flag & ARG_HASVALUE)
                    result->options[option_index].has_arg = 1;
                else
                    result->options[option_index].has_arg = 0;

                option_index++;
            }
        }

        result->options[option_index].name = 0;
        result->options[option_index].has_arg = 0;
        result->options[option_index].flag = 0;
        result->options[option_index].val = 0;
    }


    return result;
}
