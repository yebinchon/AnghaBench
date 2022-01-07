
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int XPointer ;
struct TYPE_3__ {scalar_t__ type; } ;
typedef TYPE_1__ XEvent ;
typedef int Display ;
typedef int Bool ;


 scalar_t__ SelectionClear ;
 scalar_t__ SelectionNotify ;
 scalar_t__ SelectionRequest ;

__attribute__((used)) static Bool isSelectionEvent(Display* display, XEvent* event, XPointer pointer)
{
    return event->type == SelectionRequest ||
           event->type == SelectionNotify ||
           event->type == SelectionClear;
}
