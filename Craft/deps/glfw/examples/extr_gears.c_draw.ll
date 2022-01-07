; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_gears.c_draw.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_gears.c_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_DEPTH_BUFFER_BIT = common dso_local global i32 0, align 4
@view_rotx = common dso_local global float 0.000000e+00, align 4
@view_roty = common dso_local global float 0.000000e+00, align 4
@view_rotz = common dso_local global float 0.000000e+00, align 4
@angle = common dso_local global float 0.000000e+00, align 4
@gear1 = common dso_local global i32 0, align 4
@gear2 = common dso_local global i32 0, align 4
@gear3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw() #0 {
  %1 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %2 = load i32, i32* @GL_DEPTH_BUFFER_BIT, align 4
  %3 = or i32 %1, %2
  %4 = call i32 @glClear(i32 %3)
  %5 = call i32 (...) @glPushMatrix()
  %6 = load float, float* @view_rotx, align 4
  %7 = call i32 @glRotatef(float %6, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00)
  %8 = load float, float* @view_roty, align 4
  %9 = call i32 @glRotatef(float %8, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00)
  %10 = load float, float* @view_rotz, align 4
  %11 = call i32 @glRotatef(float %10, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)
  %12 = call i32 (...) @glPushMatrix()
  %13 = call i32 @glTranslatef(float -3.000000e+00, float -2.000000e+00, float 0.000000e+00)
  %14 = load float, float* @angle, align 4
  %15 = call i32 @glRotatef(float %14, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)
  %16 = load i32, i32* @gear1, align 4
  %17 = call i32 @glCallList(i32 %16)
  %18 = call i32 (...) @glPopMatrix()
  %19 = call i32 (...) @glPushMatrix()
  %20 = call i32 @glTranslatef(float 0x4008CCCCC0000000, float -2.000000e+00, float 0.000000e+00)
  %21 = load float, float* @angle, align 4
  %22 = fmul float -2.000000e+00, %21
  %23 = fsub float %22, 9.000000e+00
  %24 = call i32 @glRotatef(float %23, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)
  %25 = load i32, i32* @gear2, align 4
  %26 = call i32 @glCallList(i32 %25)
  %27 = call i32 (...) @glPopMatrix()
  %28 = call i32 (...) @glPushMatrix()
  %29 = call i32 @glTranslatef(float 0xC008CCCCC0000000, float 0x4010CCCCC0000000, float 0.000000e+00)
  %30 = load float, float* @angle, align 4
  %31 = fmul float -2.000000e+00, %30
  %32 = fsub float %31, 2.500000e+01
  %33 = call i32 @glRotatef(float %32, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)
  %34 = load i32, i32* @gear3, align 4
  %35 = call i32 @glCallList(i32 %34)
  %36 = call i32 (...) @glPopMatrix()
  %37 = call i32 (...) @glPopMatrix()
  ret void
}

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @glPushMatrix(...) #1

declare dso_local i32 @glRotatef(float, float, float, float) #1

declare dso_local i32 @glTranslatef(float, float, float) #1

declare dso_local i32 @glCallList(i32) #1

declare dso_local i32 @glPopMatrix(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
