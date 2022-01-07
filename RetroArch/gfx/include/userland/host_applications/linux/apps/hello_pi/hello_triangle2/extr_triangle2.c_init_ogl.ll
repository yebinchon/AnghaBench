; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_triangle2/extr_triangle2.c_init_ogl.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_triangle2/extr_triangle2.c_init_ogl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i64, i64 }

@init_ogl.nativewindow = internal global %struct.TYPE_9__ zeroinitializer, align 4
@init_ogl.attribute_list = internal constant [11 x i32] [i32 130, i32 8, i32 132, i32 8, i32 134, i32 8, i32 135, i32 8, i32 129, i32 128, i32 131], align 16
@init_ogl.context_attributes = internal constant [3 x i32] [i32 133, i32 2, i32 131], align 4
@EGL_DEFAULT_DISPLAY = common dso_local global i32 0, align 4
@EGL_NO_DISPLAY = common dso_local global i64 0, align 8
@EGL_FALSE = common dso_local global i64 0, align 8
@EGL_OPENGL_ES_API = common dso_local global i32 0, align 4
@EGL_NO_CONTEXT = common dso_local global i32 0, align 4
@DISPMANX_PROTECTION_NONE = common dso_local global i32 0, align 4
@EGL_NO_SURFACE = common dso_local global i32 0, align 4
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @init_ogl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_ogl(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca %struct.TYPE_8__, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  store i64 0, i64* %3, align 8
  %12 = load i32, i32* @EGL_DEFAULT_DISPLAY, align 4
  %13 = call i64 @eglGetDisplay(i32 %12)
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @EGL_NO_DISPLAY, align 8
  %20 = icmp ne i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = call i32 (...) @check()
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @eglInitialize(i64 %26, i32* null, i32* null)
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* @EGL_FALSE, align 8
  %29 = load i64, i64* %4, align 8
  %30 = icmp ne i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = call i32 (...) @check()
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @eglChooseConfig(i64 %36, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @init_ogl.attribute_list, i64 0, i64 0), i32* %11, i32 1, i32* %5)
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* @EGL_FALSE, align 8
  %39 = load i64, i64* %4, align 8
  %40 = icmp ne i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = call i32 (...) @check()
  %44 = load i32, i32* @EGL_OPENGL_ES_API, align 4
  %45 = call i64 @eglBindAPI(i32 %44)
  store i64 %45, i64* %4, align 8
  %46 = load i64, i64* @EGL_FALSE, align 8
  %47 = load i64, i64* %4, align 8
  %48 = icmp ne i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = call i32 (...) @check()
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @EGL_NO_CONTEXT, align 4
  %57 = call i32 @eglCreateContext(i64 %54, i32 %55, i32 %56, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @init_ogl.context_attributes, i64 0, i64 0))
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @EGL_NO_CONTEXT, align 4
  %64 = icmp ne i32 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = call i32 (...) @check()
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  %72 = call i64 @graphics_get_display_size(i32 0, i32* %69, i32* %71)
  store i64 %72, i64* %3, align 8
  %73 = load i64, i64* %3, align 8
  %74 = icmp sge i64 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  store i64 0, i64* %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  store i64 0, i64* %78, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store i32 %81, i32* %82, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  store i32 %85, i32* %86, align 4
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 3
  store i64 0, i64* %87, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  store i64 0, i64* %88, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = shl i32 %91, 16
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i32 %92, i32* %93, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 %96, 16
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store i32 %97, i32* %98, align 4
  %99 = call i32 @vc_dispmanx_display_open(i32 0)
  store i32 %99, i32* %7, align 4
  %100 = call i32 @vc_dispmanx_update_start(i32 0)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @DISPMANX_PROTECTION_NONE, align 4
  %104 = call i32 @vc_dispmanx_element_add(i32 %101, i32 %102, i32 0, %struct.TYPE_8__* %9, i32 0, %struct.TYPE_8__* %10, i32 %103, i32 0, i32 0, i32 0)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @init_ogl.nativewindow, i32 0, i32 2), align 4
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  store i32 %108, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @init_ogl.nativewindow, i32 0, i32 0), align 4
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @init_ogl.nativewindow, i32 0, i32 1), align 4
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @vc_dispmanx_update_submit_sync(i32 %112)
  %114 = call i32 (...) @check()
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @eglCreateWindowSurface(i64 %117, i32 %118, %struct.TYPE_9__* @init_ogl.nativewindow, i32* null)
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 4
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @EGL_NO_SURFACE, align 4
  %126 = icmp ne i32 %124, %125
  %127 = zext i1 %126 to i32
  %128 = call i32 @assert(i32 %127)
  %129 = call i32 (...) @check()
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = call i64 @eglMakeCurrent(i64 %132, i32 %135, i32 %138, i32 %141)
  store i64 %142, i64* %4, align 8
  %143 = load i64, i64* @EGL_FALSE, align 8
  %144 = load i64, i64* %4, align 8
  %145 = icmp ne i64 %143, %144
  %146 = zext i1 %145 to i32
  %147 = call i32 @assert(i32 %146)
  %148 = call i32 (...) @check()
  %149 = call i32 @glClearColor(float 0x3FC3333340000000, float 2.500000e-01, float 0x3FD6666660000000, float 1.000000e+00)
  %150 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %151 = call i32 @glClear(i32 %150)
  %152 = call i32 (...) @check()
  ret void
}

declare dso_local i64 @eglGetDisplay(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @check(...) #1

declare dso_local i64 @eglInitialize(i64, i32*, i32*) #1

declare dso_local i64 @eglChooseConfig(i64, i32*, i32*, i32, i32*) #1

declare dso_local i64 @eglBindAPI(i32) #1

declare dso_local i32 @eglCreateContext(i64, i32, i32, i32*) #1

declare dso_local i64 @graphics_get_display_size(i32, i32*, i32*) #1

declare dso_local i32 @vc_dispmanx_display_open(i32) #1

declare dso_local i32 @vc_dispmanx_update_start(i32) #1

declare dso_local i32 @vc_dispmanx_element_add(i32, i32, i32, %struct.TYPE_8__*, i32, %struct.TYPE_8__*, i32, i32, i32, i32) #1

declare dso_local i32 @vc_dispmanx_update_submit_sync(i32) #1

declare dso_local i32 @eglCreateWindowSurface(i64, i32, %struct.TYPE_9__*, i32*) #1

declare dso_local i64 @eglMakeCurrent(i64, i32, i32, i32) #1

declare dso_local i32 @glClearColor(float, float, float, float) #1

declare dso_local i32 @glClear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
