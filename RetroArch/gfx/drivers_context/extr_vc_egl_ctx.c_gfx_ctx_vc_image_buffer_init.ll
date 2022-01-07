; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_vc_egl_ctx.c_gfx_ctx_vc_image_buffer_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_vc_egl_ctx.c_gfx_ctx_vc_image_buffer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i64, i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64, i64, i32, i32 }

@EGL_WIDTH = common dso_local global i32 0, align 4
@EGL_HEIGHT = common dso_local global i32 0, align 4
@EGL_NONE = common dso_local global i32 0, align 4
@vc_api = common dso_local global i64 0, align 8
@GFX_CTX_OPENVG_API = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"eglCreateImageKHR\00", align 1
@peglCreateImageKHR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"eglDestroyImageKHR\00", align 1
@peglDestroyImageKHR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"KHR_image\00", align 1
@RARCH_SCALE_BASE = common dso_local global i32 0, align 4
@EGL_OPENVG_API = common dso_local global i32 0, align 4
@EGL_NO_SURFACE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [54 x i8] c"[VideoCore:EGLImage] failed to create PbufferSurface\0A\00", align 1
@EGL_NO_CONTEXT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [47 x i8] c"[VideoCore:EGLImage] failed to create context\0A\00", align 1
@EGL_FALSE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [53 x i8] c"[VideoCore:EGLImage] failed to make context current\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_7__*)* @gfx_ctx_vc_image_buffer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_ctx_vc_image_buffer_init(i8* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca [5 x i32], align 16
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %7, align 8
  %11 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  %12 = load i32, i32* @EGL_WIDTH, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds i32, i32* %11, i64 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %13, align 4
  %17 = getelementptr inbounds i32, i32* %13, i64 1
  %18 = load i32, i32* @EGL_HEIGHT, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds i32, i32* %17, i64 1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %19, align 4
  %23 = getelementptr inbounds i32, i32* %19, i64 1
  %24 = load i32, i32* @EGL_NONE, align 4
  store i32 %24, i32* %23, align 4
  %25 = load i64, i64* @vc_api, align 8
  %26 = load i64, i64* @GFX_CTX_OPENVG_API, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %191

29:                                               ; preds = %2
  %30 = call i64 @egl_get_proc_address(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i64 %30, i64* @peglCreateImageKHR, align 8
  %31 = call i64 @egl_get_proc_address(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i64 %31, i64* @peglDestroyImageKHR, align 8
  %32 = load i64, i64* @peglCreateImageKHR, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load i64, i64* @peglDestroyImageKHR, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %39 = call i32 @gfx_ctx_vc_egl_query_extension(%struct.TYPE_8__* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37, %34, %29
  store i32 0, i32* %3, align 4
  br label %191

42:                                               ; preds = %37
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @RARCH_SCALE_BASE, align 4
  %47 = mul nsw i32 %45, %46
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @EGL_OPENVG_API, align 4
  %51 = call i32 @eglBindAPI(i32 %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  %61 = call i64 @eglCreatePbufferSurface(i32 %55, i32 %59, i32* %60)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @EGL_NO_SURFACE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %42
  %70 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  br label %135

71:                                               ; preds = %42
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @eglCreateContext(i32 %75, i32 %79, i32* null, i32* null)
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  store i64 %80, i64* %82, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @EGL_NO_CONTEXT, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %71
  %89 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  br label %135

90:                                               ; preds = %71
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = call i64 @eglMakeCurrent(i32 %94, i64 %97, i64 %100, i64 %103)
  store i64 %104, i64* %6, align 8
  %105 = load i64, i64* %6, align 8
  %106 = load i64, i64* @EGL_FALSE, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %90
  %109 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  br label %135

110:                                              ; preds = %90
  %111 = load i64, i64* @vc_api, align 8
  %112 = call i32 @gfx_ctx_vc_bind_api(i32* null, i64 %111, i32 0, i32 0)
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = call i64 @eglMakeCurrent(i32 %116, i64 %120, i64 %124, i64 %128)
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 4
  store i32 %132, i32* %134, align 8
  store i32 1, i32* %3, align 4
  br label %191

135:                                              ; preds = %108, %88, %69
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @EGL_NO_SURFACE, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %153

141:                                              ; preds = %135
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @eglDestroySurface(i32 %145, i64 %148)
  %150 = load i64, i64* @EGL_NO_SURFACE, align 8
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 1
  store i64 %150, i64* %152, align 8
  br label %153

153:                                              ; preds = %141, %135
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @EGL_NO_CONTEXT, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %171

159:                                              ; preds = %153
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @eglDestroyContext(i32 %163, i64 %166)
  %168 = load i64, i64* @EGL_NO_CONTEXT, align 8
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 1
  store i64 %168, i64* %170, align 8
  br label %171

171:                                              ; preds = %159, %153
  %172 = load i64, i64* @vc_api, align 8
  %173 = call i32 @gfx_ctx_vc_bind_api(i32* null, i64 %172, i32 0, i32 0)
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = call i64 @eglMakeCurrent(i32 %177, i64 %181, i64 %185, i64 %189)
  store i32 0, i32* %3, align 4
  br label %191

191:                                              ; preds = %171, %110, %41, %28
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local i64 @egl_get_proc_address(i8*) #1

declare dso_local i32 @gfx_ctx_vc_egl_query_extension(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @eglBindAPI(i32) #1

declare dso_local i64 @eglCreatePbufferSurface(i32, i32, i32*) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

declare dso_local i64 @eglCreateContext(i32, i32, i32*, i32*) #1

declare dso_local i64 @eglMakeCurrent(i32, i64, i64, i64) #1

declare dso_local i32 @gfx_ctx_vc_bind_api(i32*, i64, i32, i32) #1

declare dso_local i32 @eglDestroySurface(i32, i64) #1

declare dso_local i32 @eglDestroyContext(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
