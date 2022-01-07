; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm64/extr_disassembler.c_thumb32_dataproc_regshift.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm64/extr_disassembler.c_thumb32_dataproc_regshift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_PC = common dso_local global i64 0, align 8
@FASTTRAP_T_COMMON = common dso_local global i32 0, align 4
@FASTTRAP_T_INV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @thumb32_dataproc_regshift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thumb32_dataproc_regshift(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @BITS(i32 %8, i32 5, i32 15)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @BITS(i32 %10, i32 4, i32 1)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, 4
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 8
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 13
  br i1 %22, label %23, label %63

23:                                               ; preds = %20, %17, %14, %2
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %41

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @THUMB32_RM(i32 %27, i32 %28)
  %30 = load i64, i64* @REG_PC, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @THUMB32_RN(i32 %33, i32 %34)
  %36 = load i64, i64* @REG_PC, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @FASTTRAP_T_COMMON, align 4
  store i32 %39, i32* %3, align 4
  br label %108

40:                                               ; preds = %32, %26
  br label %62

41:                                               ; preds = %23
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @THUMB32_RM(i32 %42, i32 %43)
  %45 = load i64, i64* @REG_PC, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %41
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i64 @THUMB32_RD(i32 %48, i32 %49)
  %51 = load i64, i64* @REG_PC, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i64 @THUMB32_RN(i32 %54, i32 %55)
  %57 = load i64, i64* @REG_PC, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @FASTTRAP_T_COMMON, align 4
  store i32 %60, i32* %3, align 4
  br label %108

61:                                               ; preds = %53, %47, %41
  br label %62

62:                                               ; preds = %61, %40
  br label %106

63:                                               ; preds = %20
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %67, 3
  br i1 %68, label %69, label %84

69:                                               ; preds = %66, %63
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i64 @THUMB32_RM(i32 %70, i32 %71)
  %73 = load i64, i64* @REG_PC, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %69
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i64 @THUMB32_RD(i32 %76, i32 %77)
  %79 = load i64, i64* @REG_PC, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* @FASTTRAP_T_COMMON, align 4
  store i32 %82, i32* %3, align 4
  br label %108

83:                                               ; preds = %75, %69
  br label %105

84:                                               ; preds = %66
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i64 @THUMB32_RM(i32 %85, i32 %86)
  %88 = load i64, i64* @REG_PC, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %104

90:                                               ; preds = %84
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* %5, align 4
  %93 = call i64 @THUMB32_RD(i32 %91, i32 %92)
  %94 = load i64, i64* @REG_PC, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %90
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* %5, align 4
  %99 = call i64 @THUMB32_RN(i32 %97, i32 %98)
  %100 = load i64, i64* @REG_PC, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i32, i32* @FASTTRAP_T_COMMON, align 4
  store i32 %103, i32* %3, align 4
  br label %108

104:                                              ; preds = %96, %90, %84
  br label %105

105:                                              ; preds = %104, %83
  br label %106

106:                                              ; preds = %105, %62
  %107 = load i32, i32* @FASTTRAP_T_INV, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %106, %102, %81, %59, %38
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @BITS(i32, i32, i32) #1

declare dso_local i64 @THUMB32_RM(i32, i32) #1

declare dso_local i64 @THUMB32_RN(i32, i32) #1

declare dso_local i64 @THUMB32_RD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
