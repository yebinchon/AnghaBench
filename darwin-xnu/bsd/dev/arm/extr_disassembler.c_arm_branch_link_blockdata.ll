; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_disassembler.c_arm_branch_link_blockdata.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_disassembler.c_arm_branch_link_blockdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FASTTRAP_T_B_COND = common dso_local global i32 0, align 4
@FASTTRAP_T_INV = common dso_local global i32 0, align 4
@REG_SP = common dso_local global i64 0, align 8
@FASTTRAP_T_LDM_PC = common dso_local global i32 0, align 4
@FASTTRAP_T_STM_LR = common dso_local global i32 0, align 4
@REG_PC = common dso_local global i64 0, align 8
@FASTTRAP_T_COMMON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @arm_branch_link_blockdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_branch_link_blockdata(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @BITS(i32 %9, i32 25, i32 1)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @BITS(i32 %11, i32 24, i32 1)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @BITS(i32 %13, i32 20, i32 31)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @BITS(i32 %15, i32 15, i32 1)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @BITS(i32 %17, i32 14, i32 1)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @FASTTRAP_T_B_COND, align 4
  store i32 %25, i32* %2, align 4
  br label %67

26:                                               ; preds = %21
  %27 = load i32, i32* @FASTTRAP_T_INV, align 4
  store i32 %27, i32* %2, align 4
  br label %67

28:                                               ; preds = %1
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 11
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = call i64 @ARM_RN(i32 %32)
  %34 = load i64, i64* @REG_SP, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* @FASTTRAP_T_LDM_PC, align 4
  store i32 %40, i32* %2, align 4
  br label %67

41:                                               ; preds = %36, %31, %28
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 18
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load i32, i32* %3, align 4
  %46 = call i64 @ARM_RN(i32 %45)
  %47 = load i64, i64* @REG_SP, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* @FASTTRAP_T_STM_LR, align 4
  store i32 %53, i32* %2, align 4
  br label %67

54:                                               ; preds = %49, %44, %41
  %55 = load i32, i32* %3, align 4
  %56 = call i64 @ARM_RN(i32 %55)
  %57 = load i64, i64* @REG_PC, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* @FASTTRAP_T_COMMON, align 4
  store i32 %63, i32* %2, align 4
  br label %67

64:                                               ; preds = %59, %54
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* @FASTTRAP_T_INV, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %62, %52, %39, %26, %24
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @BITS(i32, i32, i32) #1

declare dso_local i64 @ARM_RN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
