
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _GLFWwindow ;
typedef int MirPointerEvent ;


 int GLFW_PRESS ;
 int GLFW_RELEASE ;
 int handlePointerButton (int *,int ,int const*) ;
 int handlePointerMotion (int *,int const*) ;





 int mir_pointer_event_action (int const*) ;

__attribute__((used)) static void handlePointerEvent(const MirPointerEvent* pointer_event,
                             _GLFWwindow* window)
{
    int action = mir_pointer_event_action(pointer_event);

    switch (action)
    {
          case 132:
              handlePointerButton(window, GLFW_PRESS, pointer_event);
              break;
          case 131:
              handlePointerButton(window, GLFW_RELEASE, pointer_event);
              break;
          case 128:
              handlePointerMotion(window, pointer_event);
              break;
          case 130:
          case 129:
              break;
          default:
              break;

    }
}
