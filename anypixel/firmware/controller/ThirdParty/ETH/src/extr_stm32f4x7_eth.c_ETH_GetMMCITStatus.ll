; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/ETH/src/extr_stm32f4x7_eth.c_ETH_GetMMCITStatus.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/ETH/src/extr_stm32f4x7_eth.c_ETH_GetMMCITStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@RESET = common dso_local global i64 0, align 8
@ETH = common dso_local global %struct.TYPE_2__* null, align 8
@SET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ETH_GetMMCITStatus(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @RESET, align 8
  store i64 %4, i64* %3, align 8
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @IS_ETH_MMC_GET_IT(i32 %5)
  %7 = call i32 @assert_param(i32 %6)
  %8 = load i32, i32* %2, align 4
  %9 = and i32 %8, 268435456
  %10 = load i64, i64* @RESET, align 8
  %11 = trunc i64 %10 to i32
  %12 = icmp ne i32 %9, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ETH, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %2, align 4
  %18 = and i32 %16, %17
  %19 = load i64, i64* @RESET, align 8
  %20 = trunc i64 %19 to i32
  %21 = icmp ne i32 %18, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %13
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ETH, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %2, align 4
  %27 = and i32 %25, %26
  %28 = load i64, i64* @RESET, align 8
  %29 = trunc i64 %28 to i32
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i64, i64* @SET, align 8
  store i64 %32, i64* %3, align 8
  br label %35

33:                                               ; preds = %22, %13
  %34 = load i64, i64* @RESET, align 8
  store i64 %34, i64* %3, align 8
  br label %35

35:                                               ; preds = %33, %31
  br label %59

36:                                               ; preds = %1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ETH, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %2, align 4
  %41 = and i32 %39, %40
  %42 = load i64, i64* @RESET, align 8
  %43 = trunc i64 %42 to i32
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %36
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ETH, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %2, align 4
  %50 = and i32 %48, %49
  %51 = load i64, i64* @RESET, align 8
  %52 = trunc i64 %51 to i32
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i64, i64* @SET, align 8
  store i64 %55, i64* %3, align 8
  br label %58

56:                                               ; preds = %45, %36
  %57 = load i64, i64* @RESET, align 8
  store i64 %57, i64* %3, align 8
  br label %58

58:                                               ; preds = %56, %54
  br label %59

59:                                               ; preds = %58, %35
  %60 = load i64, i64* %3, align 8
  ret i64 %60
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_ETH_MMC_GET_IT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
