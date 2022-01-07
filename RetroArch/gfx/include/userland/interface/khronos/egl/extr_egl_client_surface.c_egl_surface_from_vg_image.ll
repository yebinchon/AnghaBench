; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/egl/extr_egl_client_surface.c_egl_surface_from_vg_image.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/egl/extr_egl_client_surface.c_egl_surface_from_vg_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64*, i64, i8*, i8*, i64, i64, i64, i64, i64, i32, i32 }

@EGL_BAD_ALLOC = common dso_local global i64 0, align 8
@PBUFFER = common dso_local global i32 0, align 4
@EGL_DEPTH_SIZE = common dso_local global i32 0, align 4
@EGL_STENCIL_SIZE = common dso_local global i32 0, align 4
@IMAGE_FORMAT_INVALID = common dso_local global i64 0, align 8
@eglIntCreatePbufferFromVGImage_impl = common dso_local global i32 0, align 4
@EGLINTCREATEPBUFFERFROMVGIMAGE_ID = common dso_local global i32 0, align 4
@IMAGE_FORMAT_LIN = common dso_local global i64 0, align 8
@LINEAR = common dso_local global i32 0, align 4
@SRGB = common dso_local global i32 0, align 4
@IMAGE_FORMAT_PRE = common dso_local global i64 0, align 8
@PRE = common dso_local global i32 0, align 4
@NONPRE = common dso_local global i32 0, align 4
@EGL_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @egl_surface_from_vg_image(i64 %0, i32 %1, i64 %2, i64 %3, i64 %4, i8* %5, i8* %6, i64* %7) #0 {
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca [5 x i64], align 16
  %25 = alloca i32*, align 8
  %26 = alloca %struct.TYPE_5__*, align 8
  %27 = alloca i64, align 8
  store i64 %0, i64* %10, align 8
  store i32 %1, i32* %11, align 4
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i64* %7, i64** %17, align 8
  %28 = call i32* (...) @CLIENT_GET_THREAD_STATE()
  store i32* %28, i32** %25, align 8
  %29 = call %struct.TYPE_5__* (...) @egl_surface_pool_alloc()
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %26, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %31 = icmp ne %struct.TYPE_5__* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %8
  %33 = load i64, i64* @EGL_BAD_ALLOC, align 8
  %34 = load i64*, i64** %17, align 8
  store i64 %33, i64* %34, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %9, align 8
  br label %186

35:                                               ; preds = %8
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 23
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @PBUFFER, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 22
  store i32 %39, i32* %41, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 21
  store i64 %42, i64* %44, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 20
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load i64, i64* %13, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 19
  store i64 %49, i64* %51, align 8
  %52 = load i64, i64* %14, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 18
  store i64 %52, i64* %54, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 17
  store i64 0, i64* %56, align 8
  %57 = load i8*, i8** %15, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 16
  store i8* %57, i8** %59, align 8
  %60 = load i8*, i8** %16, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 15
  store i8* %60, i8** %62, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 14
  store i64 0, i64* %64, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 13
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 0
  store i64 0, i64* %68, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 13
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 1
  store i64 -1, i64* %72, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  store i32 0, i32* %74, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 12
  store i64 0, i64* %76, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  store i32 0, i32* %78, align 8
  %79 = load i64, i64* %12, align 8
  %80 = trunc i64 %79 to i32
  %81 = sub nsw i32 %80, 1
  %82 = call i64 @egl_config_get_color_format(i32 %81)
  store i64 %82, i64* %18, align 8
  %83 = load i64, i64* %12, align 8
  %84 = trunc i64 %83 to i32
  %85 = sub nsw i32 %84, 1
  %86 = call i64 @egl_config_get_depth_format(i32 %85)
  store i64 %86, i64* %19, align 8
  %87 = load i64, i64* %12, align 8
  %88 = trunc i64 %87 to i32
  %89 = sub nsw i32 %88, 1
  %90 = call i64 @egl_config_get_mask_format(i32 %89)
  store i64 %90, i64* %20, align 8
  %91 = load i64, i64* %12, align 8
  %92 = trunc i64 %91 to i32
  %93 = sub nsw i32 %92, 1
  %94 = call i64 @egl_config_get_multisample_format(i32 %93)
  store i64 %94, i64* %21, align 8
  %95 = load i64, i64* %12, align 8
  %96 = trunc i64 %95 to i32
  %97 = sub nsw i32 %96, 1
  %98 = load i32, i32* @EGL_DEPTH_SIZE, align 4
  %99 = call i32 @egl_config_get_attrib(i32 %97, i32 %98, i64* %22)
  %100 = load i64, i64* %12, align 8
  %101 = trunc i64 %100 to i32
  %102 = sub nsw i32 %101, 1
  %103 = load i32, i32* @EGL_STENCIL_SIZE, align 4
  %104 = call i32 @egl_config_get_attrib(i32 %102, i32 %103, i64* %23)
  %105 = load i64, i64* %18, align 8
  %106 = load i64, i64* @IMAGE_FORMAT_INVALID, align 8
  %107 = icmp ne i64 %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @vcos_assert(i32 %108)
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 4
  store i32 1, i32* %111, align 8
  %112 = load i32, i32* @eglIntCreatePbufferFromVGImage_impl, align 4
  %113 = load i32*, i32** %25, align 8
  %114 = load i32, i32* @EGLINTCREATEPBUFFERFROMVGIMAGE_ID, align 4
  %115 = load i64, i64* %10, align 8
  %116 = call i32 @RPC_UINT(i64 %115)
  %117 = load i64, i64* %18, align 8
  %118 = call i32 @RPC_UINT(i64 %117)
  %119 = load i64, i64* %19, align 8
  %120 = call i32 @RPC_UINT(i64 %119)
  %121 = load i64, i64* %20, align 8
  %122 = call i32 @RPC_UINT(i64 %121)
  %123 = load i64, i64* %21, align 8
  %124 = call i32 @RPC_UINT(i64 %123)
  %125 = load i64, i64* %14, align 8
  %126 = call i32 @RPC_UINT(i64 %125)
  %127 = load i64, i64* %22, align 8
  %128 = call i32 @RPC_UINT(i64 %127)
  %129 = load i64, i64* %23, align 8
  %130 = call i32 @RPC_UINT(i64 %129)
  %131 = getelementptr inbounds [5 x i64], [5 x i64]* %24, i64 0, i64 0
  %132 = call i32 @RPC_CALL9_OUT_CTRL(i32 %112, i32* %113, i32 %114, i32 %116, i32 %118, i32 %120, i32 %122, i32 %124, i32 %126, i32 %128, i32 %130, i64* %131)
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 5
  store i32 0, i32* %134, align 4
  %135 = getelementptr inbounds [5 x i64], [5 x i64]* %24, i64 0, i64 0
  %136 = load i64, i64* %135, align 16
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %180

