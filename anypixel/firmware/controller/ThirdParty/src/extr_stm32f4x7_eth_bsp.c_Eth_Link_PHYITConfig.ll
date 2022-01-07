; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/src/extr_stm32f4x7_eth_bsp.c_Eth_Link_PHYITConfig.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/src/extr_stm32f4x7_eth_bsp.c_Eth_Link_PHYITConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PHY_MICR = common dso_local global i32 0, align 4
@PHY_MICR_INT_EN = common dso_local global i32 0, align 4
@PHY_MICR_INT_OE = common dso_local global i32 0, align 4
@ETH_ERROR = common dso_local global i32 0, align 4
@PHY_MISR = common dso_local global i32 0, align 4
@PHY_MISR_LINK_INT_EN = common dso_local global i64 0, align 8
@ETH_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Eth_Link_PHYITConfig(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @PHY_MICR, align 4
  %7 = call i32 @ETH_ReadPHYRegister(i32 %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @PHY_MICR_INT_EN, align 4
  %9 = load i32, i32* @PHY_MICR_INT_OE, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* %4, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @PHY_MICR, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @ETH_WritePHYRegister(i32 %13, i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ETH_ERROR, align 4
  store i32 %19, i32* %2, align 4
  br label %37

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @PHY_MISR, align 4
  %23 = call i32 @ETH_ReadPHYRegister(i32 %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i64, i64* @PHY_MISR_LINK_INT_EN, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @PHY_MISR, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @ETH_WritePHYRegister(i32 %28, i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %20
  %34 = load i32, i32* @ETH_ERROR, align 4
  store i32 %34, i32* %2, align 4
  br label %37

35:                                               ; preds = %20
  %36 = load i32, i32* @ETH_SUCCESS, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %35, %33, %18
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @ETH_ReadPHYRegister(i32, i32) #1

declare dso_local i32 @ETH_WritePHYRegister(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
