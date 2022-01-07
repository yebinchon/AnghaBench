; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_triangle/extr_triangle.c_exit_func.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_triangle/extr_triangle.c_exit_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@state = common dso_local global %struct.TYPE_2__* null, align 8
@EGL_NO_SURFACE = common dso_local global i32 0, align 4
@EGL_NO_CONTEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"\0Acube closed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @exit_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exit_func() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %4 = call i32 @glClear(i32 %3)
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @eglSwapBuffers(i32 %7, i32 %10)
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 8
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @glDeleteTextures(i32 6, i32 %14)
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @eglDestroySurface(i32 %18, i32 %21)
  %23 = call i32 @vc_dispmanx_update_start(i32 0)
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* %1, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @vc_dispmanx_element_remove(i32 %24, i32 %27)
  store i32 %28, i32* %2, align 4
  %29 = load i32, i32* %2, align 4
  %30 = icmp eq i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32, i32* %1, align 4
  %34 = call i32 @vc_dispmanx_update_submit_sync(i32 %33)
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @vc_dispmanx_display_close(i32 %37)
  store i32 %38, i32* %2, align 4
  %39 = load i32, i32* %2, align 4
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @EGL_NO_SURFACE, align 4
  %47 = load i32, i32* @EGL_NO_SURFACE, align 4
  %48 = load i32, i32* @EGL_NO_CONTEXT, align 4
  %49 = call i32 @eglMakeCurrent(i32 %45, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @eglDestroyContext(i32 %52, i32 %55)
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @eglTerminate(i32 %59)
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @free(i32 %63)
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @free(i32 %67)
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @free(i32 %71)
  %73 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @eglSwapBuffers(i32, i32) #1

declare dso_local i32 @glDeleteTextures(i32, i32) #1

declare dso_local i32 @eglDestroySurface(i32, i32) #1

declare dso_local i32 @vc_dispmanx_update_start(i32) #1

declare dso_local i32 @vc_dispmanx_element_remove(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vc_dispmanx_update_submit_sync(i32) #1

declare dso_local i32 @vc_dispmanx_display_close(i32) #1

declare dso_local i32 @eglMakeCurrent(i32, i32, i32, i32) #1

declare dso_local i32 @eglDestroyContext(i32, i32) #1

declare dso_local i32 @eglTerminate(i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
