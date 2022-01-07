; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscAst.c_parseRemainStr.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscAst.c_parseRemainStr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_15__*, %struct.TYPE_15__* }
%struct.TYPE_17__ = type { i32 }

@TSQL_NODE_EXPR = common dso_local global i8* null, align 8
@TSQL_NODE_COL = common dso_local global i64 0, align 8
@TSQL_NODE_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (i8*, %struct.TYPE_16__*, %struct.TYPE_17__*, i32, i32, i32*)* @parseRemainStr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @parseRemainStr(i8* %0, %struct.TYPE_16__* %1, %struct.TYPE_17__* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_15__*, align 8
  store i8* %0, i8** %8, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %19 = call %struct.TYPE_15__* @malloc(i32 16)
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %14, align 8
  %20 = load i8*, i8** @TSQL_NODE_EXPR, align 8
  %21 = ptrtoint i8* %20 to i64
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %26, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = call %struct.TYPE_15__* @createSyntaxTree(%struct.TYPE_17__* %27, i32 %28, i8* %29, i32* %30)
  store %struct.TYPE_15__* %31, %struct.TYPE_15__** %15, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %33 = icmp eq %struct.TYPE_15__* %32, null
  br i1 %33, label %58, label %34

34:                                               ; preds = %6
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TSQL_NODE_COL, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @TSQL_NODE_VALUE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %58, label %46

46:                                               ; preds = %40, %34
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @TSQL_NODE_VALUE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %46
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @TSQL_NODE_COL, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %52, %40, %6
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %60 = call i32 @tSQLSyntaxNodeDestroy(%struct.TYPE_15__* %59, i32* null)
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %62 = call i32 @tSQLSyntaxNodeDestroy(%struct.TYPE_15__* %61, i32* null)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %7, align 8
  br label %95

63:                                               ; preds = %52, %46
  %64 = call i64 @calloc(i32 1, i32 24)
  %65 = inttoptr i64 %64 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %65, %struct.TYPE_16__** %16, align 8
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %17, align 4
  %67 = call i32 @reviseBinaryExprIfNecessary(%struct.TYPE_15__** %14, %struct.TYPE_15__** %15, i32* %17)
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 3
  store %struct.TYPE_15__* %68, %struct.TYPE_15__** %70, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 2
  store %struct.TYPE_15__* %71, %struct.TYPE_15__** %73, align 8
  %74 = load i32, i32* %17, align 4
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %83 = call i32 @isQueryOnPrimaryKey(i32 %80, %struct.TYPE_15__* %81, %struct.TYPE_15__* %82)
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = call %struct.TYPE_15__* @malloc(i32 16)
  store %struct.TYPE_15__* %86, %struct.TYPE_15__** %18, align 8
  %87 = load i8*, i8** @TSQL_NODE_EXPR, align 8
  %88 = ptrtoint i8* %87 to i64
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 1
  store %struct.TYPE_16__* %91, %struct.TYPE_16__** %93, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  store %struct.TYPE_15__* %94, %struct.TYPE_15__** %7, align 8
  br label %95

95:                                               ; preds = %63, %58
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  ret %struct.TYPE_15__* %96
}

declare dso_local %struct.TYPE_15__* @malloc(i32) #1

declare dso_local %struct.TYPE_15__* @createSyntaxTree(%struct.TYPE_17__*, i32, i8*, i32*) #1

declare dso_local i32 @tSQLSyntaxNodeDestroy(%struct.TYPE_15__*, i32*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @reviseBinaryExprIfNecessary(%struct.TYPE_15__**, %struct.TYPE_15__**, i32*) #1

declare dso_local i32 @isQueryOnPrimaryKey(i32, %struct.TYPE_15__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
