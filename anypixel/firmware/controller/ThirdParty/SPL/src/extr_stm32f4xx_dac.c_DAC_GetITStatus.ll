; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_dac.c_DAC_GetITStatus.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_dac.c_DAC_GetITStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@RESET = common dso_local global i64 0, align 8
@DAC = common dso_local global %struct.TYPE_2__* null, align 8
@SET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @DAC_GetITStatus(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* @RESET, align 8
  store i64 %7, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @IS_DAC_CHANNEL(i32 %8)
  %10 = call i32 @assert_param(i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @IS_DAC_IT(i32 %11)
  %13 = call i32 @assert_param(i32 %12)
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @DAC, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %3, align 4
  %19 = shl i32 %17, %18
  %20 = and i32 %16, %19
  store i32 %20, i32* %6, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @DAC, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %3, align 4
  %26 = shl i32 %24, %25
  %27 = and i32 %23, %26
  %28 = load i64, i64* @RESET, align 8
  %29 = trunc i64 %28 to i32
  %30 = icmp ne i32 %27, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i64, i64* @SET, align 8
  store i64 %35, i64* %5, align 8
  br label %38

36:                                               ; preds = %31, %2
  %37 = load i64, i64* @RESET, align 8
  store i64 %37, i64* %5, align 8
  br label %38

38:                                               ; preds = %36, %34
  %39 = load i64, i64* %5, align 8
  ret i64 %39
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_DAC_CHANNEL(i32) #1

declare dso_local i32 @IS_DAC_IT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
