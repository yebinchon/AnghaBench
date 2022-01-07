; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_disassembler.c_arm_loadstore_wordbyte.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_disassembler.c_arm_loadstore_wordbyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_PC = common dso_local global i64 0, align 8
@FASTTRAP_T_COMMON = common dso_local global i32 0, align 4
@FASTTRAP_T_LDR_PC_IMMED = common dso_local global i32 0, align 4
@FASTTRAP_T_INV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @arm_loadstore_wordbyte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_loadstore_wordbyte(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @BITS(i32 %6, i32 25, i32 1)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @BITS(i32 %8, i32 20, i32 1)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %30

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @ARM_RM(i32 %13)
  %15 = load i64, i64* @REG_PC, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @ARM_RD(i32 %18)
  %20 = load i64, i64* @REG_PC, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @ARM_RN(i32 %23)
  %25 = load i64, i64* @REG_PC, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @FASTTRAP_T_COMMON, align 4
  store i32 %28, i32* %2, align 4
  br label %60

29:                                               ; preds = %22, %17, %12
  br label %58

30:                                               ; preds = %1
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %45

33:                                               ; preds = %30
  %34 = load i32, i32* %3, align 4
  %35 = call i64 @ARM_RN(i32 %34)
  %36 = load i64, i64* @REG_PC, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load i32, i32* %3, align 4
  %40 = call i64 @ARM_RD(i32 %39)
  %41 = load i64, i64* @REG_PC, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @FASTTRAP_T_LDR_PC_IMMED, align 4
  store i32 %44, i32* %2, align 4
  br label %60

45:                                               ; preds = %38, %33, %30
  %46 = load i32, i32* %3, align 4
  %47 = call i64 @ARM_RD(i32 %46)
  %48 = load i64, i64* @REG_PC, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load i32, i32* %3, align 4
  %52 = call i64 @ARM_RN(i32 %51)
  %53 = load i64, i64* @REG_PC, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @FASTTRAP_T_COMMON, align 4
  store i32 %56, i32* %2, align 4
  br label %60

57:                                               ; preds = %50, %45
  br label %58

58:                                               ; preds = %57, %29
  %59 = load i32, i32* @FASTTRAP_T_INV, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %55, %43, %27
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @BITS(i32, i32, i32) #1

declare dso_local i64 @ARM_RM(i32) #1

declare dso_local i64 @ARM_RD(i32) #1

declare dso_local i64 @ARM_RN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
