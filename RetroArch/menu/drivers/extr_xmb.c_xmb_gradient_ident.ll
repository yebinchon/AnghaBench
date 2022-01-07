; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_gradient_ident.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_gradient_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@gradient_dark_purple = common dso_local global float* null, align 8
@gradient_midnight_blue = common dso_local global float* null, align 8
@gradient_golden = common dso_local global float* null, align 8
@gradient_electric_blue = common dso_local global float* null, align 8
@gradient_apple_green = common dso_local global float* null, align 8
@gradient_undersea = common dso_local global float* null, align 8
@gradient_volcanic_red = common dso_local global float* null, align 8
@gradient_dark = common dso_local global float* null, align 8
@gradient_light = common dso_local global float* null, align 8
@gradient_morning_blue = common dso_local global float* null, align 8
@gradient_sunbeam = common dso_local global float* null, align 8
@gradient_legacy_red = common dso_local global float* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (float* (%struct.TYPE_3__*)* @xmb_gradient_ident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float* @xmb_gradient_ident(%struct.TYPE_3__* %0) #0 {
  %2 = alloca float*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %41 [
    i32 137, label %7
    i32 132, label %10
    i32 135, label %13
    i32 136, label %16
    i32 139, label %19
    i32 129, label %22
    i32 128, label %25
    i32 138, label %28
    i32 133, label %31
    i32 131, label %34
    i32 130, label %37
    i32 134, label %40
  ]

7:                                                ; preds = %1
  %8 = load float*, float** @gradient_dark_purple, align 8
  %9 = getelementptr inbounds float, float* %8, i64 0
  store float* %9, float** %2, align 8
  br label %45

10:                                               ; preds = %1
  %11 = load float*, float** @gradient_midnight_blue, align 8
  %12 = getelementptr inbounds float, float* %11, i64 0
  store float* %12, float** %2, align 8
  br label %45

13:                                               ; preds = %1
  %14 = load float*, float** @gradient_golden, align 8
  %15 = getelementptr inbounds float, float* %14, i64 0
  store float* %15, float** %2, align 8
  br label %45

16:                                               ; preds = %1
  %17 = load float*, float** @gradient_electric_blue, align 8
  %18 = getelementptr inbounds float, float* %17, i64 0
  store float* %18, float** %2, align 8
  br label %45

19:                                               ; preds = %1
  %20 = load float*, float** @gradient_apple_green, align 8
  %21 = getelementptr inbounds float, float* %20, i64 0
  store float* %21, float** %2, align 8
  br label %45

22:                                               ; preds = %1
  %23 = load float*, float** @gradient_undersea, align 8
  %24 = getelementptr inbounds float, float* %23, i64 0
  store float* %24, float** %2, align 8
  br label %45

25:                                               ; preds = %1
  %26 = load float*, float** @gradient_volcanic_red, align 8
  %27 = getelementptr inbounds float, float* %26, i64 0
  store float* %27, float** %2, align 8
  br label %45

28:                                               ; preds = %1
  %29 = load float*, float** @gradient_dark, align 8
  %30 = getelementptr inbounds float, float* %29, i64 0
  store float* %30, float** %2, align 8
  br label %45

31:                                               ; preds = %1
  %32 = load float*, float** @gradient_light, align 8
  %33 = getelementptr inbounds float, float* %32, i64 0
  store float* %33, float** %2, align 8
  br label %45

34:                                               ; preds = %1
  %35 = load float*, float** @gradient_morning_blue, align 8
  %36 = getelementptr inbounds float, float* %35, i64 0
  store float* %36, float** %2, align 8
  br label %45

37:                                               ; preds = %1
  %38 = load float*, float** @gradient_sunbeam, align 8
  %39 = getelementptr inbounds float, float* %38, i64 0
  store float* %39, float** %2, align 8
  br label %45

40:                                               ; preds = %1
  br label %41

41:                                               ; preds = %1, %40
  br label %42

42:                                               ; preds = %41
  %43 = load float*, float** @gradient_legacy_red, align 8
  %44 = getelementptr inbounds float, float* %43, i64 0
  store float* %44, float** %2, align 8
  br label %45

45:                                               ; preds = %42, %37, %34, %31, %28, %25, %22, %19, %16, %13, %10, %7
  %46 = load float*, float** %2, align 8
  ret float* %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
