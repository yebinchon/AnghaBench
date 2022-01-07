; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_tiger/extr_main.c_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_tiger/extr_main.c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@init.s_configAttribs = internal constant [15 x i32] [i32 131, i32 8, i32 134, i32 8, i32 136, i32 8, i32 137, i32 8, i32 133, i32 135, i32 129, i32 128, i32 130, i32 1, i32 132], align 16
@EGL_DEFAULT_DISPLAY = common dso_local global i32 0, align 4
@egldisplay = common dso_local global i32 0, align 4
@EGL_SUCCESS = common dso_local global i64 0, align 8
@EGL_OPENVG_API = common dso_local global i32 0, align 4
@eglconfig = common dso_local global i32 0, align 4
@eglsurface = common dso_local global i32 0, align 4
@eglcontext = common dso_local global i32 0, align 4
@tigerCommands = common dso_local global i32 0, align 4
@tigerCommandCount = common dso_local global i32 0, align 4
@tigerPoints = common dso_local global i32 0, align 4
@tigerPointCount = common dso_local global i32 0, align 4
@tiger = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @EGL_DEFAULT_DISPLAY, align 4
  %5 = call i32 @eglGetDisplay(i32 %4)
  store i32 %5, i32* @egldisplay, align 4
  %6 = load i32, i32* @egldisplay, align 4
  %7 = call i32 @eglInitialize(i32 %6, i32* null, i32* null)
  %8 = call i64 (...) @eglGetError()
  %9 = load i64, i64* @EGL_SUCCESS, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32, i32* @EGL_OPENVG_API, align 4
  %14 = call i32 @eglBindAPI(i32 %13)
  %15 = load i32, i32* @egldisplay, align 4
  %16 = call i32 @eglChooseConfig(i32 %15, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @init.s_configAttribs, i64 0, i64 0), i32* @eglconfig, i32 1, i32* %3)
  %17 = call i64 (...) @eglGetError()
  %18 = load i64, i64* @EGL_SUCCESS, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = icmp eq i32 %22, 1
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32, i32* @egldisplay, align 4
  %27 = load i32, i32* @eglconfig, align 4
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @eglCreateWindowSurface(i32 %26, i32 %27, i32 %28, i32* null)
  store i32 %29, i32* @eglsurface, align 4
  %30 = call i64 (...) @eglGetError()
  %31 = load i64, i64* @EGL_SUCCESS, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i32, i32* @egldisplay, align 4
  %36 = load i32, i32* @eglconfig, align 4
  %37 = call i32 @eglCreateContext(i32 %35, i32 %36, i32* null, i32* null)
  store i32 %37, i32* @eglcontext, align 4
  %38 = call i64 (...) @eglGetError()
  %39 = load i64, i64* @EGL_SUCCESS, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load i32, i32* @egldisplay, align 4
  %44 = load i32, i32* @eglsurface, align 4
  %45 = load i32, i32* @eglsurface, align 4
  %46 = load i32, i32* @eglcontext, align 4
  %47 = call i32 @eglMakeCurrent(i32 %43, i32 %44, i32 %45, i32 %46)
  %48 = call i64 (...) @eglGetError()
  %49 = load i64, i64* @EGL_SUCCESS, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load i32, i32* @tigerCommands, align 4
  %54 = load i32, i32* @tigerCommandCount, align 4
  %55 = load i32, i32* @tigerPoints, align 4
  %56 = load i32, i32* @tigerPointCount, align 4
  %57 = call i32 @PS_construct(i32 %53, i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* @tiger, align 4
  ret void
}

declare dso_local i32 @eglGetDisplay(i32) #1

declare dso_local i32 @eglInitialize(i32, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @eglGetError(...) #1

declare dso_local i32 @eglBindAPI(i32) #1

declare dso_local i32 @eglChooseConfig(i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @eglCreateWindowSurface(i32, i32, i32, i32*) #1

declare dso_local i32 @eglCreateContext(i32, i32, i32*, i32*) #1

declare dso_local i32 @eglMakeCurrent(i32, i32, i32, i32) #1

declare dso_local i32 @PS_construct(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
