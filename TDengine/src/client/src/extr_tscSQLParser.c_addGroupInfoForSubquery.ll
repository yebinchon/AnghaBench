; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_addGroupInfoForSubquery.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_addGroupInfoForSubquery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_37__ = type { %struct.TYPE_39__ }
%struct.TYPE_39__ = type { %struct.TYPE_36__, %struct.TYPE_33__, %struct.TYPE_31__ }
%struct.TYPE_36__ = type { i64, %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i8* }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_31__ = type { i8* }
%struct.TYPE_38__ = type { i64, %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i8*, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_30__ = type { i64, i32 }
%struct.TYPE_40__ = type { i64, i64, i8* }
%struct.TYPE_29__ = type { i32 }

@TSDB_FUNC_TAG = common dso_local global i64 0, align 8
@TSDB_COL_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @addGroupInfoForSubquery(%struct.TYPE_37__* %0, %struct.TYPE_37__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_37__*, align 8
  %5 = alloca %struct.TYPE_37__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_38__*, align 8
  %9 = alloca %struct.TYPE_39__*, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_30__, align 8
  %13 = alloca %struct.TYPE_40__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_29__, align 4
  %18 = alloca i8*, align 8
  store %struct.TYPE_37__* %0, %struct.TYPE_37__** %4, align 8
  store %struct.TYPE_37__* %1, %struct.TYPE_37__** %5, align 8
  store i8* %2, i8** %6, align 8
  %19 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %127

25:                                               ; preds = %3
  %26 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %7, align 8
  %31 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %31, i32 0, i32 0
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr i8, i8* %33, i64 -1
  %35 = call %struct.TYPE_38__* @tscSqlExprGet(%struct.TYPE_39__* %32, i8* %34)
  store %struct.TYPE_38__* %35, %struct.TYPE_38__** %8, align 8
  %36 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %36, i32 0, i32 0
  store %struct.TYPE_39__* %37, %struct.TYPE_39__** %9, align 8
  %38 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @TSDB_FUNC_TAG, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %126

43:                                               ; preds = %25
  %44 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %44, i32 0, i32 0
  %46 = call %struct.TYPE_28__* @tscGetMeterMetaInfo(%struct.TYPE_39__* %45, i32 0)
  store %struct.TYPE_28__* %46, %struct.TYPE_28__** %10, align 8
  %47 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %48 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_32__*, %struct.TYPE_32__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @tscGetJoinTagColIndexByUid(%struct.TYPE_39__* %47, i32 %52)
  store i64 %53, i64* %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %12, i32 0, i32 0
  %55 = load i64, i64* %11, align 8
  store i64 %55, i64* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %12, i32 0, i32 1
  store i32 0, i32* %56, align 8
  %57 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_32__*, %struct.TYPE_32__** %58, align 8
  %60 = call %struct.TYPE_40__* @tsGetTagSchema(%struct.TYPE_32__* %59)
  store %struct.TYPE_40__* %60, %struct.TYPE_40__** %13, align 8
  %61 = load %struct.TYPE_40__*, %struct.TYPE_40__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %12, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %14, align 8
  %67 = load %struct.TYPE_40__*, %struct.TYPE_40__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %12, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %15, align 8
  %73 = load %struct.TYPE_40__*, %struct.TYPE_40__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %12, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %16, align 8
  %79 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %80 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i64, i64* @TSDB_FUNC_TAG, align 8
  %85 = load i64, i64* %14, align 8
  %86 = load i64, i64* %15, align 8
  %87 = load i64, i64* %15, align 8
  %88 = call %struct.TYPE_38__* @tscSqlExprInsert(%struct.TYPE_39__* %79, i32 %83, i64 %84, %struct.TYPE_30__* %12, i64 %85, i64 %86, i64 %87)
  store %struct.TYPE_38__* %88, %struct.TYPE_38__** %8, align 8
  %89 = load i32, i32* @TSDB_COL_TAG, align 4
  %90 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %91, i32 0, i32 1
  store i32 %89, i32* %92, align 8
  %93 = bitcast %struct.TYPE_29__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %93, i8 0, i64 4, i1 false)
  %94 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %95 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i64, i64* %15, align 8
  %100 = load i64, i64* %14, align 8
  %101 = load i8*, i8** %16, align 8
  %102 = call i32 @insertResultField(%struct.TYPE_39__* %94, i32 %98, %struct.TYPE_29__* %17, i64 %99, i64 %100, i8* %101)
  %103 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %12, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = inttoptr i64 %104 to i8*
  store i8* %105, i8** %18, align 8
  %106 = load i8*, i8** %18, align 8
  %107 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %108, i32 0, i32 0
  store i8* %106, i8** %109, align 8
  %110 = load i8*, i8** %18, align 8
  %111 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_35__*, %struct.TYPE_35__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %115, i32 0, i32 0
  store i8* %110, i8** %116, align 8
  %117 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %118 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_35__*, %struct.TYPE_35__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %121, i64 0
  %123 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @addRequiredTagColumn(%struct.TYPE_39__* %117, i8* %124, i32 0)
  br label %126

126:                                              ; preds = %43, %25
  br label %127

127:                                              ; preds = %126, %3
  ret void
}

declare dso_local %struct.TYPE_38__* @tscSqlExprGet(%struct.TYPE_39__*, i8*) #1

declare dso_local %struct.TYPE_28__* @tscGetMeterMetaInfo(%struct.TYPE_39__*, i32) #1

declare dso_local i64 @tscGetJoinTagColIndexByUid(%struct.TYPE_39__*, i32) #1

declare dso_local %struct.TYPE_40__* @tsGetTagSchema(%struct.TYPE_32__*) #1

declare dso_local %struct.TYPE_38__* @tscSqlExprInsert(%struct.TYPE_39__*, i32, i64, %struct.TYPE_30__*, i64, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @insertResultField(%struct.TYPE_39__*, i32, %struct.TYPE_29__*, i64, i64, i8*) #1

declare dso_local i32 @addRequiredTagColumn(%struct.TYPE_39__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
