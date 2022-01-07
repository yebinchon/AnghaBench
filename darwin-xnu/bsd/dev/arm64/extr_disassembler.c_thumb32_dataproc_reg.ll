; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm64/extr_disassembler.c_thumb32_dataproc_reg.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm64/extr_disassembler.c_thumb32_dataproc_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_PC = common dso_local global i64 0, align 8
@FASTTRAP_T_COMMON = common dso_local global i32 0, align 4
@FASTTRAP_T_INV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @thumb32_dataproc_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thumb32_dataproc_reg(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @BITS(i32 %8, i32 4, i32 15)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @BITS(i32 %10, i32 4, i32 15)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp sle i32 0, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = icmp sle i32 %15, 5
  br i1 %16, label %17, label %36

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, 8
  %20 = icmp eq i32 %19, 8
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @THUMB32_RM(i32 %22, i32 %23)
  %25 = load i64, i64* @REG_PC, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @THUMB32_RD(i32 %28, i32 %29)
  %31 = load i64, i64* @REG_PC, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @FASTTRAP_T_COMMON, align 4
  store i32 %34, i32* %3, align 4
  br label %102

35:                                               ; preds = %27, %21
  br label %36

36:                                               ; preds = %35, %17, %14, %2
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %40
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @THUMB32_RM(i32 %44, i32 %45)
  %47 = load i64, i64* @REG_PC, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %43
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i64 @THUMB32_RD(i32 %50, i32 %51)
  %53 = load i64, i64* @REG_PC, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i64 @THUMB32_RN(i32 %56, i32 %57)
  %59 = load i64, i64* @REG_PC, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @FASTTRAP_T_COMMON, align 4
  store i32 %62, i32* %3, align 4
  br label %102

63:                                               ; preds = %55, %49, %43
  br label %64

64:                                               ; preds = %63, %40, %36
  %65 = load i32, i32* %6, align 4
  %66 = and i32 %65, 8
  %67 = icmp eq i32 %66, 8
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = load i32, i32* %7, align 4
  %70 = and i32 %69, 12
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @thumb32_parallel_addsub_signed(i32 %73, i32 %74)
  store i32 %75, i32* %3, align 4
  br label %102

76:                                               ; preds = %68, %64
  %77 = load i32, i32* %6, align 4
  %78 = and i32 %77, 8
  %79 = icmp eq i32 %78, 8
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = load i32, i32* %7, align 4
  %82 = and i32 %81, 12
  %83 = icmp eq i32 %82, 4
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @thumb32_parallel_addsub_unsigned(i32 %85, i32 %86)
  store i32 %87, i32* %3, align 4
  br label %102

88:                                               ; preds = %80, %76
  %89 = load i32, i32* %6, align 4
  %90 = and i32 %89, 12
  %91 = icmp eq i32 %90, 8
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  %93 = load i32, i32* %7, align 4
  %94 = and i32 %93, 12
  %95 = icmp eq i32 %94, 8
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @thumb32_misc(i32 %97, i32 %98)
  store i32 %99, i32* %3, align 4
  br label %102

100:                                              ; preds = %92, %88
  %101 = load i32, i32* @FASTTRAP_T_INV, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %100, %96, %84, %72, %61, %33
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @BITS(i32, i32, i32) #1

declare dso_local i64 @THUMB32_RM(i32, i32) #1

declare dso_local i64 @THUMB32_RD(i32, i32) #1

declare dso_local i64 @THUMB32_RN(i32, i32) #1

declare dso_local i32 @thumb32_parallel_addsub_signed(i32, i32) #1

declare dso_local i32 @thumb32_parallel_addsub_unsigned(i32, i32) #1

declare dso_local i32 @thumb32_misc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
