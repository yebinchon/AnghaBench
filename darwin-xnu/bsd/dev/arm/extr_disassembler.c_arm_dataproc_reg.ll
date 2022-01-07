; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_disassembler.c_arm_dataproc_reg.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_disassembler.c_arm_dataproc_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_PC = common dso_local global i64 0, align 8
@FASTTRAP_T_COMMON = common dso_local global i32 0, align 4
@FASTTRAP_T_INV = common dso_local global i32 0, align 4
@FASTTRAP_T_MOV_PC_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @arm_dataproc_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_dataproc_reg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @BITS(i32 %7, i32 20, i32 31)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @BITS(i32 %9, i32 7, i32 31)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @BITS(i32 %11, i32 5, i32 3)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 17
  br i1 %14, label %24, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 19
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 21
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 23
  br i1 %23, label %24, label %38

24:                                               ; preds = %21, %18, %15, %1
  %25 = load i32, i32* %3, align 4
  %26 = call i64 @ARM_RN(i32 %25)
  %27 = load i64, i64* @REG_PC, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load i32, i32* %3, align 4
  %31 = call i64 @ARM_RM(i32 %30)
  %32 = load i64, i64* @REG_PC, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @FASTTRAP_T_COMMON, align 4
  store i32 %35, i32* %2, align 4
  br label %73

36:                                               ; preds = %29, %24
  %37 = load i32, i32* @FASTTRAP_T_INV, align 4
  store i32 %37, i32* %2, align 4
  br label %73

38:                                               ; preds = %21
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 26
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i32, i32* %3, align 4
  %49 = call i64 @ARM_RD(i32 %48)
  %50 = load i64, i64* @REG_PC, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @FASTTRAP_T_MOV_PC_REG, align 4
  store i32 %53, i32* %2, align 4
  br label %73

54:                                               ; preds = %47, %44, %41, %38
  %55 = load i32, i32* %3, align 4
  %56 = call i64 @ARM_RN(i32 %55)
  %57 = load i64, i64* @REG_PC, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %54
  %60 = load i32, i32* %3, align 4
  %61 = call i64 @ARM_RD(i32 %60)
  %62 = load i64, i64* @REG_PC, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load i32, i32* %3, align 4
  %66 = call i64 @ARM_RM(i32 %65)
  %67 = load i64, i64* @REG_PC, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* @FASTTRAP_T_COMMON, align 4
  store i32 %70, i32* %2, align 4
  br label %73

71:                                               ; preds = %64, %59, %54
  %72 = load i32, i32* @FASTTRAP_T_INV, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %71, %69, %52, %36, %34
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @BITS(i32, i32, i32) #1

declare dso_local i64 @ARM_RN(i32) #1

declare dso_local i64 @ARM_RM(i32) #1

declare dso_local i64 @ARM_RD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
