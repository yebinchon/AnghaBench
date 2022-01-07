
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int columns; } ;
typedef TYPE_1__ vbi_page ;
struct TYPE_7__ {int unicode; } ;
typedef TYPE_2__ vbi_char ;
typedef int uint16_t ;


 scalar_t__ IS_TXT_SPACE (TYPE_2__) ;

__attribute__((used)) static void get_trim_info(vbi_page *page, vbi_char *row, int *leading, int *trailing, int *olen)
{
    int i, len = 0;
    int char_seen = 0;

    *leading = 0;

    for (i = 0; i < page->columns; i++) {
        uint16_t out = IS_TXT_SPACE(row[i]) ? 32 : row[i].unicode;

        if (out == 32 && !char_seen)
            (*leading)++;
        else if (out != 32)
            char_seen = 1, len = i - (*leading) + 1;
    }

    *olen = len;
    *trailing = len > 0 ? page->columns - *leading - len : page->columns;
}
