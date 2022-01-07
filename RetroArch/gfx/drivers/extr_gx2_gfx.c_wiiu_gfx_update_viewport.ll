; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gx2_gfx.c_wiiu_gfx_update_viewport.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gx2_gfx.c_wiiu_gfx_update_viewport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_17__, i64, %struct.TYPE_12__ }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i64 }

@ASPECT_RATIO_CUSTOM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @wiiu_gfx_update_viewport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiiu_gfx_update_viewport(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = uitofp i32 %21 to float
  %23 = load i32, i32* %6, align 4
  %24 = uitofp i32 %23 to float
  %25 = fdiv float %22, %24
  store float %25, float* %7, align 4
  %26 = call %struct.TYPE_16__* (...) @config_get_ptr()
  store %struct.TYPE_16__* %26, %struct.TYPE_16__** %8, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %1
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call float (...) @video_driver_get_aspect_ratio()
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @video_viewport_get_scaled_integer(%struct.TYPE_17__* %34, i32 %35, i32 %36, float %37, i64 %40)
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %5, align 4
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %6, align 4
  br label %143

50:                                               ; preds = %1
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %127

55:                                               ; preds = %50
  %56 = call float (...) @video_driver_get_aspect_ratio()
  store float %56, float* %9, align 4
  %57 = load float, float* %7, align 4
  %58 = load float, float* %9, align 4
  %59 = fsub float %57, %58
  %60 = call float @llvm.fabs.f32(float %59)
  %61 = fcmp olt float %60, 0x3F1A36E2E0000000
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %110

63:                                               ; preds = %55
  %64 = load float, float* %7, align 4
  %65 = load float, float* %9, align 4
  %66 = fcmp ogt float %64, %65
  br i1 %66, label %67, label %88

67:                                               ; preds = %63
  %68 = load float, float* %9, align 4
  %69 = load float, float* %7, align 4
  %70 = fdiv float %68, %69
  %71 = fsub float %70, 1.000000e+00
  %72 = fdiv float %71, 2.000000e+00
  %73 = fadd float %72, 5.000000e-01
  store float %73, float* %10, align 4
  %74 = load i32, i32* %5, align 4
  %75 = uitofp i32 %74 to float
  %76 = load float, float* %10, align 4
  %77 = fsub float 5.000000e-01, %76
  %78 = fmul float %75, %77
  %79 = call i64 @roundf(float %78)
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %3, align 4
  %81 = load i32, i32* %5, align 4
  %82 = uitofp i32 %81 to float
  %83 = fmul float 2.000000e+00, %82
  %84 = load float, float* %10, align 4
  %85 = fmul float %83, %84
  %86 = call i64 @roundf(float %85)
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %5, align 4
  br label %109

88:                                               ; preds = %63
  %89 = load float, float* %7, align 4
  %90 = load float, float* %9, align 4
  %91 = fdiv float %89, %90
  %92 = fsub float %91, 1.000000e+00
  %93 = fdiv float %92, 2.000000e+00
  %94 = fadd float %93, 5.000000e-01
  store float %94, float* %10, align 4
  %95 = load i32, i32* %6, align 4
  %96 = uitofp i32 %95 to float
  %97 = load float, float* %10, align 4
  %98 = fsub float 5.000000e-01, %97
  %99 = fmul float %96, %98
  %100 = call i64 @roundf(float %99)
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %6, align 4
  %103 = uitofp i32 %102 to float
  %104 = fmul float 2.000000e+00, %103
  %105 = load float, float* %10, align 4
  %106 = fmul float %104, %105
  %107 = call i64 @roundf(float %106)
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %88, %67
  br label %110

110:                                              ; preds = %109, %62
  %111 = load i32, i32* %3, align 4
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 2
  store i32 %111, i32* %114, align 8
  %115 = load i32, i32* %4, align 4
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 3
  store i32 %115, i32* %118, align 4
  %119 = load i32, i32* %5, align 4
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 8
  %123 = load i32, i32* %6, align 4
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 1
  store i32 %123, i32* %126, align 4
  br label %142

127:                                              ; preds = %50
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 2
  store i32 0, i32* %130, align 8
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 3
  store i32 0, i32* %133, align 4
  %134 = load i32, i32* %5, align 4
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 0
  store i32 %134, i32* %137, align 8
  %138 = load i32, i32* %6, align 4
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 1
  store i32 %138, i32* %141, align 4
  br label %142

142:                                              ; preds = %127, %110
  br label %143

143:                                              ; preds = %142, %32
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %145 = call i32 @wiiu_set_projection(%struct.TYPE_15__* %144)
  ret void
}

declare dso_local %struct.TYPE_16__* @config_get_ptr(...) #1

declare dso_local i32 @video_viewport_get_scaled_integer(%struct.TYPE_17__*, i32, i32, float, i64) #1

declare dso_local float @video_driver_get_aspect_ratio(...) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #2

declare dso_local i64 @roundf(float) #1

declare dso_local i32 @wiiu_set_projection(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
