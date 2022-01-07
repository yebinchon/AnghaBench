; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm64/extr_disassembler.c_arm_extra_loadstore.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm64/extr_disassembler.c_arm_extra_loadstore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_PC = common dso_local global i64 0, align 8
@FASTTRAP_T_COMMON = common dso_local global i32 0, align 4
@FASTTRAP_T_INV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @arm_extra_loadstore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_extra_loadstore(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @BITS(i32 %5, i32 20, i32 31)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @ARM_RM(i32 %11)
  %13 = load i64, i64* @REG_PC, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %10
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @ARM_RD(i32 %16)
  %18 = load i64, i64* @REG_PC, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @ARM_RN(i32 %21)
  %23 = load i64, i64* @REG_PC, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @FASTTRAP_T_COMMON, align 4
  store i32 %26, i32* %2, align 4
  br label %43

27:                                               ; preds = %20, %15, %10
  br label %41

28:                                               ; preds = %1
  %29 = load i32, i32* %3, align 4
  %30 = call i64 @ARM_RD(i32 %29)
  %31 = load i64, i64* @REG_PC, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load i32, i32* %3, align 4
  %35 = call i64 @ARM_RN(i32 %34)
  %36 = load i64, i64* @REG_PC, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @FASTTRAP_T_COMMON, align 4
  store i32 %39, i32* %2, align 4
  br label %43

40:                                               ; preds = %33, %28
  br label %41

41:                                               ; preds = %40, %27
  %42 = load i32, i32* @FASTTRAP_T_INV, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %38, %25
  %44 = load i32, i32* %2, align 4
  ret i32 %44
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
