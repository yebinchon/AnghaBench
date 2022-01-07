; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_gl.c_gl_finish.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_gl.c_gl_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@edpy = common dso_local global i64 0, align 8
@EGL_NO_SURFACE = common dso_local global i64 0, align 8
@EGL_NO_CONTEXT = common dso_local global i32 0, align 4
@ectxt = common dso_local global i32 0, align 4
@esfc = common dso_local global i64 0, align 8
@EGL_NO_DISPLAY = common dso_local global i64 0, align 8
@gl_es_display = common dso_local global i8* null, align 8
@gl_es_surface = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_finish() #0 {
  %1 = load i64, i64* @edpy, align 8
  %2 = load i64, i64* @EGL_NO_SURFACE, align 8
  %3 = load i64, i64* @EGL_NO_SURFACE, align 8
  %4 = load i32, i32* @EGL_NO_CONTEXT, align 4
  %5 = call i32 @eglMakeCurrent(i64 %1, i64 %2, i64 %3, i32 %4)
  %6 = load i64, i64* @edpy, align 8
  %7 = load i32, i32* @ectxt, align 4
  %8 = call i32 @eglDestroyContext(i64 %6, i32 %7)
  %9 = load i32, i32* @EGL_NO_CONTEXT, align 4
  store i32 %9, i32* @ectxt, align 4
  %10 = load i64, i64* @edpy, align 8
  %11 = load i64, i64* @esfc, align 8
  %12 = call i32 @eglDestroySurface(i64 %10, i64 %11)
  %13 = load i64, i64* @EGL_NO_SURFACE, align 8
  store i64 %13, i64* @esfc, align 8
  %14 = load i64, i64* @edpy, align 8
  %15 = call i32 @eglTerminate(i64 %14)
  %16 = load i64, i64* @EGL_NO_DISPLAY, align 8
  store i64 %16, i64* @edpy, align 8
  %17 = load i64, i64* @edpy, align 8
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** @gl_es_display, align 8
  %19 = load i64, i64* @esfc, align 8
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** @gl_es_surface, align 8
  %21 = call i32 (...) @gl_platform_finish()
  ret void
}

declare dso_local i32 @eglMakeCurrent(i64, i64, i64, i32) #1

declare dso_local i32 @eglDestroyContext(i64, i32) #1

declare dso_local i32 @eglDestroySurface(i64, i64) #1

declare dso_local i32 @eglTerminate(i64) #1

declare dso_local i32 @gl_platform_finish(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
