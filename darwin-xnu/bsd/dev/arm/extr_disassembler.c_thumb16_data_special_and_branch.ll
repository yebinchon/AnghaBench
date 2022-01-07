; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_disassembler.c_thumb16_data_special_and_branch.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_disassembler.c_thumb16_data_special_and_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FASTTRAP_T_INV = common dso_local global i32 0, align 4
@FASTTRAP_T_BX_REG = common dso_local global i32 0, align 4
@REG_PC = common dso_local global i64 0, align 8
@FASTTRAP_T_CPY_PC = common dso_local global i32 0, align 4
@FASTTRAP_T_COMMON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @thumb16_data_special_and_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thumb16_data_special_and_branch(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @BITS(i32 %5, i32 6, i32 15)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @FASTTRAP_T_INV, align 4
  store i32 %10, i32* %2, align 4
  br label %50

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 12
  %14 = icmp eq i32 %13, 12
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @FASTTRAP_T_BX_REG, align 4
  store i32 %20, i32* %2, align 4
  br label %50

21:                                               ; preds = %15
  %22 = load i32, i32* @FASTTRAP_T_INV, align 4
  store i32 %22, i32* %2, align 4
  br label %50

23:                                               ; preds = %11
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, 12
  %26 = icmp eq i32 %25, 8
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @THUMB16_HRD(i32 %28)
  %30 = load i64, i64* @REG_PC, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @FASTTRAP_T_CPY_PC, align 4
  store i32 %33, i32* %2, align 4
  br label %50

34:                                               ; preds = %27, %23
  %35 = load i32, i32* %3, align 4
  %36 = call i64 @THUMB16_HRM(i32 %35)
  %37 = load i64, i64* @REG_PC, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load i32, i32* %3, align 4
  %41 = call i64 @THUMB16_HRD(i32 %40)
  %42 = load i64, i64* @REG_PC, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @FASTTRAP_T_COMMON, align 4
  store i32 %45, i32* %2, align 4
  br label %50

46:                                               ; preds = %39, %34
  br label %47

47:                                               ; preds = %46
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* @FASTTRAP_T_INV, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %44, %32, %21, %19, %9
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @BITS(i32, i32, i32) #1

declare dso_local i64 @THUMB16_HRD(i32) #1

declare dso_local i64 @THUMB16_HRM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
