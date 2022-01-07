; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_doAddGroupColumnForSubquery.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_doAddGroupColumnForSubquery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_22__, %struct.TYPE_24__ }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_24__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { i64, i32 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_26__*, %struct.TYPE_25__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_31__ = type { i32, %struct.TYPE_21__*, i32 }

@TSDB_FUNC_PRJ = common dso_local global i32 0, align 4
@TSDB_COL_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @doAddGroupColumnForSubquery(%struct.TYPE_28__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca %struct.TYPE_21__, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_31__, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %5, align 8
  %19 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %20 = call %struct.TYPE_30__* @tscGetMeterMetaInfo(%struct.TYPE_28__* %19, i32 0)
  store %struct.TYPE_30__* %20, %struct.TYPE_30__** %6, align 8
  %21 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %5, align 8
  %25 = call %struct.TYPE_29__* @tsGetColumnSchema(i32 %23, i64 %24)
  store %struct.TYPE_29__* %25, %struct.TYPE_29__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  %27 = load i64, i64* %5, align 8
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 1
  store i32 0, i32* %28, align 8
  %29 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @TSDB_FUNC_PRJ, align 4
  %35 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.TYPE_27__* @tscSqlExprInsert(%struct.TYPE_28__* %29, i64 %33, i32 %34, %struct.TYPE_21__* %8, i32 %37, i32 %40, i32 %43)
  store %struct.TYPE_27__* %44, %struct.TYPE_27__** %9, align 8
  %45 = load i32, i32* @TSDB_COL_NORMAL, align 4
  %46 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 4
  %54 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = bitcast %struct.TYPE_31__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %56, i8 0, i64 24, i1 false)
  %57 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 1
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i64 0
  %61 = bitcast %struct.TYPE_21__* %60 to i8*
  %62 = bitcast %struct.TYPE_21__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 %62, i64 16, i1 false)
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @insertResultField(%struct.TYPE_28__* %63, i64 %67, %struct.TYPE_31__* %10, i32 %70, i32 %73, i32 %76)
  %78 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %83, 1
  %85 = call i32 @tscFieldInfoUpdateVisible(%struct.TYPE_22__* %79, i64 %84, i32 0)
  ret void
}

declare dso_local %struct.TYPE_30__* @tscGetMeterMetaInfo(%struct.TYPE_28__*, i32) #1

declare dso_local %struct.TYPE_29__* @tsGetColumnSchema(i32, i64) #1

declare dso_local %struct.TYPE_27__* @tscSqlExprInsert(%struct.TYPE_28__*, i64, i32, %struct.TYPE_21__*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @insertResultField(%struct.TYPE_28__*, i64, %struct.TYPE_31__*, i32, i32, i32) #1

declare dso_local i32 @tscFieldInfoUpdateVisible(%struct.TYPE_22__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
