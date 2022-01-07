; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_vquality_default.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_vquality_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"VideoEncoder\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @ghb_vquality_default(%struct.TYPE_3__* %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ghb_settings_video_encoder_codec(i32 %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %18 [
    i32 128, label %15
    i32 131, label %15
    i32 130, label %15
    i32 129, label %15
    i32 132, label %15
    i32 133, label %15
    i32 134, label %16
    i32 136, label %17
    i32 135, label %17
  ]

15:                                               ; preds = %1, %1, %1, %1, %1, %1
  store float 2.000000e+01, float* %2, align 4
  br label %36

16:                                               ; preds = %1
  store float 4.500000e+01, float* %2, align 4
  br label %36

17:                                               ; preds = %1, %1
  store float 3.000000e+00, float* %2, align 4
  br label %36

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @hb_video_quality_get_limits(i32 %19, float* %6, float* %7, float* %8, i32* %9)
  %21 = load float, float* %7, align 4
  %22 = load float, float* %6, align 4
  %23 = fsub float %21, %22
  %24 = fpext float %23 to double
  %25 = fmul double %24, 0x3FE6666666666666
  %26 = fptrunc double %25 to float
  store float %26, float* %4, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %18
  %30 = load float, float* %7, align 4
  %31 = load float, float* %4, align 4
  %32 = fsub float %30, %31
  store float %32, float* %4, align 4
  br label %33

33:                                               ; preds = %29, %18
  br label %34

34:                                               ; preds = %33
  %35 = load float, float* %4, align 4
  store float %35, float* %2, align 4
  br label %36

36:                                               ; preds = %34, %17, %16, %15
  %37 = load float, float* %2, align 4
  ret float %37
}

declare dso_local i32 @ghb_settings_video_encoder_codec(i32, i8*) #1

declare dso_local i32 @hb_video_quality_get_limits(i32, float*, float*, float*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
