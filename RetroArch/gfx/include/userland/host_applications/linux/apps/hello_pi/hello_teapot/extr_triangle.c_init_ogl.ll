; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_teapot/extr_triangle.c_init_ogl.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_teapot/extr_triangle.c_init_ogl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i64, i64 }

@init_ogl.nativewindow = internal global %struct.TYPE_9__ zeroinitializer, align 4
@init_ogl.attribute_list = internal constant [15 x i32] [i32 131, i32 8, i32 133, i32 8, i32 135, i32 8, i32 136, i32 8, i32 134, i32 16, i32 130, i32 4, i32 129, i32 128, i32 132], align 16
@EGL_DEFAULT_DISPLAY = common dso_local global i32 0, align 4
@EGL_NO_DISPLAY = common dso_local global i64 0, align 8
@EGL_FALSE = common dso_local global i64 0, align 8
@EGL_NO_CONTEXT = common dso_local global i64 0, align 8
@DISPMANX_PROTECTION_NONE = common dso_local global i32 0, align 4
@EGL_NO_SURFACE = common dso_local global i32 0, align 4
@GL_CULL_FACE = common dso_local global i32 0, align 4
@GL_DEPTH_TEST = common dso_local global i32 0, align 4
@GL_LEQUAL = common dso_local global i32 0, align 4
@__const.init_ogl.noAmbient = private unnamed_addr constant [4 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 16
@GL_LIGHT0 = common dso_local global i32 0, align 4
@GL_AMBIENT = common dso_local global i32 0, align 4
@GL_LIGHTING = common dso_local global i32 0, align 4
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
  %12 = alloca [4 x float], align 16
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  store i64 0, i64* %3, align 8
  %13 = load i32, i32* @EGL_DEFAULT_DISPLAY, align 4
  %14 = call i64 @eglGetDisplay(i32 %13)
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @EGL_NO_DISPLAY, align 8
  %21 = icmp ne i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
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
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @eglSaneChooseConfigBRCM(i64 %35, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @init_ogl.attribute_list, i64 0, i64 0), i32* %11, i32 1, i32* %5)
  store i64 %36, i64* %4, align 8
  %37 = load i64, i64* @EGL_FALSE, align 8
  %38 = load i64, i64* %4, align 8
  %39 = icmp ne i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load i64, i64* @EGL_NO_CONTEXT, align 8
  %47 = call i64 @eglCreateContext(i64 %44, i32 %45, i64 %46, i32* null)
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @EGL_NO_CONTEXT, align 8
  %54 = icmp ne i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 3
  %61 = call i64 @graphics_get_display_size(i32 0, i32* %58, i32* %60)
  store i64 %61, i64* %3, align 8
  %62 = load i64, i64* %3, align 8
  %63 = icmp sge i64 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  store i64 0, i64* %66, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  store i64 0, i64* %67, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store i32 %70, i32* %71, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  store i32 %74, i32* %75, align 4
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 3
  store i64 0, i64* %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  store i64 0, i64* %77, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = shl i32 %80, 16
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i32 %81, i32* %82, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %85, 16
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store i32 %86, i32* %87, align 4
  %88 = call i32 @vc_dispmanx_display_open(i32 0)
  store i32 %88, i32* %7, align 4
  %89 = call i32 @vc_dispmanx_update_start(i32 0)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @DISPMANX_PROTECTION_NONE, align 4
  %93 = call i32 @vc_dispmanx_element_add(i32 %90, i32 %91, i32 0, %struct.TYPE_8__* %9, i32 0, %struct.TYPE_8__* %10, i32 %92, i32 0, i32 0, i32 0)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @init_ogl.nativewindow, i32 0, i32 2), align 4
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @init_ogl.nativewindow, i32 0, i32 0), align 4
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @init_ogl.nativewindow, i32 0, i32 1), align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @vc_dispmanx_update_submit_sync(i32 %101)
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @eglCreateWindowSurface(i64 %105, i32 %106, %struct.TYPE_9__* @init_ogl.nativewindow, i32* null)
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @EGL_NO_SURFACE, align 4
  %114 = icmp ne i32 %112, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @assert(i32 %115)
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = call i64 @eglMakeCurrent(i64 %119, i32 %122, i32 %125, i64 %128)
  store i64 %129, i64* %4, align 8
  %130 = load i64, i64* @EGL_FALSE, align 8
  %131 = load i64, i64* %4, align 8
  %132 = icmp ne i64 %130, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 @assert(i32 %133)
  %135 = call i32 @glClearColor(float 0x3FDF2339C0000000, float 0x3FDCF0D840000000, float 0x3FE05A5120000000, float 1.000000e+00)
  %136 = load i32, i32* @GL_CULL_FACE, align 4
  %137 = call i32 @glEnable(i32 %136)
  %138 = load i32, i32* @GL_DEPTH_TEST, align 4
  %139 = call i32 @glEnable(i32 %138)
  %140 = call i32 @glClearDepthf(double 1.000000e+00)
  %141 = load i32, i32* @GL_LEQUAL, align 4
  %142 = call i32 @glDepthFunc(i32 %141)
  %143 = bitcast [4 x float]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %143, i8* align 16 bitcast ([4 x float]* @__const.init_ogl.noAmbient to i8*), i64 16, i1 false)
  %144 = load i32, i32* @GL_LIGHT0, align 4
  %145 = load i32, i32* @GL_AMBIENT, align 4
  %146 = getelementptr inbounds [4 x float], [4 x float]* %12, i64 0, i64 0
  %147 = call i32 @glLightfv(i32 %144, i32 %145, float* %146)
  %148 = load i32, i32* @GL_LIGHT0, align 4
  %149 = call i32 @glEnable(i32 %148)
  %150 = load i32, i32* @GL_LIGHTING, align 4
  %151 = call i32 @glEnable(i32 %150)
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

declare dso_local i32 @glClearDepthf(double) #1

declare dso_local i32 @glDepthFunc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @glLightfv(i32, i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
