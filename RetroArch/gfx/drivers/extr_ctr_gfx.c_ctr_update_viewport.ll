; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_ctr_gfx.c_ctr_update_viewport.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_ctr_gfx.c_ctr_update_viewport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_16__, i64 }
%struct.TYPE_16__ = type { float, float, i32, i32, float, float }
%struct.TYPE_14__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32, float, float }

@ASPECT_RATIO_CUSTOM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_13__*)* @ctr_update_viewport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctr_update_viewport(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load float, float* %16, align 8
  store float %17, float* %9, align 4
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 1
  %21 = load float, float* %20, align 4
  store float %21, float* %10, align 4
  %22 = call float (...) @video_driver_get_aspect_ratio()
  store float %22, float* %11, align 4
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, 1
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load float, float* %11, align 4
  %30 = fpext float %29 to double
  %31 = fdiv double 1.000000e+00, %30
  %32 = fptrunc double %31 to float
  store float %32, float* %11, align 4
  br label %33

33:                                               ; preds = %28, %3
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %33
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load float, float* %44, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 1
  %49 = load float, float* %48, align 4
  %50 = load float, float* %11, align 4
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @video_viewport_get_scaled_integer(%struct.TYPE_16__* %41, float %45, float %49, float %50, i64 %53)
  br label %154

55:                                               ; preds = %33
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %138

60:                                               ; preds = %55
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load float, float* %63, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  %68 = load float, float* %67, align 4
  %69 = fdiv float %64, %68
  store float %69, float* %13, align 4
  %70 = load float, float* %13, align 4
  %71 = load float, float* %11, align 4
  %72 = fsub float %70, %71
  %73 = call float @llvm.fabs.f32(float %72)
  %74 = fcmp olt float %73, 0x3F1A36E2E0000000
  br i1 %74, label %75, label %76

75:                                               ; preds = %60
  br label %121

76:                                               ; preds = %60
  %77 = load float, float* %13, align 4
  %78 = load float, float* %11, align 4
  %79 = fcmp ogt float %77, %78
  br i1 %79, label %80, label %100

80:                                               ; preds = %76
  %81 = load float, float* %11, align 4
  %82 = load float, float* %13, align 4
  %83 = fdiv float %81, %82
  %84 = fsub float %83, 1.000000e+00
  %85 = fdiv float %84, 2.000000e+00
  %86 = fadd float %85, 5.000000e-01
  store float %86, float* %12, align 4
  %87 = load float, float* %9, align 4
  %88 = load float, float* %12, align 4
  %89 = fsub float 5.000000e-01, %88
  %90 = fmul float %87, %89
  %91 = call i64 @roundf(float %90)
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %7, align 4
  %93 = load float, float* %9, align 4
  %94 = fmul float 2.000000e+00, %93
  %95 = load float, float* %12, align 4
  %96 = fmul float %94, %95
  %97 = call i64 @roundf(float %96)
  %98 = trunc i64 %97 to i32
  %99 = uitofp i32 %98 to float
  store float %99, float* %9, align 4
  br label %120

100:                                              ; preds = %76
  %101 = load float, float* %13, align 4
  %102 = load float, float* %11, align 4
  %103 = fdiv float %101, %102
  %104 = fsub float %103, 1.000000e+00
  %105 = fdiv float %104, 2.000000e+00
  %106 = fadd float %105, 5.000000e-01
  store float %106, float* %12, align 4
  %107 = load float, float* %10, align 4
  %108 = load float, float* %12, align 4
  %109 = fsub float 5.000000e-01, %108
  %110 = fmul float %107, %109
  %111 = call i64 @roundf(float %110)
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %8, align 4
  %113 = load float, float* %10, align 4
  %114 = fmul float 2.000000e+00, %113
  %115 = load float, float* %12, align 4
  %116 = fmul float %114, %115
  %117 = call i64 @roundf(float %116)
  %118 = trunc i64 %117 to i32
  %119 = uitofp i32 %118 to float
  store float %119, float* %10, align 4
  br label %120

120:                                              ; preds = %100, %80
  br label %121

121:                                              ; preds = %120, %75
  %122 = load i32, i32* %7, align 4
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 2
  store i32 %122, i32* %125, align 8
  %126 = load i32, i32* %8, align 4
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 3
  store i32 %126, i32* %129, align 4
  %130 = load float, float* %9, align 4
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 4
  store float %130, float* %133, align 8
  %134 = load float, float* %10, align 4
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 5
  store float %134, float* %137, align 4
  br label %153

138:                                              ; preds = %55
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 3
  store i32 0, i32* %141, align 4
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 2
  store i32 0, i32* %144, align 8
  %145 = load float, float* %9, align 4
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 4
  store float %145, float* %148, align 8
  %149 = load float, float* %10, align 4
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 5
  store float %149, float* %152, align 4
  br label %153

153:                                              ; preds = %138, %121
  br label %154

154:                                              ; preds = %153, %39
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %156 = call i32 @ctr_set_screen_coords(%struct.TYPE_15__* %155)
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 1
  store i32 0, i32* %158, align 4
  ret void
}

declare dso_local float @video_driver_get_aspect_ratio(...) #1

declare dso_local i32 @video_viewport_get_scaled_integer(%struct.TYPE_16__*, float, float, float, i64) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #2

declare dso_local i64 @roundf(float) #1

declare dso_local i32 @ctr_set_screen_coords(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
