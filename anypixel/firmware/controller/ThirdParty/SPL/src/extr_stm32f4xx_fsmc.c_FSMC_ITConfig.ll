; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_fsmc.c_FSMC_ITConfig.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_fsmc.c_FSMC_ITConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@DISABLE = common dso_local global i64 0, align 8
@FSMC_Bank2_NAND = common dso_local global i64 0, align 8
@FSMC_Bank2 = common dso_local global %struct.TYPE_6__* null, align 8
@FSMC_Bank3_NAND = common dso_local global i64 0, align 8
@FSMC_Bank3 = common dso_local global %struct.TYPE_5__* null, align 8
@FSMC_Bank4 = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FSMC_ITConfig(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @IS_FSMC_IT_BANK(i64 %7)
  %9 = call i32 @assert_param(i32 %8)
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @IS_FSMC_IT(i64 %10)
  %12 = call i32 @assert_param(i32 %11)
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @IS_FUNCTIONAL_STATE(i64 %13)
  %15 = call i32 @assert_param(i32 %14)
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @DISABLE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %47

19:                                               ; preds = %3
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @FSMC_Bank2_NAND, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @FSMC_Bank2, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = or i64 %27, %24
  store i64 %28, i64* %26, align 8
  br label %46

29:                                               ; preds = %19
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @FSMC_Bank3_NAND, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** @FSMC_Bank3, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = or i64 %37, %34
  store i64 %38, i64* %36, align 8
  br label %45

39:                                               ; preds = %29
  %40 = load i64, i64* %5, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @FSMC_Bank4, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = or i64 %43, %40
  store i64 %44, i64* %42, align 8
  br label %45

45:                                               ; preds = %39, %33
  br label %46

46:                                               ; preds = %45, %23
  br label %78

47:                                               ; preds = %3
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* @FSMC_Bank2_NAND, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load i64, i64* %5, align 8
  %53 = xor i64 %52, -1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @FSMC_Bank2, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = and i64 %56, %53
  store i64 %57, i64* %55, align 8
  br label %77

58:                                               ; preds = %47
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* @FSMC_Bank3_NAND, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load i64, i64* %5, align 8
  %64 = xor i64 %63, -1
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** @FSMC_Bank3, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = and i64 %67, %64
  store i64 %68, i64* %66, align 8
  br label %76

69:                                               ; preds = %58
  %70 = load i64, i64* %5, align 8
  %71 = xor i64 %70, -1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** @FSMC_Bank4, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = and i64 %74, %71
  store i64 %75, i64* %73, align 8
  br label %76

76:                                               ; preds = %69, %62
  br label %77

77:                                               ; preds = %76, %51
  br label %78

78:                                               ; preds = %77, %46
  ret void
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_FSMC_IT_BANK(i64) #1

declare dso_local i32 @IS_FSMC_IT(i64) #1

declare dso_local i32 @IS_FUNCTIONAL_STATE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
