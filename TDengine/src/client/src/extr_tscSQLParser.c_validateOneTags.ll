; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_validateOneTags.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_validateOneTags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_12__ = type { i64, i32 }

@.str = private unnamed_addr constant [30 x i8] c"timestamp not allowed in tags\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"duplicated column names\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"tag length too long\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"invalid tag name\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"invalid binary/nchar tag length\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"invalid data type in tags\00", align 1
@TSDB_MAX_TAGS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"tags no more than %d\00", align 1
@TSDB_DATA_TYPE_TIMESTAMP = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_BOOL = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_NCHAR = common dso_local global i64 0, align 8
@TSDB_MAX_TAGS_LEN = common dso_local global i64 0, align 8
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_BINARY = common dso_local global i64 0, align 8
@TSDB_COL_NAME_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @validateOneTags(i32* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca [128 x i8], align 16
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_12__*, align 8
  %19 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8** %11, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call %struct.TYPE_13__* @tscGetMeterMetaInfo(i32* %20, i32 0)
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %12, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %13, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TSDB_MAX_TAGS, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %2
  %31 = bitcast [128 x i8]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %31, i8 0, i64 128, i1 false)
  %32 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %33 = load i64, i64* @TSDB_MAX_TAGS, align 8
  %34 = call i32 @sprintf(i8* %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i64 %33)
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %37 = call i32 @setErrMsg(i32* %35, i8* %36)
  store i32 0, i32* %3, align 4
  br label %164

38:                                               ; preds = %2
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TSDB_DATA_TYPE_TIMESTAMP, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32*, i32** %4, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @setErrMsg(i32* %45, i8* %46)
  store i32 0, i32* %3, align 4
  br label %164

48:                                               ; preds = %38
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @TSDB_DATA_TYPE_BOOL, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %48
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @TSDB_DATA_TYPE_NCHAR, align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i32*, i32** %4, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = call i32 @setErrMsg(i32* %61, i8* %62)
  store i32 0, i32* %3, align 4
  br label %164

64:                                               ; preds = %54, %48
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %66, align 8
  %68 = call %struct.TYPE_12__* @tsGetTagSchema(%struct.TYPE_14__* %67)
  store %struct.TYPE_12__* %68, %struct.TYPE_12__** %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  br label %69

69:                                               ; preds = %83, %64
  %70 = load i64, i64* %17, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ult i64 %70, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %69
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %77 = load i64, i64* %17, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %16, align 8
  %82 = add i64 %81, %80
  store i64 %82, i64* %16, align 8
  br label %83

83:                                               ; preds = %75
  %84 = load i64, i64* %17, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %17, align 8
  br label %69

86:                                               ; preds = %69
  %87 = load i64, i64* %16, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %87, %90
  %92 = load i64, i64* @TSDB_MAX_TAGS_LEN, align 8
  %93 = icmp ugt i64 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %86
  %95 = load i32*, i32** %4, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = call i32 @setErrMsg(i32* %95, i8* %96)
  store i32 0, i32* %3, align 4
  br label %164

98:                                               ; preds = %86
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @validateColumnName(i32 %101)
  %103 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %98
  %106 = load i32*, i32** %4, align 8
  %107 = load i8*, i8** %9, align 8
  %108 = call i32 @setErrMsg(i32* %106, i8* %107)
  store i32 0, i32* %3, align 4
  br label %164

109:                                              ; preds = %98
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @TSDB_DATA_TYPE_BINARY, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %121, label %115

115:                                              ; preds = %109
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @TSDB_DATA_TYPE_NCHAR, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %130

121:                                              ; preds = %115, %109
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ule i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = load i32*, i32** %4, align 8
  %128 = load i8*, i8** %10, align 8
  %129 = call i32 @setErrMsg(i32* %127, i8* %128)
  store i32 0, i32* %3, align 4
  br label %164

130:                                              ; preds = %121, %115
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %132 = call %struct.TYPE_12__* @tsGetSchema(%struct.TYPE_14__* %131)
  store %struct.TYPE_12__* %132, %struct.TYPE_12__** %18, align 8
  store i64 0, i64* %19, align 8
  br label %133

133:                                              ; preds = %160, %130
  %134 = load i64, i64* %19, align 8
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = add i64 %137, %140
  %142 = icmp ult i64 %134, %141
  br i1 %142, label %143, label %163

143:                                              ; preds = %133
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %148 = load i64, i64* %19, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @TSDB_COL_NAME_LEN, align 4
  %153 = call i64 @strncasecmp(i32 %146, i32 %151, i32 %152)
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %143
  %156 = load i32*, i32** %4, align 8
  %157 = load i8*, i8** %7, align 8
  %158 = call i32 @setErrMsg(i32* %156, i8* %157)
  store i32 0, i32* %3, align 4
  br label %164

159:                                              ; preds = %143
  br label %160

160:                                              ; preds = %159
  %161 = load i64, i64* %19, align 8
  %162 = add i64 %161, 1
  store i64 %162, i64* %19, align 8
  br label %133

163:                                              ; preds = %133
  store i32 1, i32* %3, align 4
  br label %164

164:                                              ; preds = %163, %155, %126, %105, %94, %60, %44, %30
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local %struct.TYPE_13__* @tscGetMeterMetaInfo(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i32 @setErrMsg(i32*, i8*) #1

declare dso_local %struct.TYPE_12__* @tsGetTagSchema(%struct.TYPE_14__*) #1

declare dso_local i64 @validateColumnName(i32) #1

declare dso_local %struct.TYPE_12__* @tsGetSchema(%struct.TYPE_14__*) #1

declare dso_local i64 @strncasecmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
