; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtSupertableQuery.c_mgmtFilterMeterByIndex.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtSupertableQuery.c_mgmtFilterMeterByIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32, i32 }

@.str = private unnamed_addr constant [72 x i8] c"metric:%s, no result returned, error in super table query expression:%s\00", align 1
@TSDB_CODE_OPS_NOT_SUPPORT = common dso_local global i32 0, align 4
@filterPrepare = common dso_local global i32 0, align 4
@tSkipListNodeFilterCallback = common dso_local global i32 0, align 4
@tSQLListTraverseDestroyInfo = common dso_local global i32 0, align 4
@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i8*, i32)* @mgmtFilterMeterByIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mgmtFilterMeterByIndex(%struct.TYPE_6__* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_7__, align 8
  %13 = alloca %struct.TYPE_8__, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = add i64 %16, %21
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @tSQLBinaryExprFromString(i32** %11, i32* %24, i32 %27, i8* %28, i32 %29)
  %31 = load i32*, i32** %11, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @mError(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %36, i8* %37)
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @tfree(i8* %39)
  %41 = load i32, i32* @TSDB_CODE_OPS_NOT_SUPPORT, align 4
  store i32 %41, i32* %5, align 4
  br label %66

42:                                               ; preds = %4
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %43, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %48 = load i32*, i32** %10, align 8
  store i32* %48, i32** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %51 = load i32, i32* @filterPrepare, align 4
  store i32 %51, i32* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %53 = load i32, i32* @tSkipListNodeFilterCallback, align 4
  store i32 %53, i32* %52, align 4
  %54 = load i32*, i32** %11, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @tSQLBinaryExprTraverse(i32* %54, i32 %57, i32* %58, %struct.TYPE_8__* %13)
  %60 = load i32, i32* @tSQLListTraverseDestroyInfo, align 4
  %61 = call i32 @tSQLBinaryExprDestroy(i32** %11, i32 %60)
  br label %62

62:                                               ; preds = %42
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @tansformQueryResult(i32* %63)
  %65 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %62, %33
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @tSQLBinaryExprFromString(i32**, i32*, i32, i8*, i32) #1

declare dso_local i32 @mError(i8*, i32, i8*) #1

declare dso_local i32 @tfree(i8*) #1

declare dso_local i32 @tSQLBinaryExprTraverse(i32*, i32, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @tSQLBinaryExprDestroy(i32**, i32) #1

declare dso_local i32 @tansformQueryResult(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
