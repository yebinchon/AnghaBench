; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_fsmc.c_FSMC_ClearITPendingBit.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_fsmc.c_FSMC_ClearITPendingBit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@FSMC_Bank2_NAND = common dso_local global i64 0, align 8
@FSMC_Bank2 = common dso_local global %struct.TYPE_6__* null, align 8
@FSMC_Bank3_NAND = common dso_local global i64 0, align 8
@FSMC_Bank3 = common dso_local global %struct.TYPE_5__* null, align 8
@FSMC_Bank4 = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FSMC_ClearITPendingBit(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i32 @IS_FSMC_IT_BANK(i64 %5)
  %7 = call i32 @assert_param(i32 %6)
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @IS_FSMC_IT(i64 %8)
  %10 = call i32 @assert_param(i32 %9)
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @FSMC_Bank2_NAND, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8
  %16 = ashr i64 %15, 3
  %17 = xor i64 %16, -1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @FSMC_Bank2, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = and i64 %20, %17
  store i64 %21, i64* %19, align 8
  br label %43

22:                                               ; preds = %2
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @FSMC_Bank3_NAND, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load i64, i64* %4, align 8
  %28 = ashr i64 %27, 3
  %29 = xor i64 %28, -1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @FSMC_Bank3, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = and i64 %32, %29
  store i64 %33, i64* %31, align 8
  br label %42

34:                                               ; preds = %22
  %35 = load i64, i64* %4, align 8
  %36 = ashr i64 %35, 3
  %37 = xor i64 %36, -1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @FSMC_Bank4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = and i64 %40, %37
  store i64 %41, i64* %39, align 8
  br label %42

42:                                               ; preds = %34, %26
  br label %43

43:                                               ; preds = %42, %14
  ret void
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_FSMC_IT_BANK(i64) #1

declare dso_local i32 @IS_FSMC_IT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
