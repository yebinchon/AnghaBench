; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm64/extr_disassembler.c_thumb32_longmultiply.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm64/extr_disassembler.c_thumb32_longmultiply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_PC = common dso_local global i64 0, align 8
@FASTTRAP_T_COMMON = common dso_local global i32 0, align 4
@FASTTRAP_T_INV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @thumb32_longmultiply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thumb32_longmultiply(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @BITS(i32 %8, i32 4, i32 7)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @BITS(i32 %10, i32 4, i32 15)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 15
  br i1 %16, label %23, label %17

17:                                               ; preds = %14, %2
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 3
  br i1 %19, label %20, label %44

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 15
  br i1 %22, label %23, label %44

23:                                               ; preds = %20, %14
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @THUMB32_RM(i32 %24, i32 %25)
  %27 = load i64, i64* @REG_PC, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %23
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @THUMB32_RD(i32 %30, i32 %31)
  %33 = load i64, i64* @REG_PC, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i64 @THUMB32_RN(i32 %36, i32 %37)
  %39 = load i64, i64* @REG_PC, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @FASTTRAP_T_COMMON, align 4
  store i32 %42, i32* %3, align 4
  br label %73

43:                                               ; preds = %35, %29, %23
  br label %71

44:                                               ; preds = %20, %17
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i64 @THUMB32_RM(i32 %45, i32 %46)
  %48 = load i64, i64* @REG_PC, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %44
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i64 @THUMB32_RD(i32 %51, i32 %52)
  %54 = load i64, i64* @REG_PC, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %50
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i64 @THUMB32_RT(i32 %57, i32 %58)
  %60 = load i64, i64* @REG_PC, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i64 @THUMB32_RN(i32 %63, i32 %64)
  %66 = load i64, i64* @REG_PC, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* @FASTTRAP_T_COMMON, align 4
  store i32 %69, i32* %3, align 4
  br label %73

70:                                               ; preds = %62, %56, %50, %44
  br label %71

71:                                               ; preds = %70, %43
  %72 = load i32, i32* @FASTTRAP_T_INV, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %68, %41
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @BITS(i32, i32, i32) #1

declare dso_local i64 @THUMB32_RM(i32, i32) #1

declare dso_local i64 @THUMB32_RD(i32, i32) #1

declare dso_local i64 @THUMB32_RN(i32, i32) #1

declare dso_local i64 @THUMB32_RT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
