; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_videocube/extr_triangle.c_exit_func.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_videocube/extr_triangle.c_exit_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@eglImage = common dso_local global i64 0, align 8
@state = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"eglDestroyImageKHR failed.\00", align 1
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@EGL_NO_SURFACE = common dso_local global i32 0, align 4
@EGL_NO_CONTEXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"\0Acube closed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @exit_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exit_func() #0 {
  %1 = load i64, i64* @eglImage, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %14

3:                                                ; preds = %0
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i64, i64* @eglImage, align 8
  %8 = trunc i64 %7 to i32
  %9 = call i32 @eglDestroyImageKHR(i32 %6, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %3
  br label %14

14:                                               ; preds = %13, %0
  %15 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %16 = call i32 @glClear(i32 %15)
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @eglSwapBuffers(i32 %19, i32 %22)
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @EGL_NO_SURFACE, align 4
  %28 = load i32, i32* @EGL_NO_SURFACE, align 4
  %29 = load i32, i32* @EGL_NO_CONTEXT, align 4
  %30 = call i32 @eglMakeCurrent(i32 %26, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @eglDestroySurface(i32 %33, i32 %36)
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @eglDestroyContext(i32 %40, i32 %43)
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @eglTerminate(i32 %47)
  %49 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @eglDestroyImageKHR(i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @eglSwapBuffers(i32, i32) #1

declare dso_local i32 @eglMakeCurrent(i32, i32, i32, i32) #1

declare dso_local i32 @eglDestroySurface(i32, i32) #1

declare dso_local i32 @eglDestroyContext(i32, i32) #1

declare dso_local i32 @eglTerminate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
