; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vita2d_gfx.c_vita2d_gfx_set_viewport.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vita2d_gfx.c_vita2d_gfx_set_viewport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_ortho = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { float*, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_14__, i64 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, float, float }

@__const.vita2d_gfx_set_viewport.ortho = private unnamed_addr constant %struct.video_ortho { i32 0, i32 1, i32 1, i32 0, i32 -1, i32 1 }, align 4
@ASPECT_RATIO_CUSTOM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32, i32)* @vita2d_gfx_set_viewport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vita2d_gfx_set_viewport(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca %struct.video_ortho, align 4
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %20 = load i32, i32* %7, align 4
  %21 = uitofp i32 %20 to float
  %22 = load i32, i32* %8, align 4
  %23 = uitofp i32 %22 to float
  %24 = fdiv float %21, %23
  store float %24, float* %14, align 4
  %25 = bitcast %struct.video_ortho* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 bitcast (%struct.video_ortho* @__const.vita2d_gfx_set_viewport.ortho to i8*), i64 24, i1 false)
  %26 = call %struct.TYPE_12__* (...) @config_get_ptr()
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %16, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %17, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  store float* %14, float** %29, align 8
  %30 = load i32, i32* %7, align 4
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  store i32 %30, i32* %31, align 8
  %32 = load i32, i32* %8, align 4
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %5
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %60, label %42

42:                                               ; preds = %39
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call float (...) @video_driver_get_aspect_ratio()
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @video_viewport_get_scaled_integer(%struct.TYPE_14__* %44, i32 %45, i32 %46, float %47, i64 %50)
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %7, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %8, align 4
  br label %156

60:                                               ; preds = %39, %5
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %140

65:                                               ; preds = %60
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %140, label %68

68:                                               ; preds = %65
  %69 = call float (...) @video_driver_get_aspect_ratio()
  store float %69, float* %18, align 4
  %70 = load float, float* %14, align 4
  %71 = load float, float* %18, align 4
  %72 = fsub float %70, %71
  %73 = call float @llvm.fabs.f32(float %72)
  %74 = fcmp olt float %73, 0x3F1A36E2E0000000
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %123

76:                                               ; preds = %68
  %77 = load float, float* %14, align 4
  %78 = load float, float* %18, align 4
  %79 = fcmp ogt float %77, %78
  br i1 %79, label %80, label %101

80:                                               ; preds = %76
  %81 = load float, float* %18, align 4
  %82 = load float, float* %14, align 4
  %83 = fdiv float %81, %82
  %84 = fsub float %83, 1.000000e+00
  %85 = fdiv float %84, 2.000000e+00
  %86 = fadd float %85, 5.000000e-01
  store float %86, float* %19, align 4
  %87 = load i32, i32* %7, align 4
  %88 = uitofp i32 %87 to float
  %89 = load float, float* %19, align 4
  %90 = fsub float 5.000000e-01, %89
  %91 = fmul float %88, %90
  %92 = call i64 @roundf(float %91)
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %7, align 4
  %95 = uitofp i32 %94 to float
  %96 = fmul float 2.000000e+00, %95
  %97 = load float, float* %19, align 4
  %98 = fmul float %96, %97
  %99 = call i64 @roundf(float %98)
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %7, align 4
  br label %122

101:                                              ; preds = %76
  %102 = load float, float* %14, align 4
  %103 = load float, float* %18, align 4
  %104 = fdiv float %102, %103
  %105 = fsub float %104, 1.000000e+00
  %106 = fdiv float %105, 2.000000e+00
  %107 = fadd float %106, 5.000000e-01
  store float %107, float* %19, align 4
  %108 = load i32, i32* %8, align 4
  %109 = uitofp i32 %108 to float
  %110 = load float, float* %19, align 4
  %111 = fsub float 5.000000e-01, %110
  %112 = fmul float %109, %111
  %113 = call i64 @roundf(float %112)
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %8, align 4
  %116 = uitofp i32 %115 to float
  %117 = fmul float 2.000000e+00, %116
  %118 = load float, float* %19, align 4
  %119 = fmul float %117, %118
  %120 = call i64 @roundf(float %119)
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %8, align 4
  br label %122

122:                                              ; preds = %101, %80
  br label %123

123:                                              ; preds = %122, %75
  %124 = load i32, i32* %12, align 4
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 2
  store i32 %124, i32* %127, align 8
  %128 = load i32, i32* %13, align 4
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 3
  store i32 %128, i32* %131, align 4
  %132 = load i32, i32* %7, align 4
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  store i32 %132, i32* %135, align 8
  %136 = load i32, i32* %8, align 4
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 1
  store i32 %136, i32* %139, align 4
  br label %155

140:                                              ; preds = %65, %60
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 2
  store i32 0, i32* %143, align 8
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 3
  store i32 0, i32* %146, align 4
  %147 = load i32, i32* %7, align 4
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  store i32 %147, i32* %150, align 8
  %151 = load i32, i32* %8, align 4
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 1
  store i32 %151, i32* %154, align 4
  br label %155

155:                                              ; preds = %140, %123
  br label %156

156:                                              ; preds = %155, %42
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %158 = load i32, i32* %10, align 4
  %159 = call i32 @vita2d_set_projection(%struct.TYPE_11__* %157, %struct.video_ortho* %15, i32 %158)
  %160 = load i32, i32* %9, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %171, label %162

162:                                              ; preds = %156
  %163 = load i32, i32* %7, align 4
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  store i32 %163, i32* %166, align 8
  %167 = load i32, i32* %8, align 4
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 1
  store i32 %167, i32* %170, align 4
  br label %171

171:                                              ; preds = %162, %156
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_12__* @config_get_ptr(...) #2

declare dso_local i32 @video_viewport_get_scaled_integer(%struct.TYPE_14__*, i32, i32, float, i64) #2

declare dso_local float @video_driver_get_aspect_ratio(...) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #3

declare dso_local i64 @roundf(float) #2

declare dso_local i32 @vita2d_set_projection(%struct.TYPE_11__*, %struct.video_ortho*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
