; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_validateArithmeticSQLExpr.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_validateArithmeticSQLExpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_4__*, %struct.TYPE_4__* }

@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@TK_PLUS = common dso_local global i64 0, align 8
@TK_REM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, i32*, i64, i32*)* @validateArithmeticSQLExpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @validateArithmeticSQLExpr(%struct.TYPE_4__* %0, i32* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %17 = icmp eq %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %19, i64* %5, align 8
  br label %100

20:                                               ; preds = %4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %10, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TK_PLUS, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %20
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TK_REM, align 8
  %34 = icmp sle i64 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i64 @validateArithmeticSQLExpr(%struct.TYPE_4__* %36, i32* %37, i64 %38, i32* %39)
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i64, i64* %11, align 8
  store i64 %45, i64* %5, align 8
  br label %100

46:                                               ; preds = %35
  br label %59

47:                                               ; preds = %29, %20
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = call i64 @validateSQLExpr(%struct.TYPE_4__* %48, i32* %49, i64 %50, i32* %51)
  store i64 %52, i64* %12, align 8
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i64, i64* %12, align 8
  store i64 %57, i64* %5, align 8
  br label %100

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58, %46
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  store %struct.TYPE_4__* %62, %struct.TYPE_4__** %13, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @TK_PLUS, align 8
  %67 = icmp sge i64 %65, %66
  br i1 %67, label %68, label %86

68:                                               ; preds = %59
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @TK_REM, align 8
  %73 = icmp sle i64 %71, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %68
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = call i64 @validateArithmeticSQLExpr(%struct.TYPE_4__* %75, i32* %76, i64 %77, i32* %78)
  store i64 %79, i64* %14, align 8
  %80 = load i64, i64* %14, align 8
  %81 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %74
  %84 = load i64, i64* %14, align 8
  store i64 %84, i64* %5, align 8
  br label %100

85:                                               ; preds = %74
  br label %98

86:                                               ; preds = %68, %59
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = load i64, i64* %8, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = call i64 @validateSQLExpr(%struct.TYPE_4__* %87, i32* %88, i64 %89, i32* %90)
  store i64 %91, i64* %15, align 8
  %92 = load i64, i64* %15, align 8
  %93 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %86
  %96 = load i64, i64* %15, align 8
  store i64 %96, i64* %5, align 8
  br label %100

97:                                               ; preds = %86
  br label %98

98:                                               ; preds = %97, %85
  %99 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %99, i64* %5, align 8
  br label %100

100:                                              ; preds = %98, %95, %83, %56, %44, %18
  %101 = load i64, i64* %5, align 8
  ret i64 %101
}

declare dso_local i64 @validateSQLExpr(%struct.TYPE_4__*, i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
