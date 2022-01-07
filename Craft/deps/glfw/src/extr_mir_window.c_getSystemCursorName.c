
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* mir_arrow_cursor_name ;
 char const* mir_caret_cursor_name ;
 char const* mir_crosshair_cursor_name ;
 char const* mir_horizontal_resize_cursor_name ;
 char const* mir_open_hand_cursor_name ;
 char const* mir_vertical_resize_cursor_name ;

const char* getSystemCursorName(int shape)
{
    switch (shape)
    {
        case 133:
            return mir_arrow_cursor_name;
        case 129:
            return mir_caret_cursor_name;
        case 132:
            return mir_crosshair_cursor_name;
        case 131:
            return mir_open_hand_cursor_name;
        case 130:
            return mir_horizontal_resize_cursor_name;
        case 128:
            return mir_vertical_resize_cursor_name;
    }

    return ((void*)0);
}
