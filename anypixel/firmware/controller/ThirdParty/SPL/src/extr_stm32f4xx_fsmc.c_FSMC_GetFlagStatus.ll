; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_fsmc.c_FSMC_GetFlagStatus.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_fsmc.c_FSMC_GetFlagStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@RESET = common dso_local global i64 0, align 8
@FSMC_Bank2_NAND = common dso_local global i64 0, align 8
@FSMC_Bank2 = common dso_local global %struct.TYPE_6__* null, align 8
@FSMC_Bank3_NAND = common dso_local global i64 0, align 8
@FSMC_Bank3 = common dso_local global %struct.TYPE_5__* null, align 8
@FSMC_Bank4 = common dso_local global %struct.TYPE_4__* null, align 8
@SET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FSMC_GetFlagStatus(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* @RESET, align 8
  store i64 %7, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @IS_FSMC_GETFLAG_BANK(i64 %8)
  %10 = call i32 @assert_param(i32 %9)
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @IS_FSMC_GET_FLAG(i64 %11)
  %13 = call i32 @assert_param(i32 %12)
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @FSMC_Bank2_NAND, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @FSMC_Bank2, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %6, align 8
  br label %34

21:                                               ; preds = %2
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @FSMC_Bank3_NAND, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @FSMC_Bank3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %6, align 8
  br label %33

29:                                               ; preds = %21
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @FSMC_Bank4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %6, align 8
  br label %33

33:                                               ; preds = %29, %25
  br label %34

34:                                               ; preds = %33, %17
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %4, align 8
  %37 = and i64 %35, %36
  %38 = load i64, i64* @RESET, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i64, i64* @SET, align 8
  store i64 %41, i64* %5, align 8
  br label %44

42:                                               ; preds = %34
  %43 = load i64, i64* @RESET, align 8
  store i64 %43, i64* %5, align 8
  br label %44

44:                                               ; preds = %42, %40
  %45 = load i64, i64* %5, align 8
  ret i64 %45
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_FSMC_GETFLAG_BANK(i64) #1

declare dso_local i32 @IS_FSMC_GET_FLAG(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
