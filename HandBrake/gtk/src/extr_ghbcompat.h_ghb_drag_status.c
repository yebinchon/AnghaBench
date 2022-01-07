
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int guint32 ;
typedef int GdkDragContext ;
typedef int GdkDragAction ;


 int gdk_drag_status (int *,int ,int ) ;

__attribute__((used)) static inline void ghb_drag_status(GdkDragContext * ctx, GdkDragAction action,
                                   guint32 time)
{
    gdk_drag_status(ctx, action, time);
}
