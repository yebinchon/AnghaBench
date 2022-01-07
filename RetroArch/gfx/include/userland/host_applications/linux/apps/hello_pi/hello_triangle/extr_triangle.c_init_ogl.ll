; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_triangle/extr_triangle.c_init_ogl.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_triangle/extr_triangle.c_init_ogl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i64, i64 }

@init_ogl.nativewindow = internal global %struct.TYPE_9__ zeroinitializer, align 4
@init_ogl.attribute_list = internal constant [11 x i32] [i32 130, i32 8, i32 132, i32 8, i32 133, i32 8, i32 134, i32 8, i32 129, i32 128, i32 131], align 16
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
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  store i64 0, i64* %3, align 8
  %10 = load i32, i32* @EGL_DEFAULT_DISPLAY, align 4
  %11 = call i64 @eglGetDisplay(i32 %10)
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @EGL_NO_DISPLAY, align 8
  %18 = icmp ne i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @eglInitialize(i64 %23, i32* null, i32* null)
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* @EGL_FALSE, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp ne i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @eglChooseConfig(i64 %32, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @init_ogl.attribute_list, i64 0, i64 0), i32* %9, i32 1, i32* %5)
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* @EGL_FALSE, align 8
  %35 = load i64, i64* %4, align 8
  %36 = icmp ne i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i64, i64* @EGL_NO_CONTEXT, align 8
  %44 = call i64 @eglCreateContext(i64 %41, i32 %42, i64 %43, i32* null)
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @EGL_NO_CONTEXT, align 8
  %51 = icmp ne i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 3
  %58 = call i64 @graphics_get_display_size(i32 0, i32* %55, i32* %57)
  store i64 %58, i64* %3, align 8
  %59 = load i64, i64* %3, align 8
  %60 = icmp sge i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 3
  store i64 0, i64* %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  store i64 0, i64* %64, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i32 %67, i32* %68, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  store i32 %71, i32* %72, align 4
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  store i64 0, i64* %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = shl i32 %77, 16
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i32 %78, i32* %79, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %82, 16
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i32 %83, i32* %84, align 4
  %85 = call i32 @vc_dispmanx_display_open(i32 0)
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 6
  store i32 %85, i32* %87, align 8
  %88 = call i32 @vc_dispmanx_update_start(i32 0)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @DISPMANX_PROTECTION_NONE, align 4
  %94 = call i32 @vc_dispmanx_element_add(i32 %89, i32 %92, i32 0, %struct.TYPE_8__* %7, i32 0, %struct.TYPE_8__* %8, i32 %93, i32 0, i32 0, i32 0)
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 4
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @init_ogl.nativewindow, i32 0, i32 2), align 4
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  store i32 %102, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @init_ogl.nativewindow, i32 0, i32 0), align 4
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @init_ogl.nativewindow, i32 0, i32 1), align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @vc_dispmanx_update_submit_sync(i32 %106)
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @eglCreateWindowSurface(i64 %110, i32 %111, %struct.TYPE_9__* @init_ogl.nativewindow, i32* null)
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @EGL_NO_SURFACE, align 4
  %119 = icmp ne i32 %117, %118
  %120 = zext i1 %119 to i32
  %121 = call i32 @assert(i32 %120)
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = call i64 @eglMakeCurrent(i64 %124, i32 %127, i32 %130, i64 %133)
  store i64 %134, i64* %4, align 8
  %135 = load i64, i64* @EGL_FALSE, align 8
  %136 = load i64, i64* %4, align 8
  %137 = icmp ne i64 %135, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 @assert(i32 %138)
  %140 = call i32 @glClearColor(float 0x3FC3333340000000, float 2.500000e-01, float 0x3FD6666660000000, float 1.000000e+00)
  %141 = load i32, i32* @GL_CULL_FACE, align 4
  %142 = call i32 @glEnable(i32 %141)
  %143 = load i32, i32* @GL_MODELVIEW, align 4
  %144 = call i32 @glMatrixMode(i32 %143)
  ret void
}

declare dso_local i64 @eglGetDisplay(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @eglInitialize(i64, i32*, i32*) #1

declare dso_local i64 @eglChooseConfig(i64, i32*, i32*, i32, i32*) #1

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
