; ModuleID = '/home/carl/AnghaBench/Cello/benchmarks/ext/extr_regexp9.c_chartorune.c'
source_filename = "/home/carl/AnghaBench/Cello/benchmarks/ext/extr_regexp9.c_chartorune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Tx = common dso_local global i32 0, align 4
@Testx = common dso_local global i32 0, align 4
@T3 = common dso_local global i32 0, align 4
@T2 = common dso_local global i32 0, align 4
@Bitx = common dso_local global i32 0, align 4
@Rune2 = common dso_local global i32 0, align 4
@Rune1 = common dso_local global i64 0, align 8
@T4 = common dso_local global i32 0, align 4
@Rune3 = common dso_local global i32 0, align 4
@Bad = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chartorune(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to i32*
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @Tx, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32*, i32** %4, align 8
  store i32 %17, i32* %18, align 4
  store i32 1, i32* %3, align 4
  br label %99

19:                                               ; preds = %2
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = bitcast i8* %21 to i32*
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @Tx, align 4
  %25 = xor i32 %23, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @Testx, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %96

31:                                               ; preds = %19
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @T3, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @T2, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %96

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @Bitx, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @Rune2, align 4
  %47 = and i32 %45, %46
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %9, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* @Rune1, align 8
  %51 = icmp sle i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  br label %96

53:                                               ; preds = %40
  %54 = load i64, i64* %9, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i32*, i32** %4, align 8
  store i32 %55, i32* %56, align 4
  store i32 2, i32* %3, align 4
  br label %99

57:                                               ; preds = %31
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 2
  %60 = bitcast i8* %59 to i32*
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @Tx, align 4
  %63 = xor i32 %61, %62
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @Testx, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  br label %96

69:                                               ; preds = %57
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @T4, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %95

73:                                               ; preds = %69
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @Bitx, align 4
  %76 = shl i32 %74, %75
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @Bitx, align 4
  %80 = shl i32 %78, %79
  %81 = load i32, i32* %8, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @Rune3, align 4
  %84 = and i32 %82, %83
  %85 = sext i32 %84 to i64
  store i64 %85, i64* %9, align 8
  %86 = load i64, i64* %9, align 8
  %87 = load i32, i32* @Rune2, align 4
  %88 = sext i32 %87 to i64
  %89 = icmp sle i64 %86, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %73
  br label %96

91:                                               ; preds = %73
  %92 = load i64, i64* %9, align 8
  %93 = trunc i64 %92 to i32
  %94 = load i32*, i32** %4, align 8
  store i32 %93, i32* %94, align 4
  store i32 3, i32* %3, align 4
  br label %99

95:                                               ; preds = %69
  br label %96

96:                                               ; preds = %95, %90, %68, %52, %39, %30
  %97 = load i32, i32* @Bad, align 4
  %98 = load i32*, i32** %4, align 8
  store i32 %97, i32* %98, align 4
  store i32 1, i32* %3, align 4
  br label %99

99:                                               ; preds = %96, %91, %53, %16
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
