; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_videocube/extr_triangle.c_redraw_scene.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_videocube/extr_triangle.c_redraw_scene.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_DEPTH_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_TRIANGLE_STRIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @redraw_scene to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redraw_scene(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %4 = load i32, i32* @GL_DEPTH_BUFFER_BIT, align 4
  %5 = or i32 %3, %4
  %6 = call i32 @glClear(i32 %5)
  %7 = call i32 @glRotatef(float 2.700000e+02, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)
  %8 = load i32, i32* @GL_TRIANGLE_STRIP, align 4
  %9 = call i32 @glDrawArrays(i32 %8, i32 0, i32 4)
  %10 = call i32 @glRotatef(float 9.000000e+01, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)
  %11 = load i32, i32* @GL_TRIANGLE_STRIP, align 4
  %12 = call i32 @glDrawArrays(i32 %11, i32 4, i32 4)
  %13 = call i32 @glRotatef(float 9.000000e+01, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00)
  %14 = load i32, i32* @GL_TRIANGLE_STRIP, align 4
  %15 = call i32 @glDrawArrays(i32 %14, i32 8, i32 4)
  %16 = call i32 @glRotatef(float 9.000000e+01, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00)
  %17 = load i32, i32* @GL_TRIANGLE_STRIP, align 4
  %18 = call i32 @glDrawArrays(i32 %17, i32 12, i32 4)
  %19 = call i32 @glRotatef(float 2.700000e+02, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00)
  %20 = load i32, i32* @GL_TRIANGLE_STRIP, align 4
  %21 = call i32 @glDrawArrays(i32 %20, i32 16, i32 4)
  %22 = call i32 @glRotatef(float 9.000000e+01, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00)
  %23 = load i32, i32* @GL_TRIANGLE_STRIP, align 4
  %24 = call i32 @glDrawArrays(i32 %23, i32 20, i32 4)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @eglSwapBuffers(i32 %27, i32 %30)
  ret void
}

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @glRotatef(float, float, float, float) #1

declare dso_local i32 @glDrawArrays(i32, i32, i32) #1

declare dso_local i32 @eglSwapBuffers(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
