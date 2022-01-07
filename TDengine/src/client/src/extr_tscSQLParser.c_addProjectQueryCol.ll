; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_addProjectQueryCol.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_addProjectQueryCol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_19__*, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_17__* }

@TSDB_TBNAME_COLUMN_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_19__*, %struct.TYPE_14__*)* @addProjectQueryCol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addProjectQueryCol(i32* %0, i32 %1, %struct.TYPE_19__* %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_18__, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %8, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.TYPE_15__* @doAddProjectCol(i32* %14, i32 %15, i64 %18, i32 %21)
  store %struct.TYPE_15__* %22, %struct.TYPE_15__** %9, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.TYPE_20__* @tscGetMeterMetaInfo(i32* %23, i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  store %struct.TYPE_17__* %29, %struct.TYPE_17__** %10, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call %struct.TYPE_16__* @tsGetColumnSchema(%struct.TYPE_17__* %30, i64 %33)
  store %struct.TYPE_16__* %34, %struct.TYPE_16__** %11, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %4
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  br label %47

43:                                               ; preds = %4
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i8* [ %42, %39 ], [ %46, %43 ]
  store i8* %48, i8** %12, align 8
  %49 = bitcast %struct.TYPE_18__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %49, i8 0, i64 24, i1 false)
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i64 0
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %55 = bitcast %struct.TYPE_19__* %53 to i8*
  %56 = bitcast %struct.TYPE_19__* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 16, i1 false)
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sge i64 %59, %62
  br i1 %63, label %70, label %64

64:                                               ; preds = %47
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @TSDB_TBNAME_COLUMN_INDEX, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %64, %47
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  store i32 0, i32* %71, align 8
  br label %72

72:                                               ; preds = %70, %64
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** %12, align 8
  %82 = call i32 @insertResultField(i32* %73, i32 %74, %struct.TYPE_18__* %13, i32 %77, i32 %80, i8* %81)
  ret void
}

declare dso_local %struct.TYPE_15__* @doAddProjectCol(i32*, i32, i64, i32) #1

declare dso_local %struct.TYPE_20__* @tscGetMeterMetaInfo(i32*, i32) #1

declare dso_local %struct.TYPE_16__* @tsGetColumnSchema(%struct.TYPE_17__*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @insertResultField(i32*, i32, %struct.TYPE_18__*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
