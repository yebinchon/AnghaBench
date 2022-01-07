; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_extractColumnFilterInfo.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_extractColumnFilterInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_23__ = type { i64, %struct.TYPE_21__, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"non binary column not support like operator\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"binary column not support this operator\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"OR is not supported on different column filter\00", align 1
@TK_AND = common dso_local global i64 0, align 8
@TK_OR = common dso_local global i64 0, align 8
@TSDB_CODE_INVALID_SQL = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_BINARY = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_NCHAR = common dso_local global i64 0, align 8
@TK_EQ = common dso_local global i64 0, align 8
@TK_NE = common dso_local global i64 0, align 8
@TK_LIKE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_21__*, %struct.TYPE_18__*, i64)* @extractColumnFilterInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @extractColumnFilterInfo(i32* %0, %struct.TYPE_21__* %1, %struct.TYPE_18__* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_23__*, align 8
  %17 = alloca %struct.TYPE_22__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.TYPE_20__* @tscGetMeterMetaInfo(i32* %18, i32 %21)
  store %struct.TYPE_20__* %22, %struct.TYPE_20__** %10, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %11, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.TYPE_19__* @tsGetColumnSchema(i32* %26, i32 %29)
  store %struct.TYPE_19__* %30, %struct.TYPE_19__** %12, align 8
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8** %15, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %33 = call %struct.TYPE_23__* @tscColumnBaseInfoInsert(i32* %31, %struct.TYPE_21__* %32)
  store %struct.TYPE_23__* %33, %struct.TYPE_23__** %16, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %17, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @TK_AND, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %4
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %44 = call %struct.TYPE_22__* @addColumnFilterInfo(%struct.TYPE_23__* %43)
  store %struct.TYPE_22__* %44, %struct.TYPE_22__** %17, align 8
  br label %50

45:                                               ; preds = %37
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i64 0
  store %struct.TYPE_22__* %49, %struct.TYPE_22__** %17, align 8
  br label %50

50:                                               ; preds = %45, %42
  br label %61

51:                                               ; preds = %4
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* @TK_OR, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %57 = call %struct.TYPE_22__* @addColumnFilterInfo(%struct.TYPE_23__* %56)
  store %struct.TYPE_22__* %57, %struct.TYPE_22__** %17, align 8
  br label %60

58:                                               ; preds = %51
  %59 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %59, i64* %5, align 8
  br label %130

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %60, %50
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @TSDB_DATA_TYPE_BINARY, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %73, label %67

67:                                               ; preds = %61
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @TSDB_DATA_TYPE_NCHAR, align 8
  %72 = icmp eq i64 %70, %71
  br label %73

73:                                               ; preds = %67, %61
  %74 = phi i1 [ true, %61 ], [ %72, %67 ]
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 1, i32 0
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %107

83:                                               ; preds = %73
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @TK_EQ, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %106

89:                                               ; preds = %83
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @TK_NE, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %89
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @TK_LIKE, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %95
  %102 = load i32*, i32** %6, align 8
  %103 = load i8*, i8** %14, align 8
  %104 = call i32 @setErrMsg(i32* %102, i8* %103)
  %105 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %105, i64* %5, align 8
  br label %130

106:                                              ; preds = %95, %89, %83
  br label %119

107:                                              ; preds = %73
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @TK_LIKE, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %107
  %114 = load i32*, i32** %6, align 8
  %115 = load i8*, i8** %13, align 8
  %116 = call i32 @setErrMsg(i32* %114, i8* %115)
  %117 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %117, i64* %5, align 8
  br label %130

118:                                              ; preds = %107
  br label %119

119:                                              ; preds = %118, %106
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %123 = bitcast %struct.TYPE_21__* %121 to i8*
  %124 = bitcast %struct.TYPE_21__* %122 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %123, i8* align 4 %124, i64 8, i1 false)
  %125 = load i32*, i32** %6, align 8
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %129 = call i64 @doExtractColumnFilterInfo(i32* %125, %struct.TYPE_22__* %126, %struct.TYPE_21__* %127, %struct.TYPE_18__* %128)
  store i64 %129, i64* %5, align 8
  br label %130

130:                                              ; preds = %119, %113, %101, %58
  %131 = load i64, i64* %5, align 8
  ret i64 %131
}

declare dso_local %struct.TYPE_20__* @tscGetMeterMetaInfo(i32*, i32) #1

declare dso_local %struct.TYPE_19__* @tsGetColumnSchema(i32*, i32) #1

declare dso_local %struct.TYPE_23__* @tscColumnBaseInfoInsert(i32*, %struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_22__* @addColumnFilterInfo(%struct.TYPE_23__*) #1

declare dso_local i32 @setErrMsg(i32*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @doExtractColumnFilterInfo(i32*, %struct.TYPE_22__*, %struct.TYPE_21__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
