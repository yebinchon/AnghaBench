; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-core.c_opMOVE.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-core.c_opMOVE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZE_B = common dso_local global i32 0, align 4
@SIZE_L = common dso_local global i32 0, align 4
@SIZE_W = common dso_local global i32 0, align 4
@EA_ADDRESS_REG = common dso_local global i64 0, align 8
@ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @opMOVE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opMOVE(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = ashr i32 %11, 12
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @SIZE_B, align 4
  br label %26

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = ashr i32 %17, 12
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @SIZE_L, align 4
  br label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @SIZE_W, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  br label %26

26:                                               ; preds = %24, %14
  %27 = phi i32 [ %15, %14 ], [ %25, %24 ]
  store i32 %27, i32* %6, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @ea_get(i32* %28, i32 %29, i32 %30, i32 0, i32* %7)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %96

35:                                               ; preds = %26
  %36 = load i32, i32* %5, align 4
  %37 = ashr i32 %36, 9
  %38 = and i32 %37, 7
  %39 = load i32, i32* %5, align 4
  %40 = ashr i32 %39, 3
  %41 = and i32 %40, 56
  %42 = or i32 %38, %41
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @EA_MODE(i32 %43)
  %45 = load i64, i64* @EA_ADDRESS_REG, align 8
  %46 = icmp sle i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  store i32 0, i32* %10, align 4
  br label %61

48:                                               ; preds = %35
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @ACCESS_WRITE, align 4
  %53 = call i32 @ea_resolve(i32* %49, i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @op_ill(i32* %57, i32 %58)
  store i32 %59, i32* %3, align 4
  br label %96

60:                                               ; preds = %48
  br label %61

61:                                               ; preds = %60, %47
  %62 = load i32, i32* %9, align 4
  %63 = call i64 @EA_MODE(i32 %62)
  %64 = load i64, i64* @EA_ADDRESS_REG, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %86

66:                                               ; preds = %61
  %67 = call i32 (...) @INSN_CLEAR_CC()
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @SIZE_B, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* %8, align 4
  br label %83

73:                                               ; preds = %66
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @SIZE_W, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i32, i32* %8, align 4
  br label %81

79:                                               ; preds = %73
  %80 = load i32, i32* %8, align 4
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i32 [ %78, %77 ], [ %80, %79 ]
  br label %83

83:                                               ; preds = %81, %71
  %84 = phi i32 [ %72, %71 ], [ %82, %81 ]
  %85 = call i32 @INSN_SETNZ(i32 %84)
  br label %86

86:                                               ; preds = %83, %61
  %87 = load i32*, i32** %4, align 8
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @ea_set(i32* %87, i32 %88, i32 %89, i32 %90)
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 4, %92
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %93, %94
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %86, %56, %34
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @ea_get(i32*, i32, i32, i32, i32*) #1

declare dso_local i64 @EA_MODE(i32) #1

declare dso_local i32 @ea_resolve(i32*, i32, i32, i32) #1

declare dso_local i32 @op_ill(i32*, i32) #1

declare dso_local i32 @INSN_CLEAR_CC(...) #1

declare dso_local i32 @INSN_SETNZ(i32) #1

declare dso_local i32 @ea_set(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
