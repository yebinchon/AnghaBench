; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light.c_SunToPlane.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light.c_SunToPlane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@numSkyBrushes = common dso_local global i32 0, align 4
@sunDirection = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SunToPlane(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* @numSkyBrushes, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  br label %31

14:                                               ; preds = %4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @sunDirection, align 4
  %17 = call float @DotProduct(i32 %15, i32 %16)
  store float %17, float* %9, align 4
  %18 = load float, float* %9, align 4
  %19 = fcmp ole float %18, 0.000000e+00
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %31

21:                                               ; preds = %14
  %22 = load i32, i32* %5, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @SunToPoint(i32 %22, i32* %23, i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = load float, float* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @VectorMA(i32 %26, float %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %21, %20, %13
  ret void
}

declare dso_local float @DotProduct(i32, i32) #1

declare dso_local i32 @SunToPoint(i32, i32*, i32) #1

declare dso_local i32 @VectorMA(i32, float, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
