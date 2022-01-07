; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_doExtractExprForSTable.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_doExtractExprForSTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_11__*, %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_12__ = type { i32 }

@COLUMN_INDEX_INITIALIZER = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__**, i32*, %struct.TYPE_11__**, i64)* @doExtractExprForSTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doExtractExprForSTable(%struct.TYPE_11__** %0, i32* %1, %struct.TYPE_11__** %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_11__**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__**, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_13__, align 8
  %11 = alloca %struct.TYPE_12__, align 4
  store %struct.TYPE_11__** %0, %struct.TYPE_11__*** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_11__** %2, %struct.TYPE_11__*** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %14 = call i64 @isExprDirectParentOfLeaftNode(%struct.TYPE_11__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %44

16:                                               ; preds = %4
  %17 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %9, align 8
  %21 = bitcast %struct.TYPE_13__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 bitcast (%struct.TYPE_13__* @COLUMN_INDEX_INITIALIZER to i8*), i64 8, i1 false)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 3
  %24 = load i32*, i32** %6, align 8
  %25 = call i64 @getColumnIndexByNameEx(i32* %23, i32* %24, %struct.TYPE_13__* %10)
  %26 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  br label %67

29:                                               ; preds = %16
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %67

35:                                               ; preds = %29
  %36 = bitcast %struct.TYPE_12__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %36, i8 0, i64 4, i1 false)
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 3
  %39 = call i32 @extractTableNameFromToken(i32* %38, %struct.TYPE_12__* %11)
  %40 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %42, align 8
  %43 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %43, align 8
  br label %67

44:                                               ; preds = %4
  %45 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.TYPE_11__* @tSQLExprCreate(i32* null, i32* null, i32 %48)
  %50 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  store %struct.TYPE_11__* %49, %struct.TYPE_11__** %50, align 8
  %51 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i32*, i32** %6, align 8
  %55 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load i64, i64* %8, align 8
  call void @doExtractExprForSTable(%struct.TYPE_11__** %53, i32* %54, %struct.TYPE_11__** %57, i64 %58)
  %59 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32*, i32** %6, align 8
  %63 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i64, i64* %8, align 8
  call void @doExtractExprForSTable(%struct.TYPE_11__** %61, i32* %62, %struct.TYPE_11__** %65, i64 %66)
  br label %67

67:                                               ; preds = %28, %34, %44, %35
  ret void
}

declare dso_local i64 @isExprDirectParentOfLeaftNode(%struct.TYPE_11__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @getColumnIndexByNameEx(i32*, i32*, %struct.TYPE_13__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @extractTableNameFromToken(i32*, %struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_11__* @tSQLExprCreate(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
