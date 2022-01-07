; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_validateDNodeConfig.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_validateDNodeConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32, i64, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32 }

@TSDB_CODE_INVALID_SQL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"resetLog\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"resetQueryCache\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"dDebugFlag\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"rpcDebugFlag\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"tmrDebugFlag\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"cDebugFlag\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"uDebugFlag\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"mDebugFlag\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"sdbDebugFlag\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"httpDebugFlag\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"monitorDebugFlag\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"qDebugflag\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"debugFlag\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"monitor\00", align 1
@__const.validateDNodeConfig.DNODE_DYNAMIC_CFG_OPTIONS = private unnamed_addr constant [14 x %struct.TYPE_8__] [%struct.TYPE_8__ { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 8, i64 0, i32 0 }, %struct.TYPE_8__ { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 15, i64 0, i32 0 }, %struct.TYPE_8__ { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 10, i64 0, i32 0 }, %struct.TYPE_8__ { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 12, i64 0, i32 0 }, %struct.TYPE_8__ { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 12, i64 0, i32 0 }, %struct.TYPE_8__ { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 10, i64 0, i32 0 }, %struct.TYPE_8__ { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32 10, i64 0, i32 0 }, %struct.TYPE_8__ { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 10, i64 0, i32 0 }, %struct.TYPE_8__ { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 12, i64 0, i32 0 }, %struct.TYPE_8__ { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 13, i64 0, i32 0 }, %struct.TYPE_8__ { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i32 16, i64 0, i32 0 }, %struct.TYPE_8__ { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 10, i64 0, i32 0 }, %struct.TYPE_8__ { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i32 9, i64 0, i32 0 }, %struct.TYPE_8__ { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 7, i64 0, i32 0 }], align 16
@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @validateDNodeConfig(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca [14 x %struct.TYPE_8__], align 16
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %21, 3
  br i1 %22, label %23, label %25

23:                                               ; preds = %18, %1
  %24 = load i32, i32* @TSDB_CODE_INVALID_SQL, align 4
  store i32 %24, i32* %2, align 4
  br label %163

25:                                               ; preds = %18
  %26 = bitcast [14 x %struct.TYPE_8__]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %26, i8* align 16 bitcast ([14 x %struct.TYPE_8__]* @__const.validateDNodeConfig.DNODE_DYNAMIC_CFG_OPTIONS to i8*), i64 448, i1 false)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i64 1
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %5, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %69

35:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %65, %35
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 2
  br i1 %38, label %39, label %68

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [14 x %struct.TYPE_8__], [14 x %struct.TYPE_8__]* %4, i64 0, i64 %41
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %7, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @strncasecmp(i32 %45, i32 %48, i64 %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %39
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %63, i32* %2, align 4
  br label %163

64:                                               ; preds = %54, %39
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %36

68:                                               ; preds = %36
  br label %161

69:                                               ; preds = %25
  %70 = getelementptr inbounds [14 x %struct.TYPE_8__], [14 x %struct.TYPE_8__]* %4, i64 0, i64 13
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @strncasecmp(i32 %72, i32 %75, i64 %78)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %107

81:                                               ; preds = %69
  %82 = getelementptr inbounds [14 x %struct.TYPE_8__], [14 x %struct.TYPE_8__]* %4, i64 0, i64 13
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 16
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %84, %87
  br i1 %88, label %89, label %107

89:                                               ; preds = %81
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i64 2
  store %struct.TYPE_7__* %93, %struct.TYPE_7__** %8, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @strtol(i32 %96, i32* null, i32 10)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %89
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 1
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i32, i32* @TSDB_CODE_INVALID_SQL, align 4
  store i32 %104, i32* %2, align 4
  br label %163

105:                                              ; preds = %100, %89
  %106 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %106, i32* %2, align 4
  br label %163

107:                                              ; preds = %81, %69
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i64 2
  store %struct.TYPE_7__* %111, %struct.TYPE_7__** %10, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @strtol(i32 %114, i32* null, i32 10)
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp slt i32 %116, 131
  br i1 %117, label %121, label %118

118:                                              ; preds = %107
  %119 = load i32, i32* %11, align 4
  %120 = icmp sgt i32 %119, 199
  br i1 %120, label %121, label %123

121:                                              ; preds = %118, %107
  %122 = load i32, i32* @TSDB_CODE_INVALID_SQL, align 4
  store i32 %122, i32* %2, align 4
  br label %163

123:                                              ; preds = %118
  store i32 2, i32* %12, align 4
  br label %124

124:                                              ; preds = %156, %123
  %125 = load i32, i32* %12, align 4
  %126 = getelementptr inbounds [14 x %struct.TYPE_8__], [14 x %struct.TYPE_8__]* %4, i64 0, i64 0
  %127 = call i32 @tListLen(%struct.TYPE_8__* %126)
  %128 = sub nsw i32 %127, 1
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %159

130:                                              ; preds = %124
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [14 x %struct.TYPE_8__], [14 x %struct.TYPE_8__]* %4, i64 0, i64 %132
  store %struct.TYPE_8__* %133, %struct.TYPE_8__** %13, align 8
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = call i64 @strncasecmp(i32 %136, i32 %139, i64 %142)
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %130
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp eq i64 %148, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %145
  %154 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %154, i32* %2, align 4
  br label %163

155:                                              ; preds = %145, %130
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %12, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %12, align 4
  br label %124

159:                                              ; preds = %124
  br label %160

160:                                              ; preds = %159
  br label %161

161:                                              ; preds = %160, %68
  %162 = load i32, i32* @TSDB_CODE_INVALID_SQL, align 4
  store i32 %162, i32* %2, align 4
  br label %163

163:                                              ; preds = %161, %153, %121, %105, %103, %62, %23
  %164 = load i32, i32* %2, align 4
  ret i32 %164
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
