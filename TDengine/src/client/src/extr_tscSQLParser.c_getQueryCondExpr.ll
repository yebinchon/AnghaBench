; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_getQueryCondExpr.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_getQueryCondExpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_8__*, %struct.TYPE_8__* }

@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"query condition between different columns must use 'AND'\00", align 1
@TSDB_CODE_INVALID_SQL = common dso_local global i64 0, align 8
@TK_OR = common dso_local global i64 0, align 8
@TSQL_EXPR_TBNAME = common dso_local global i64 0, align 8
@TSQL_EXPR_TAG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @getQueryCondExpr(i32* %0, %struct.TYPE_8__** %1, i32* %2, i64* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_8__** %1, %struct.TYPE_8__*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %19 = icmp eq %struct.TYPE_8__** %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %21, i64* %6, align 8
  br label %117

22:                                               ; preds = %5
  store i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %23 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %13, align 8
  %27 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %14, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %33 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @isValidExpr(%struct.TYPE_8__* %31, %struct.TYPE_8__* %32, i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %22
  %40 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %40, i64* %6, align 8
  br label %117

41:                                               ; preds = %22
  store i64 -1, i64* %15, align 8
  store i64 -1, i64* %16, align 8
  %42 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = call i32 @isExprDirectParentOfLeaftNode(%struct.TYPE_8__* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %107, label %46

46:                                               ; preds = %41
  %47 = load i32*, i32** %7, align 8
  %48 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  %51 = load i32*, i32** %9, align 8
  %52 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @getQueryCondExpr(i32* %47, %struct.TYPE_8__** %50, i32* %51, i64* %15, i64 %55)
  store i64 %56, i64* %17, align 8
  %57 = load i64, i64* %17, align 8
  %58 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %46
  %61 = load i64, i64* %17, align 8
  store i64 %61, i64* %6, align 8
  br label %117

62:                                               ; preds = %46
  %63 = load i32*, i32** %7, align 8
  %64 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i32*, i32** %9, align 8
  %68 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @getQueryCondExpr(i32* %63, %struct.TYPE_8__** %66, i32* %67, i64* %16, i64 %71)
  store i64 %72, i64* %17, align 8
  %73 = load i64, i64* %17, align 8
  %74 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %62
  %77 = load i64, i64* %17, align 8
  store i64 %77, i64* %6, align 8
  br label %117

78:                                               ; preds = %62
  %79 = load i64, i64* %15, align 8
  %80 = load i64, i64* %16, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %103

82:                                               ; preds = %78
  %83 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @TK_OR, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %102

89:                                               ; preds = %82
  %90 = load i64, i64* %15, align 8
  %91 = load i64, i64* %16, align 8
  %92 = add nsw i64 %90, %91
  %93 = load i64, i64* @TSQL_EXPR_TBNAME, align 8
  %94 = load i64, i64* @TSQL_EXPR_TAG, align 8
  %95 = add nsw i64 %93, %94
  %96 = icmp ne i64 %92, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %89
  %98 = load i32*, i32** %7, align 8
  %99 = load i8*, i8** %12, align 8
  %100 = call i32 @setErrMsg(i32* %98, i8* %99)
  %101 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %101, i64* %6, align 8
  br label %117

102:                                              ; preds = %89, %82
  br label %103

103:                                              ; preds = %102, %78
  %104 = load i64, i64* %16, align 8
  %105 = load i64*, i64** %10, align 8
  store i64 %104, i64* %105, align 8
  %106 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %106, i64* %6, align 8
  br label %117

107:                                              ; preds = %41
  %108 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = call i32 @exchangeExpr(%struct.TYPE_8__* %109)
  %111 = load i32*, i32** %7, align 8
  %112 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %113 = load i32*, i32** %9, align 8
  %114 = load i64*, i64** %10, align 8
  %115 = load i64, i64* %11, align 8
  %116 = call i64 @handleExprInQueryCond(i32* %111, %struct.TYPE_8__** %112, i32* %113, i64* %114, i64 %115)
  store i64 %116, i64* %6, align 8
  br label %117

117:                                              ; preds = %107, %103, %97, %76, %60, %39, %20
  %118 = load i64, i64* %6, align 8
  ret i64 %118
}

declare dso_local i32 @isValidExpr(%struct.TYPE_8__*, %struct.TYPE_8__*, i64) #1

declare dso_local i32 @isExprDirectParentOfLeaftNode(%struct.TYPE_8__*) #1

declare dso_local i32 @setErrMsg(i32*, i8*) #1

declare dso_local i32 @exchangeExpr(%struct.TYPE_8__*) #1

declare dso_local i64 @handleExprInQueryCond(i32*, %struct.TYPE_8__**, i32*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
