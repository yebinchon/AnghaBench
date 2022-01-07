; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm64/extr_disassembler.c_thumb32_loadstore_multiple.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm64/extr_disassembler.c_thumb32_loadstore_multiple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FASTTRAP_T_INV = common dso_local global i32 0, align 4
@REG_SP = common dso_local global i64 0, align 8
@FASTTRAP_T_LDM_PC = common dso_local global i32 0, align 4
@FASTTRAP_T_STM_LR = common dso_local global i32 0, align 4
@REG_PC = common dso_local global i64 0, align 8
@FASTTRAP_T_COMMON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @thumb32_loadstore_multiple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thumb32_loadstore_multiple(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @BITS(i32 %10, i32 7, i32 3)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @BITS(i32 %12, i32 4, i32 1)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @BITS(i32 %14, i32 15, i32 1)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @BITS(i32 %16, i32 14, i32 1)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %2
  %24 = load i32, i32* @FASTTRAP_T_INV, align 4
  store i32 %24, i32* %3, align 4
  br label %72

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %42

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @THUMB32_RN(i32 %32, i32 %33)
  %35 = load i64, i64* @REG_SP, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @FASTTRAP_T_LDM_PC, align 4
  store i32 %41, i32* %3, align 4
  br label %72

42:                                               ; preds = %37, %31, %28, %25
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %59

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i64 @THUMB32_RN(i32 %49, i32 %50)
  %52 = load i64, i64* @REG_SP, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* @FASTTRAP_T_STM_LR, align 4
  store i32 %58, i32* %3, align 4
  br label %72

59:                                               ; preds = %54, %48, %45, %42
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i64 @THUMB32_RN(i32 %60, i32 %61)
  %63 = load i64, i64* @REG_PC, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load i32, i32* %8, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i32, i32* @FASTTRAP_T_COMMON, align 4
  store i32 %69, i32* %3, align 4
  br label %72

70:                                               ; preds = %65, %59
  %71 = load i32, i32* @FASTTRAP_T_INV, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %68, %57, %40, %23
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @BITS(i32, i32, i32) #1

declare dso_local i64 @THUMB32_RN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
