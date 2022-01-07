; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_validateLocalConfig.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_validateLocalConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32, i64, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32 }

@TSDB_CODE_INVALID_SQL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"resetLog\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"rpcDebugFlag\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"tmrDebugFlag\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"cDebugFlag\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"uDebugFlag\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"debugFlag\00", align 1
@__const.validateLocalConfig.LOCAL_DYNAMIC_CFG_OPTIONS = private unnamed_addr constant [6 x %struct.TYPE_8__] [%struct.TYPE_8__ { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 8, i64 0, i32 0 }, %struct.TYPE_8__ { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 12, i64 0, i32 0 }, %struct.TYPE_8__ { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 12, i64 0, i32 0 }, %struct.TYPE_8__ { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 10, i64 0, i32 0 }, %struct.TYPE_8__ { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 10, i64 0, i32 0 }, %struct.TYPE_8__ { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i32 9, i64 0, i32 0 }], align 16
@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @validateLocalConfig(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca [6 x %struct.TYPE_8__], align 16
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %19, 2
  br i1 %20, label %21, label %23

21:                                               ; preds = %16, %1
  %22 = load i32, i32* @TSDB_CODE_INVALID_SQL, align 4
  store i32 %22, i32* %2, align 4
  br label %121

23:                                               ; preds = %16
  %24 = bitcast [6 x %struct.TYPE_8__]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %24, i8* align 16 bitcast ([6 x %struct.TYPE_8__]* @__const.validateLocalConfig.LOCAL_DYNAMIC_CFG_OPTIONS to i8*), i64 192, i1 false)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i64 0
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %5, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %67

33:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %63, %33
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %37, label %66

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [6 x %struct.TYPE_8__], [6 x %struct.TYPE_8__]* %4, i64 0, i64 %39
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %7, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @strncasecmp(i32 %43, i32 %46, i64 %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %37
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %61, i32* %2, align 4
  br label %121

62:                                               ; preds = %52, %37
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %34

66:                                               ; preds = %34
  br label %119

67:                                               ; preds = %23
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i64 1
  store %struct.TYPE_7__* %71, %struct.TYPE_7__** %8, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @strtol(i32 %74, i32* null, i32 10)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp slt i32 %76, 131
  br i1 %77, label %81, label %78

78:                                               ; preds = %67
  %79 = load i32, i32* %9, align 4
  %80 = icmp sgt i32 %79, 199
  br i1 %80, label %81, label %83

81:                                               ; preds = %78, %67
  %82 = load i32, i32* @TSDB_CODE_INVALID_SQL, align 4
  store i32 %82, i32* %2, align 4
  br label %121

83:                                               ; preds = %78
  store i32 1, i32* %10, align 4
  br label %84

84:                                               ; preds = %115, %83
  %85 = load i32, i32* %10, align 4
  %86 = getelementptr inbounds [6 x %struct.TYPE_8__], [6 x %struct.TYPE_8__]* %4, i64 0, i64 0
  %87 = call i32 @tListLen(%struct.TYPE_8__* %86)
  %88 = icmp slt i32 %85, %87
  br i1 %88, label %89, label %118

89:                                               ; preds = %84
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [6 x %struct.TYPE_8__], [6 x %struct.TYPE_8__]* %4, i64 0, i64 %91
  store %struct.TYPE_8__* %92, %struct.TYPE_8__** %11, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i64 @strncasecmp(i32 %95, i32 %98, i64 %101)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %89
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %107, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %104
  %113 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %113, i32* %2, align 4
  br label %121

114:                                              ; preds = %104, %89
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %10, align 4
  br label %84

118:                                              ; preds = %84
  br label %119

119:                                              ; preds = %118, %66
  %120 = load i32, i32* @TSDB_CODE_INVALID_SQL, align 4
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %119, %112, %81, %60, %21
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strncasecmp(i32, i32, i64) #2

declare dso_local i32 @strtol(i32, i32*, i32) #2

declare dso_local i32 @tListLen(%struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