138:                                              ; preds = %35
  %139 = getelementptr inbounds [5 x i64], [5 x i64]* %24, i64 0, i64 4
  %140 = load i64, i64* %139, align 16
  store i64 %140, i64* %27, align 8
  %141 = getelementptr inbounds [5 x i64], [5 x i64]* %24, i64 0, i64 0
  %142 = load i64, i64* %141, align 16
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 10
  store i64 %142, i64* %144, align 8
  %145 = getelementptr inbounds [5 x i64], [5 x i64]* %24, i64 0, i64 2
  %146 = load i64, i64* %145, align 16
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 9
  store i64 %146, i64* %148, align 8
  %149 = getelementptr inbounds [5 x i64], [5 x i64]* %24, i64 0, i64 3
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 8
  store i64 %150, i64* %152, align 8
  %153 = load i64, i64* %27, align 8
  %154 = load i64, i64* @IMAGE_FORMAT_LIN, align 8
  %155 = and i64 %153, %154
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %138
  %158 = load i32, i32* @LINEAR, align 4
  br label %161

159:                                              ; preds = %138
  %160 = load i32, i32* @SRGB, align 4
  br label %161

161:                                              ; preds = %159, %157
  %162 = phi i32 [ %158, %157 ], [ %160, %159 ]
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 7
  store i32 %162, i32* %164, align 4
  %165 = load i64, i64* %27, align 8
  %166 = load i64, i64* @IMAGE_FORMAT_PRE, align 8
  %167 = and i64 %165, %166
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %161
  %170 = load i32, i32* @PRE, align 4
  br label %173

171:                                              ; preds = %161
  %172 = load i32, i32* @NONPRE, align 4
  br label %173

173:                                              ; preds = %171, %169
  %174 = phi i32 [ %170, %169 ], [ %172, %171 ]
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 6
  store i32 %174, i32* %176, align 8
  %177 = load i64, i64* @EGL_SUCCESS, align 8
  %178 = load i64*, i64** %17, align 8
  store i64 %177, i64* %178, align 8
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  store %struct.TYPE_5__* %179, %struct.TYPE_5__** %9, align 8
  br label %186

180:                                              ; preds = %35
  %181 = getelementptr inbounds [5 x i64], [5 x i64]* %24, i64 0, i64 1
  %182 = load i64, i64* %181, align 8
  %183 = load i64*, i64** %17, align 8
  store i64 %182, i64* %183, align 8
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %185 = call i32 @egl_surface_pool_free(%struct.TYPE_5__* %184)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %9, align 8
  br label %186

186:                                              ; preds = %180, %173, %32
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  ret %struct.TYPE_5__* %187
}

declare dso_local i32* @CLIENT_GET_THREAD_STATE(...) #1

declare dso_local %struct.TYPE_5__* @egl_surface_pool_alloc(...) #1

declare dso_local i64 @egl_config_get_color_format(i32) #1

declare dso_local i64 @egl_config_get_depth_format(i32) #1

declare dso_local i64 @egl_config_get_mask_format(i32) #1

declare dso_local i64 @egl_config_get_multisample_format(i32) #1

declare dso_local i32 @egl_config_get_attrib(i32, i32, i64*) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @RPC_CALL9_OUT_CTRL(i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64*) #1

declare dso_local i32 @RPC_UINT(i64) #1

declare dso_local i32 @egl_surface_pool_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
