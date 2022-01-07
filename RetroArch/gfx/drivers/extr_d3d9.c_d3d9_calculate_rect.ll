; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d9.c_d3d9_calculate_rect.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d9.c_d3d9_calculate_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.video_viewport = type { i32, i32, i32, i32, i64, i64 }

@ASPECT_RATIO_CUSTOM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*, i32*, i32*, i32, i32)* @d3d9_calculate_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d3d9_calculate_rect(i8* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca %struct.video_viewport, align 8
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %21, align 4
  %23 = uitofp i32 %22 to float
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %24, align 4
  %26 = uitofp i32 %25 to float
  %27 = fdiv float %23, %26
  store float %27, float* %15, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = bitcast i8* %28 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %16, align 8
  %30 = call %struct.TYPE_11__* (...) @config_get_ptr()
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %17, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @video_driver_get_size(i32* %31, i32* %32)
  %34 = load i32*, i32** %11, align 8
  store i32 0, i32* %34, align 4
  %35 = load i32*, i32** %12, align 8
  store i32 0, i32* %35, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %72

41:                                               ; preds = %7
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %72, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %18, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %18, i32 0, i32 1
  store i32 0, i32* %46, align 4
  %47 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %18, i32 0, i32 2
  store i32 0, i32* %47, align 8
  %48 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %18, i32 0, i32 3
  store i32 0, i32* %48, align 4
  %49 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %18, i32 0, i32 5
  store i64 0, i64* %49, align 8
  %50 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %18, i32 0, i32 4
  store i64 0, i64* %50, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call float (...) @video_driver_get_aspect_ratio()
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @video_viewport_get_scaled_integer(%struct.video_viewport* %18, i32 %52, i32 %54, float %55, i64 %58)
  %60 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %18, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32*, i32** %11, align 8
  store i32 %61, i32* %62, align 4
  %63 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %18, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %12, align 8
  store i32 %64, i32* %65, align 4
  %66 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %18, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32*, i32** %9, align 8
  store i32 %67, i32* %68, align 4
  %69 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %18, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %10, align 8
  store i32 %70, i32* %71, align 4
  br label %145

72:                                               ; preds = %41, %7
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %144

77:                                               ; preds = %72
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %144, label %80

80:                                               ; preds = %77
  %81 = call float (...) @video_driver_get_aspect_ratio()
  store float %81, float* %19, align 4
  %82 = load float, float* %15, align 4
  %83 = load float, float* %19, align 4
  %84 = fsub float %82, %83
  %85 = call float @llvm.fabs.f32(float %84)
  %86 = fcmp olt float %85, 0x3F1A36E2E0000000
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %143

88:                                               ; preds = %80
  %89 = load float, float* %15, align 4
  %90 = load float, float* %19, align 4
  %91 = fcmp ogt float %89, %90
  br i1 %91, label %92, label %117

92:                                               ; preds = %88
  %93 = load float, float* %19, align 4
  %94 = load float, float* %15, align 4
  %95 = fdiv float %93, %94
  %96 = fsub float %95, 1.000000e+00
  %97 = fdiv float %96, 2.000000e+00
  %98 = fadd float %97, 5.000000e-01
  store float %98, float* %20, align 4
  %99 = load i32*, i32** %9, align 8
  %100 = load i32, i32* %99, align 4
  %101 = uitofp i32 %100 to float
  %102 = load float, float* %20, align 4
  %103 = fsub float 5.000000e-01, %102
  %104 = fmul float %101, %103
  %105 = call i64 @roundf(float %104)
  %106 = trunc i64 %105 to i32
  %107 = load i32*, i32** %11, align 8
  store i32 %106, i32* %107, align 4
  %108 = load i32*, i32** %9, align 8
  %109 = load i32, i32* %108, align 4
  %110 = uitofp i32 %109 to float
  %111 = fmul float 2.000000e+00, %110
  %112 = load float, float* %20, align 4
  %113 = fmul float %111, %112
  %114 = call i64 @roundf(float %113)
  %115 = trunc i64 %114 to i32
  %116 = load i32*, i32** %9, align 8
  store i32 %115, i32* %116, align 4
  br label %142

117:                                              ; preds = %88
  %118 = load float, float* %15, align 4
  %119 = load float, float* %19, align 4
  %120 = fdiv float %118, %119
  %121 = fsub float %120, 1.000000e+00
  %122 = fdiv float %121, 2.000000e+00
  %123 = fadd float %122, 5.000000e-01
  store float %123, float* %20, align 4
  %124 = load i32*, i32** %10, align 8
  %125 = load i32, i32* %124, align 4
  %126 = uitofp i32 %125 to float
  %127 = load float, float* %20, align 4
  %128 = fsub float 5.000000e-01, %127
  %129 = fmul float %126, %128
  %130 = call i64 @roundf(float %129)
  %131 = trunc i64 %130 to i32
  %132 = load i32*, i32** %12, align 8
  store i32 %131, i32* %132, align 4
  %133 = load i32*, i32** %10, align 8
  %134 = load i32, i32* %133, align 4
  %135 = uitofp i32 %134 to float
  %136 = fmul float 2.000000e+00, %135
  %137 = load float, float* %20, align 4
  %138 = fmul float %136, %137
  %139 = call i64 @roundf(float %138)
  %140 = trunc i64 %139 to i32
  %141 = load i32*, i32** %10, align 8
  store i32 %140, i32* %141, align 4
  br label %142

142:                                              ; preds = %117, %92
  br label %143

143:                                              ; preds = %142, %87
  br label %144

144:                                              ; preds = %143, %77, %72
  br label %145

145:                                              ; preds = %144, %44
  ret void
}

declare dso_local %struct.TYPE_11__* @config_get_ptr(...) #1

declare dso_local i32 @video_driver_get_size(i32*, i32*) #1

declare dso_local i32 @video_viewport_get_scaled_integer(%struct.video_viewport*, i32, i32, float, i64) #1

declare dso_local float @video_driver_get_aspect_ratio(...) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #2

declare dso_local i64 @roundf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
