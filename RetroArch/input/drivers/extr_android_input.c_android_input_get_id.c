
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AInputEvent ;


 int AInputEvent_getDeviceId (int *) ;
 int pad_id1 ;
 int pad_id2 ;

__attribute__((used)) static int android_input_get_id(AInputEvent *event)
{
   int id = AInputEvent_getDeviceId(event);

   if (id == pad_id2)
      id = pad_id1;

   return id;
}
