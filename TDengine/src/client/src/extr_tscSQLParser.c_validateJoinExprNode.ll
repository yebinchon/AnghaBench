; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_validateJoinExprNode.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_validateJoinExprNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"illegal column name\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"= is expected in join expression\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"join column must have same type\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"self join is not allowed\00", align 1
@.str.4 = private unnamed_addr constant [77 x i8] c"join table must be the same type(table to table, super table to super table)\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"tags in join condition not support binary/nchar types\00", align 1
@TK_ID = common dso_local global i64 0, align 8
@TK_EQ = common dso_local global i64 0, align 8
@COLUMN_INDEX_INITIALIZER = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_BINARY = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_NCHAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_12__*, %struct.TYPE_15__*)* @validateJoinExprNode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validateJoinExprNode(i32* %0, %struct.TYPE_12__* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca %struct.TYPE_15__, align 8
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca %struct.TYPE_13__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_14__*, align 8
  %20 = alloca %struct.TYPE_13__*, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %7, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  store i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.4, i64 0, i64 0), i8** %12, align 8
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i8** %13, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %14, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TK_ID, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %127

31:                                               ; preds = %3
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TK_EQ, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i32*, i32** %5, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @setErrMsg(i32* %38, i8* %39)
  store i32 0, i32* %4, align 4
  br label %127

41:                                               ; preds = %31
  %42 = bitcast %struct.TYPE_15__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 bitcast (%struct.TYPE_15__* @COLUMN_INDEX_INITIALIZER to i8*), i64 16, i1 false)
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load i32*, i32** %5, align 8
  %46 = call i64 @getColumnIndexByNameEx(i32* %44, i32* %45, %struct.TYPE_15__* %15)
  %47 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load i32*, i32** %5, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @setErrMsg(i32* %50, i8* %51)
  store i32 0, i32* %4, align 4
  br label %127

53:                                               ; preds = %41
  %54 = load i32*, i32** %5, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call %struct.TYPE_14__* @tscGetMeterMetaInfo(i32* %54, i64 %57)
  store %struct.TYPE_14__* %58, %struct.TYPE_14__** %16, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.TYPE_13__* @tsGetSchema(i32 %61)
  store %struct.TYPE_13__* %62, %struct.TYPE_13__** %17, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %18, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call %struct.TYPE_14__* @tscGetMeterMetaInfo(i32* %70, i64 %72)
  store %struct.TYPE_14__* %73, %struct.TYPE_14__** %19, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call %struct.TYPE_13__* @tsGetSchema(i32 %76)
  store %struct.TYPE_13__* %77, %struct.TYPE_13__** %20, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %21, align 8
  %84 = load i64, i64* %18, align 8
  %85 = load i64, i64* %21, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %53
  %88 = load i32*, i32** %5, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = call i32 @setErrMsg(i32* %88, i8* %89)
  store i32 0, i32* %4, align 4
  br label %127

91:                                               ; preds = %53
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %94, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %91
  %99 = load i32*, i32** %5, align 8
  %100 = load i8*, i8** %11, align 8
  %101 = call i32 @setErrMsg(i32* %99, i8* %100)
  store i32 0, i32* %4, align 4
  br label %127

102:                                              ; preds = %91
  %103 = load i64, i64* %18, align 8
  %104 = load i64, i64* @TSDB_DATA_TYPE_BINARY, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  %107 = load i64, i64* %18, align 8
  %108 = load i64, i64* @TSDB_DATA_TYPE_NCHAR, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %106, %102
  %111 = load i32*, i32** %5, align 8
  %112 = load i8*, i8** %13, align 8
  %113 = call i32 @setErrMsg(i32* %111, i8* %112)
  store i32 0, i32* %4, align 4
  br label %127

114:                                              ; preds = %106
  br label %115

115:                                              ; preds = %114
  br label %116

116:                                              ; preds = %115
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %118 = call i64 @UTIL_METER_IS_METRIC(%struct.TYPE_14__* %117)
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %120 = call i64 @UTIL_METER_IS_METRIC(%struct.TYPE_14__* %119)
  %121 = icmp ne i64 %118, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load i32*, i32** %5, align 8
  %124 = load i8*, i8** %12, align 8
  %125 = call i32 @setErrMsg(i32* %123, i8* %124)
  store i32 0, i32* %4, align 4
  br label %127

126:                                              ; preds = %116
  store i32 1, i32* %4, align 4
  br label %127

127:                                              ; preds = %126, %122, %110, %98, %87, %49, %37, %30
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @setErrMsg(i32*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @getColumnIndexByNameEx(i32*, i32*, %struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_14__* @tscGetMeterMetaInfo(i32*, i64) #1

declare dso_local %struct.TYPE_13__* @tsGetSchema(i32) #1

declare dso_local i64 @UTIL_METER_IS_METRIC(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
