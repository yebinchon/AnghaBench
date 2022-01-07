; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_cec.c_CEC_GetFlagStatus.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_cec.c_CEC_GetFlagStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@RESET = common dso_local global i64 0, align 8
@CEC = common dso_local global %struct.TYPE_2__* null, align 8
@SET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CEC_GetFlagStatus(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @RESET, align 8
  store i64 %4, i64* %3, align 8
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @IS_CEC_GET_FLAG(i32 %5)
  %7 = call i32 @assert_param(i32 %6)
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CEC, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %2, align 4
  %12 = and i32 %10, %11
  %13 = load i64, i64* @RESET, align 8
  %14 = trunc i64 %13 to i32
  %15 = icmp ne i32 %12, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i64, i64* @SET, align 8
  store i64 %17, i64* %3, align 8
  br label %20

18:                                               ; preds = %1
  %19 = load i64, i64* @RESET, align 8
  store i64 %19, i64* %3, align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = load i64, i64* %3, align 8
  ret i64 %21
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_CEC_GET_FLAG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
