; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_changeFunctionID.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_changeFunctionID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TSDB_FUNC_COUNT = common dso_local global i32 0, align 4
@TSDB_FUNC_SUM = common dso_local global i32 0, align 4
@TSDB_FUNC_AVG = common dso_local global i32 0, align 4
@TSDB_FUNC_MIN = common dso_local global i32 0, align 4
@TSDB_FUNC_MAX = common dso_local global i32 0, align 4
@TSDB_FUNC_STDDEV = common dso_local global i32 0, align 4
@TSDB_FUNC_PERCT = common dso_local global i32 0, align 4
@TSDB_FUNC_APERCT = common dso_local global i32 0, align 4
@TSDB_FUNC_FIRST = common dso_local global i32 0, align 4
@TSDB_FUNC_LAST = common dso_local global i32 0, align 4
@TSDB_FUNC_LEASTSQR = common dso_local global i32 0, align 4
@TSDB_FUNC_TOP = common dso_local global i32 0, align 4
@TSDB_FUNC_BOTTOM = common dso_local global i32 0, align 4
@TSDB_FUNC_DIFF = common dso_local global i32 0, align 4
@TSDB_FUNC_SPREAD = common dso_local global i32 0, align 4
@TSDB_FUNC_TWA = common dso_local global i32 0, align 4
@TSDB_FUNC_INTERP = common dso_local global i32 0, align 4
@TSDB_FUNC_LAST_ROW = common dso_local global i32 0, align 4
@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @changeFunctionID(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %61 [
    i32 142, label %7
    i32 130, label %10
    i32 144, label %13
    i32 134, label %16
    i32 135, label %19
    i32 131, label %22
    i32 133, label %25
    i32 145, label %28
    i32 140, label %31
    i32 138, label %34
    i32 136, label %37
    i32 129, label %40
    i32 143, label %43
    i32 141, label %46
    i32 132, label %49
    i32 128, label %52
    i32 139, label %55
    i32 137, label %58
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @TSDB_FUNC_COUNT, align 4
  %9 = load i32*, i32** %5, align 8
  store i32 %8, i32* %9, align 4
  br label %62

10:                                               ; preds = %2
  %11 = load i32, i32* @TSDB_FUNC_SUM, align 4
  %12 = load i32*, i32** %5, align 8
  store i32 %11, i32* %12, align 4
  br label %62

13:                                               ; preds = %2
  %14 = load i32, i32* @TSDB_FUNC_AVG, align 4
  %15 = load i32*, i32** %5, align 8
  store i32 %14, i32* %15, align 4
  br label %62

16:                                               ; preds = %2
  %17 = load i32, i32* @TSDB_FUNC_MIN, align 4
  %18 = load i32*, i32** %5, align 8
  store i32 %17, i32* %18, align 4
  br label %62

19:                                               ; preds = %2
  %20 = load i32, i32* @TSDB_FUNC_MAX, align 4
  %21 = load i32*, i32** %5, align 8
  store i32 %20, i32* %21, align 4
  br label %62

22:                                               ; preds = %2
  %23 = load i32, i32* @TSDB_FUNC_STDDEV, align 4
  %24 = load i32*, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  br label %62

25:                                               ; preds = %2
  %26 = load i32, i32* @TSDB_FUNC_PERCT, align 4
  %27 = load i32*, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  br label %62

28:                                               ; preds = %2
  %29 = load i32, i32* @TSDB_FUNC_APERCT, align 4
  %30 = load i32*, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  br label %62

31:                                               ; preds = %2
  %32 = load i32, i32* @TSDB_FUNC_FIRST, align 4
  %33 = load i32*, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  br label %62

34:                                               ; preds = %2
  %35 = load i32, i32* @TSDB_FUNC_LAST, align 4
  %36 = load i32*, i32** %5, align 8
  store i32 %35, i32* %36, align 4
  br label %62

37:                                               ; preds = %2
  %38 = load i32, i32* @TSDB_FUNC_LEASTSQR, align 4
  %39 = load i32*, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  br label %62

40:                                               ; preds = %2
  %41 = load i32, i32* @TSDB_FUNC_TOP, align 4
  %42 = load i32*, i32** %5, align 8
  store i32 %41, i32* %42, align 4
  br label %62

43:                                               ; preds = %2
  %44 = load i32, i32* @TSDB_FUNC_BOTTOM, align 4
  %45 = load i32*, i32** %5, align 8
  store i32 %44, i32* %45, align 4
  br label %62

46:                                               ; preds = %2
  %47 = load i32, i32* @TSDB_FUNC_DIFF, align 4
  %48 = load i32*, i32** %5, align 8
  store i32 %47, i32* %48, align 4
  br label %62

49:                                               ; preds = %2
  %50 = load i32, i32* @TSDB_FUNC_SPREAD, align 4
  %51 = load i32*, i32** %5, align 8
  store i32 %50, i32* %51, align 4
  br label %62

52:                                               ; preds = %2
  %53 = load i32, i32* @TSDB_FUNC_TWA, align 4
  %54 = load i32*, i32** %5, align 8
  store i32 %53, i32* %54, align 4
  br label %62

55:                                               ; preds = %2
  %56 = load i32, i32* @TSDB_FUNC_INTERP, align 4
  %57 = load i32*, i32** %5, align 8
  store i32 %56, i32* %57, align 4
  br label %62

58:                                               ; preds = %2
  %59 = load i32, i32* @TSDB_FUNC_LAST_ROW, align 4
  %60 = load i32*, i32** %5, align 8
  store i32 %59, i32* %60, align 4
  br label %62

61:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %64

62:                                               ; preds = %58, %55, %52, %49, %46, %43, %40, %37, %34, %31, %28, %25, %22, %19, %16, %13, %10, %7
  %63 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %61
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
