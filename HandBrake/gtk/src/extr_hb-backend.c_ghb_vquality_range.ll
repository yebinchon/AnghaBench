; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_vquality_range.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_vquality_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"VideoEncoder\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"VideoQualityGranularity\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ghb_vquality_range(%struct.TYPE_3__* %0, float* %1, float* %2, float* %3, float* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store float* %1, float** %9, align 8
  store float* %2, float** %10, align 8
  store float* %3, float** %11, align 8
  store float* %4, float** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ghb_settings_video_encoder_codec(i32 %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %16, align 4
  %21 = load float*, float** %12, align 8
  store float 1.000000e+01, float* %21, align 4
  %22 = load i32*, i32** %13, align 8
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* %16, align 4
  %24 = load float*, float** %9, align 8
  %25 = load float*, float** %10, align 8
  %26 = load i32*, i32** %14, align 8
  %27 = call i32 @hb_video_quality_get_limits(i32 %23, float* %24, float* %25, float* %15, i32* %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call float @ghb_settings_combo_double(i32 %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %32 = load float*, float** %11, align 8
  store float %31, float* %32, align 4
  %33 = load float*, float** %11, align 8
  %34 = load float, float* %33, align 4
  %35 = load float, float* %15, align 4
  %36 = fcmp olt float %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %7
  %38 = load float, float* %15, align 4
  %39 = load float*, float** %11, align 8
  store float %38, float* %39, align 4
  br label %40

40:                                               ; preds = %37, %7
  %41 = load float*, float** %11, align 8
  %42 = load float, float* %41, align 4
  %43 = fmul float %42, 1.000000e+02
  %44 = fptosi float %43 to i32
  %45 = srem i32 %44, 10
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32*, i32** %13, align 8
  store i32 2, i32* %48, align 4
  br label %59

49:                                               ; preds = %40
  %50 = load float*, float** %11, align 8
  %51 = load float, float* %50, align 4
  %52 = fmul float %51, 1.000000e+01
  %53 = fptosi float %52 to i32
  %54 = srem i32 %53, 10
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32*, i32** %13, align 8
  store i32 1, i32* %57, align 4
  br label %58

58:                                               ; preds = %56, %49
  br label %59

59:                                               ; preds = %58, %47
  ret void
}

declare dso_local i32 @ghb_settings_video_encoder_codec(i32, i8*) #1

declare dso_local i32 @hb_video_quality_get_limits(i32, float*, float*, float*, i32*) #1

declare dso_local float @ghb_settings_combo_double(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
