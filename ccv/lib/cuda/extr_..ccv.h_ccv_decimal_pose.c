
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float x; float y; float a; float b; float roll; float pitch; float yaw; } ;
typedef TYPE_1__ ccv_decimal_pose_t ;



__attribute__((used)) inline static ccv_decimal_pose_t ccv_decimal_pose(float x, float y, float a, float b, float roll, float pitch, float yaw)
{
 ccv_decimal_pose_t pose;
 pose.x = x;
 pose.y = y;
 pose.a = a;
 pose.b = b;
 pose.roll = roll;
 pose.pitch = pitch;
 pose.yaw = yaw;
 return pose;
}
