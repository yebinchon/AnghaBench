; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_colorspace.c_ff_get_luma_coefficients.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_colorspace.c_ff_get_luma_coefficients.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LumaCoefficients = type { i32 }

@AVCOL_SPC_NB = common dso_local global i32 0, align 4
@luma_coefficients = common dso_local global %struct.LumaCoefficients* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.LumaCoefficients* @ff_get_luma_coefficients(i32 %0) #0 {
  %2 = alloca %struct.LumaCoefficients*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.LumaCoefficients*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @AVCOL_SPC_NB, align 4
  %7 = icmp uge i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.LumaCoefficients* null, %struct.LumaCoefficients** %2, align 8
  br label %21

9:                                                ; preds = %1
  %10 = load %struct.LumaCoefficients*, %struct.LumaCoefficients** @luma_coefficients, align 8
  %11 = load i32, i32* %3, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.LumaCoefficients, %struct.LumaCoefficients* %10, i64 %12
  store %struct.LumaCoefficients* %13, %struct.LumaCoefficients** %4, align 8
  %14 = load %struct.LumaCoefficients*, %struct.LumaCoefficients** %4, align 8
  %15 = getelementptr inbounds %struct.LumaCoefficients, %struct.LumaCoefficients* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %9
  store %struct.LumaCoefficients* null, %struct.LumaCoefficients** %2, align 8
  br label %21

19:                                               ; preds = %9
  %20 = load %struct.LumaCoefficients*, %struct.LumaCoefficients** %4, align 8
  store %struct.LumaCoefficients* %20, %struct.LumaCoefficients** %2, align 8
  br label %21

21:                                               ; preds = %19, %18, %8
  %22 = load %struct.LumaCoefficients*, %struct.LumaCoefficients** %2, align 8
  ret %struct.LumaCoefficients* %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
