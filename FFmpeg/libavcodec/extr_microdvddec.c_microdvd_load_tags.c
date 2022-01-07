
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct microdvd_tag {int data1; char key; char* data_string; int data_string_len; int data2; void* persistent; int member_0; } ;


 void* MICRODVD_PERSISTENT_ON ;
 char* MICRODVD_STYLES ;
 char* check_for_italic_slash_marker (struct microdvd_tag*,char*) ;
 int indexof (char*,char) ;
 int microdvd_set_tag (struct microdvd_tag*,struct microdvd_tag) ;
 int strtol (char*,char**,int) ;

__attribute__((used)) static char *microdvd_load_tags(struct microdvd_tag *tags, char *s)
{
    s = check_for_italic_slash_marker(tags, s);

    while (*s == '{') {
        char *start = s;
        char tag_char = *(s + 1);
        struct microdvd_tag tag = {0};

        if (!tag_char || *(s + 2) != ':')
            break;
        s += 3;

        switch (tag_char) {


        case 'Y':
            tag.persistent = MICRODVD_PERSISTENT_ON;
        case 'y':
            while (*s && *s != '}' && s - start < 256) {
                int style_index = indexof(MICRODVD_STYLES, *s);

                if (style_index >= 0)
                    tag.data1 |= (1 << style_index);
                s++;
            }
            if (*s != '}')
                break;


            tag.key = tag_char;
            break;


        case 'C':
            tag.persistent = MICRODVD_PERSISTENT_ON;
        case 'c':
            while (*s == '$' || *s == '#')
                s++;
            tag.data1 = strtol(s, &s, 16) & 0x00ffffff;
            if (*s != '}')
                break;
            tag.key = 'c';
            break;


        case 'F':
            tag.persistent = MICRODVD_PERSISTENT_ON;
        case 'f': {
            int len = indexof(s, '}');
            if (len < 0)
                break;
            tag.data_string = s;
            tag.data_string_len = len;
            s += len;
            tag.key = 'f';
            break;
        }


        case 'S':
            tag.persistent = MICRODVD_PERSISTENT_ON;
        case 's':
            tag.data1 = strtol(s, &s, 10);
            if (*s != '}')
                break;
            tag.key = 's';
            break;


        case 'H': {

            int len = indexof(s, '}');
            if (len < 0)
                break;
            tag.data_string = s;
            tag.data_string_len = len;
            s += len;
            tag.key = 'h';
            break;
        }


        case 'P':
            if (!*s)
                break;
            tag.persistent = MICRODVD_PERSISTENT_ON;
            tag.data1 = (*s++ == '1');
            if (*s != '}')
                break;
            tag.key = 'p';
            break;


        case 'o':
            tag.persistent = MICRODVD_PERSISTENT_ON;
            tag.data1 = strtol(s, &s, 10);
            if (*s != ',')
                break;
            s++;
            tag.data2 = strtol(s, &s, 10);
            if (*s != '}')
                break;
            tag.key = 'o';
            break;

        default:
            break;
        }

        if (tag.key == 0)
            return start;

        microdvd_set_tag(tags, tag);
        s++;
    }
    return check_for_italic_slash_marker(tags, s);
}
