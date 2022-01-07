
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _GLFWwindow ;
typedef int MirEvent ;


 int handleInput (int ,int *) ;
 int mir_event_get_input_event (int const*) ;
 int mir_event_get_type (int const*) ;


__attribute__((used)) static void handleEvent(const MirEvent* event, _GLFWwindow* window)
{
    int type = mir_event_get_type(event);

    switch (type)
    {
        case 128:
            handleInput(mir_event_get_input_event(event), window);
            break;
        default:
            break;
    }
}
