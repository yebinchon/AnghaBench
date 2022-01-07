; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_videocube/extr_triangle.c_init_ogl.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_videocube/extr_triangle.c_init_ogl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i64, i64 }

@init_ogl.nativewindow = internal global %struct.TYPE_9__ zeroinitializer, align 4
@init_ogl.attribute_list = internal constant [13 x i32] [i32 130, i32 8, i32 132, i32 8, i32 134, i32 8, i32 135, i32 8, i32 133, i32 16, i32 129, i32 128, i32 131], align 16
@EGL_DEFAULT_DISPLAY = common dso_local global i32 0, align 4
@EGL_NO_DISPLAY = common dso_local global i64 0, align 8
@EGL_FALSE = common dso_local global i64 0, align 8
@EGL_NO_CONTEXT = common dso_local global i64 0, align 8
@DISPMANX_PROTECTION_NONE = common dso_local global i32 0, align 4
@EGL_NO_SURFACE = common dso_local global i32 0, align 4
@GL_CULL_FACE = common dso_local global i32 0, align 4
@GL_MODELVIEW = common dso_local global i32 0, align 4
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
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @eglInitialize(i64 %25, i32* null, i32* null)
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* @EGL_FALSE, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp ne i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @eglSaneChooseConfigBRCM(i64 %34, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @init_ogl.attribute_list, i64 0, i64 0), i32* %11, i32 1, i32* %5)
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* @EGL_FALSE, align 8
  %37 = load i64, i64* %4, align 8
  %38 = icmp ne i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load i64, i64* @EGL_NO_CONTEXT, align 8
  %46 = call i64 @eglCreateContext(i64 %43, i32 %44, i64 %45, i32* null)
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @EGL_NO_CONTEXT, align 8
  %53 = icmp ne i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 3
  %60 = call i64 @graphics_get_display_size(i32 0, i32* %57, i32* %59)
  store i64 %60, i64* %3, align 8
  %61 = load i64, i64* %3, align 8
  %62 = icmp sge i64 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  store i64 0, i64* %65, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  store i64 0, i64* %66, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store i32 %69, i32* %70, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  store i32 %73, i32* %74, align 4
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 3
  store i64 0, i64* %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  store i64 0, i64* %76, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = shl i32 %79, 16
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i32 %80, i32* %81, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 16
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store i32 %85, i32* %86, align 4
  %87 = call i32 @vc_dispmanx_display_open(i32 0)
  store i32 %87, i32* %7, align 4
  %88 = call i32 @vc_dispmanx_update_start(i32 0)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @DISPMANX_PROTECTION_NONE, align 4
  %92 = call i32 @vc_dispmanx_element_add(i32 %89, i32 %90, i32 0, %struct.TYPE_8__* %9, i32 0, %struct.TYPE_8__* %10, i32 %91, i32 0, i32 0, i32 0)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @init_ogl.nativewindow, i32 0, i32 2), align 4
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @init_ogl.nativewindow, i32 0, i32 0), align 4
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @init_ogl.nativewindow, i32 0, i32 1), align 4
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @vc_dispmanx_update_submit_sync(i32 %100)
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @eglCreateWindowSurface(i64 %104, i32 %105, %struct.TYPE_9__* @init_ogl.nativewindow, i32* null)
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @EGL_NO_SURFACE, align 4
  %113 = icmp ne i32 %111, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert(i32 %114)
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = call i64 @eglMakeCurrent(i64 %118, i32 %121, i32 %124, i64 %127)
  store i64 %128, i64* %4, align 8
  %129 = load i64, i64* @EGL_FALSE, align 8
  %130 = load i64, i64* %4, align 8
  %131 = icmp ne i64 %129, %130
  %132 = zext i1 %131 to i32
  %133 = call i32 @assert(i32 %132)
  %134 = call i32 @glClearColor(float 0x3FC3333340000000, float 2.500000e-01, float 0x3FD6666660000000, float 1.000000e+00)
  %135 = load i32, i32* @GL_CULL_FACE, align 4
  %136 = call i32 @glEnable(i32 %135)
  %137 = load i32, i32* @GL_MODELVIEW, align 4
  %138 = call i32 @glMatrixMode(i32 %137)
  ret void
}

declare dso_local i64 @eglGetDisplay(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @eglInitialize(i64, i32*, i32*) #1

declare dso_local i64 @eglSaneChooseConfigBRCM(i64, i32*, i32*, i32, i32*) #1

declare dso_local i64 @eglCreateContext(i64, i32, i64, i32*) #1

declare dso_local i64 @graphics_get_display_size(i32, i32*, i32*) #1

declare dso_local i32 @vc_dispmanx_display_open(i32) #1

declare dso_local i32 @vc_dispmanx_update_start(i32) #1

declare dso_local i32 @vc_dispmanx_element_add(i32, i32, i32, %struct.TYPE_8__*, i32, %struct.TYPE_8__*, i32, i32, i32, i32) #1

declare dso_local i32 @vc_dispmanx_update_submit_sync(i32) #1

declare dso_local i32 @eglCreateWindowSurface(i64, i32, %struct.TYPE_9__*, i32*) #1

declare dso_local i64 @eglMakeCurrent(i64, i32, i32, i64) #1

declare dso_local i32 @glClearColor(float, float, float, float) #1

declare dso_local i32 @glEnable(i32) #1

declare dso_local i32 @glMatrixMode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
