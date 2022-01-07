; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_disassembler.c_thumb32_coproc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_disassembler.c_thumb32_coproc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FASTTRAP_T_INV = common dso_local global i32 0, align 4
@FASTTRAP_T_COMMON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @thumb32_coproc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thumb32_coproc(i32 %0, i32 %1) #0 {
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
  %11 = call i32 @BITS(i32 %10, i32 4, i32 63)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @BITS(i32 %12, i32 8, i32 15)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @BITS(i32 %14, i32 4, i32 1)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, 62
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @FASTTRAP_T_INV, align 4
  store i32 %20, i32* %3, align 4
  br label %75

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, 14
  %24 = icmp eq i32 %23, 10
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 48
  %28 = icmp eq i32 %27, 48
  br i1 %28, label %29, label %73

29:                                               ; preds = %25, %21
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @thumb32_instword_to_arm(i32 %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, 48
  %35 = icmp eq i32 %34, 48
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @FASTTRAP_T_COMMON, align 4
  store i32 %37, i32* %3, align 4
  br label %75

38:                                               ; preds = %29
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, 58
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, 56
  %45 = icmp eq i32 %44, 8
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, 48
  %49 = icmp eq i32 %48, 16
  br i1 %49, label %50, label %53

50:                                               ; preds = %46, %42, %38
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @vfp_loadstore(i32 %51)
  store i32 %52, i32* %3, align 4
  br label %75

53:                                               ; preds = %46
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, 62
  %56 = icmp eq i32 %55, 4
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @vfp_64transfer(i32 %58)
  store i32 %59, i32* %3, align 4
  br label %75

60:                                               ; preds = %53
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %61, 48
  %63 = icmp eq i32 %62, 32
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* @FASTTRAP_T_COMMON, align 4
  store i32 %68, i32* %3, align 4
  br label %75

69:                                               ; preds = %64
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @vfp_transfer(i32 %70)
  store i32 %71, i32* %3, align 4
  br label %75

72:                                               ; preds = %60
  br label %73

73:                                               ; preds = %72, %25
  %74 = load i32, i32* @FASTTRAP_T_INV, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %69, %67, %57, %50, %36, %19
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @BITS(i32, i32, i32) #1

declare dso_local i32 @thumb32_instword_to_arm(i32, i32) #1

declare dso_local i32 @vfp_loadstore(i32) #1

declare dso_local i32 @vfp_64transfer(i32) #1

declare dso_local i32 @vfp_transfer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
