; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_tiger/extr_main.c_deinit.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_tiger/extr_main.c_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tiger = common dso_local global i32 0, align 4
@egldisplay = common dso_local global i32 0, align 4
@EGL_NO_SURFACE = common dso_local global i32 0, align 4
@EGL_NO_CONTEXT = common dso_local global i32 0, align 4
@EGL_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deinit() #0 {
  %1 = load i32, i32* @tiger, align 4
  %2 = call i32 @PS_destruct(i32 %1)
  %3 = load i32, i32* @egldisplay, align 4
  %4 = load i32, i32* @EGL_NO_SURFACE, align 4
  %5 = load i32, i32* @EGL_NO_SURFACE, align 4
  %6 = load i32, i32* @EGL_NO_CONTEXT, align 4
  %7 = call i32 @eglMakeCurrent(i32 %3, i32 %4, i32 %5, i32 %6)
  %8 = call i64 (...) @eglGetError()
  %9 = load i64, i64* @EGL_SUCCESS, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32, i32* @egldisplay, align 4
  %14 = call i32 @eglTerminate(i32 %13)
  %15 = call i64 (...) @eglGetError()
  %16 = load i64, i64* @EGL_SUCCESS, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = call i32 (...) @eglReleaseThread()
  ret void
}

declare dso_local i32 @PS_destruct(i32) #1

declare dso_local i32 @eglMakeCurrent(i32, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @eglGetError(...) #1

declare dso_local i32 @eglTerminate(i32) #1

declare dso_local i32 @eglReleaseThread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
