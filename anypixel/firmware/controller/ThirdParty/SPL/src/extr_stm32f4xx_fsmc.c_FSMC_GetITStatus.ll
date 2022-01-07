; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_fsmc.c_FSMC_GetITStatus.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_fsmc.c_FSMC_GetITStatus.c"
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
define dso_local i64 @FSMC_GetITStatus(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* @RESET, align 8
  store i64 %9, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @IS_FSMC_IT_BANK(i64 %10)
  %12 = call i32 @assert_param(i32 %11)
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @IS_FSMC_GET_IT(i64 %13)
  %15 = call i32 @assert_param(i32 %14)
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @FSMC_Bank2_NAND, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @FSMC_Bank2, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %6, align 8
  br label %36

23:                                               ; preds = %2
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @FSMC_Bank3_NAND, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @FSMC_Bank3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %6, align 8
  br label %35

31:                                               ; preds = %23
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @FSMC_Bank4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %6, align 8
  br label %35

35:                                               ; preds = %31, %27
  br label %36

36:                                               ; preds = %35, %19
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %4, align 8
  %39 = and i64 %37, %38
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %4, align 8
  %42 = ashr i64 %41, 3
  %43 = and i64 %40, %42
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @RESET, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %36
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* @RESET, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i64, i64* @SET, align 8
  store i64 %52, i64* %5, align 8
  br label %55

53:                                               ; preds = %47, %36
  %54 = load i64, i64* @RESET, align 8
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %53, %51
  %56 = load i64, i64* %5, align 8
  ret i64 %56
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_FSMC_IT_BANK(i64) #1

declare dso_local i32 @IS_FSMC_GET_IT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
