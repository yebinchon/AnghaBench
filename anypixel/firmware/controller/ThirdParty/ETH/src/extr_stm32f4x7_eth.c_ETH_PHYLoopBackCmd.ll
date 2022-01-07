; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/ETH/src/extr_stm32f4x7_eth.c_ETH_PHYLoopBackCmd.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/ETH/src/extr_stm32f4x7_eth.c_ETH_PHYLoopBackCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PHY_BCR = common dso_local global i32 0, align 4
@DISABLE = common dso_local global i64 0, align 8
@PHY_Loopback = common dso_local global i64 0, align 8
@RESET = common dso_local global i64 0, align 8
@ETH_SUCCESS = common dso_local global i64 0, align 8
@ETH_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ETH_PHYLoopBackCmd(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @IS_ETH_PHY_ADDRESS(i64 %7)
  %9 = call i32 @assert_param(i32 %8)
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @IS_FUNCTIONAL_STATE(i64 %10)
  %12 = call i32 @assert_param(i32 %11)
  %13 = load i64, i64* %4, align 8
  %14 = load i32, i32* @PHY_BCR, align 4
  %15 = call i64 @ETH_ReadPHYRegister(i64 %13, i32 %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @DISABLE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i64, i64* @PHY_Loopback, align 8
  %21 = load i64, i64* %6, align 8
  %22 = or i64 %21, %20
  store i64 %22, i64* %6, align 8
  br label %28

23:                                               ; preds = %2
  %24 = load i64, i64* @PHY_Loopback, align 8
  %25 = xor i64 %24, -1
  %26 = load i64, i64* %6, align 8
  %27 = and i64 %26, %25
  store i64 %27, i64* %6, align 8
  br label %28

28:                                               ; preds = %23, %19
  %29 = load i64, i64* %4, align 8
  %30 = load i32, i32* @PHY_BCR, align 4
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @ETH_WritePHYRegister(i64 %29, i32 %30, i64 %31)
  %33 = load i64, i64* @RESET, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i64, i64* @ETH_SUCCESS, align 8
  store i64 %36, i64* %3, align 8
  br label %39

37:                                               ; preds = %28
  %38 = load i64, i64* @ETH_ERROR, align 8
  store i64 %38, i64* %3, align 8
  br label %39

39:                                               ; preds = %37, %35
  %40 = load i64, i64* %3, align 8
  ret i64 %40
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_ETH_PHY_ADDRESS(i64) #1

declare dso_local i32 @IS_FUNCTIONAL_STATE(i64) #1

declare dso_local i64 @ETH_ReadPHYRegister(i64, i32) #1

declare dso_local i64 @ETH_WritePHYRegister(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
