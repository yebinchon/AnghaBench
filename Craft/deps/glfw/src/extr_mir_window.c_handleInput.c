
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _GLFWwindow ;
typedef int MirInputEvent ;


 int handleKeyEvent (int ,int *) ;
 int handlePointerEvent (int ,int *) ;
 int mir_input_event_get_keyboard_event (int const*) ;
 int mir_input_event_get_pointer_event (int const*) ;
 int mir_input_event_get_type (int const*) ;



__attribute__((used)) static void handleInput(const MirInputEvent* input_event, _GLFWwindow* window)
{
    int type = mir_input_event_get_type(input_event);

    switch (type)
    {
        case 129:
            handleKeyEvent(mir_input_event_get_keyboard_event(input_event), window);
            break;
        case 128:
            handlePointerEvent(mir_input_event_get_pointer_event(input_event), window);
            break;
        default:
            break;
    }
}
