; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_buildArithmeticExprString.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_buildArithmeticExprString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_5__*, %struct.TYPE_5__* }

@TK_PLUS = common dso_local global i64 0, align 8
@TK_REM = common dso_local global i64 0, align 8
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@TSDB_CODE_INVALID_SQL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @buildArithmeticExprString(%struct.TYPE_5__* %0, i8** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8** %1, i8*** %5, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %6, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %7, align 8
  %16 = load i8**, i8*** %5, align 8
  %17 = load i8*, i8** %16, align 8
  store i8 40, i8* %17, align 1
  %18 = load i8**, i8*** %5, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  store i8* %20, i8** %18, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TK_PLUS, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %2
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TK_REM, align 8
  %31 = icmp sle i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = load i8**, i8*** %5, align 8
  %35 = call i64 @buildArithmeticExprString(%struct.TYPE_5__* %33, i8** %34)
  br label %46

36:                                               ; preds = %26, %2
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = load i8**, i8*** %5, align 8
  %39 = call i64 @tSQLExprNodeToString(%struct.TYPE_5__* %37, i8** %38)
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %44, i64* %3, align 8
  br label %82

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45, %32
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = load i8**, i8*** %5, align 8
  %49 = call i32 @optrToString(%struct.TYPE_5__* %47, i8** %48)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @TK_PLUS, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %46
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @TK_REM, align 8
  %60 = icmp sle i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %63 = load i8**, i8*** %5, align 8
  %64 = call i64 @buildArithmeticExprString(%struct.TYPE_5__* %62, i8** %63)
  br label %75

65:                                               ; preds = %55, %46
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %67 = load i8**, i8*** %5, align 8
  %68 = call i64 @tSQLExprNodeToString(%struct.TYPE_5__* %66, i8** %67)
  store i64 %68, i64* %9, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %73, i64* %3, align 8
  br label %82

74:                                               ; preds = %65
  br label %75

75:                                               ; preds = %74, %61
  %76 = load i8**, i8*** %5, align 8
  %77 = load i8*, i8** %76, align 8
  store i8 41, i8* %77, align 1
  %78 = load i8**, i8*** %5, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  store i8* %80, i8** %78, align 8
  %81 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %81, i64* %3, align 8
  br label %82

82:                                               ; preds = %75, %72, %43
  %83 = load i64, i64* %3, align 8
  ret i64 %83
}

declare dso_local i64 @tSQLExprNodeToString(%struct.TYPE_5__*, i8**) #1

declare dso_local i32 @optrToString(%struct.TYPE_5__*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
