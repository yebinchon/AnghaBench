; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSql.c_tscParseTblNameList.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSql.c_tscParseTblNameList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i8*, i64, i32, i32 }
%struct.TYPE_17__ = type { i8* }
%struct.TYPE_16__ = type { i64, i8*, i32 }

@TSDB_SQL_MULTI_META = common dso_local global i32 0, align 4
@TSDB_CODE_INVALID_METER_ID = common dso_local global i32 0, align 4
@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4
@TSDB_METER_ID_LEN = common dso_local global i32 0, align 4
@TK_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"table name is invalid\00", align 1
@TSDB_MULTI_METERMETA_MAX_NUM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"tables over the max number\00", align 1
@TSDB_CODE_CLI_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to allocate memory\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s,\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i8*, i64)* @tscParseTblNameList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tscParseTblNameList(%struct.TYPE_14__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_16__, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = call i32 @tscRemoveAllMeterMetaInfo(%struct.TYPE_15__* %22, i32 0)
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = call i32 @tscCleanSqlCmd(%struct.TYPE_15__* %25)
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** %8, align 8
  %29 = load i32, i32* @TSDB_SQL_MULTI_META, align 4
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @TSDB_CODE_INVALID_METER_ID, align 4
  store i32 %34, i32* %9, align 4
  %35 = load i8*, i8** %6, align 8
  store i8* %35, i8** %10, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %37 = call %struct.TYPE_17__* @tscAddEmptyMeterMetaInfo(%struct.TYPE_15__* %36)
  store %struct.TYPE_17__* %37, %struct.TYPE_17__** %11, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %39 = load i64, i64* %7, align 8
  %40 = add i64 %39, 16
  %41 = call i32 @tscAllocPayload(%struct.TYPE_15__* %38, i64 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %3
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %4, align 4
  br label %190

46:                                               ; preds = %3
  %47 = load i32, i32* @TSDB_METER_ID_LEN, align 4
  %48 = zext i32 %47 to i64
  %49 = call i8* @llvm.stacksave()
  store i8* %49, i8** %13, align 8
  %50 = alloca i8, i64 %48, align 16
  store i64 %48, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %16, align 8
  br label %54

54:                                               ; preds = %165, %46
  br label %55

55:                                               ; preds = %54
  %56 = load i8*, i8** %10, align 8
  %57 = call i8* @strchr(i8* %56, i8 signext 44)
  store i8* %57, i8** %12, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %178

61:                                               ; preds = %55
  %62 = load i8*, i8** %10, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = trunc i64 %67 to i32
  %69 = call i32 @memcpy(i8* %50, i8* %62, i32 %68)
  %70 = load i8*, i8** %12, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = ptrtoint i8* %70 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  store i64 %74, i64* %17, align 8
  %75 = load i64, i64* %17, align 8
  %76 = getelementptr inbounds i8, i8* %50, i64 %75
  store i8 0, i8* %76, align 1
  %77 = load i8*, i8** %12, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  store i8* %78, i8** %10, align 8
  %79 = call i32 @strtrim(i8* %50)
  %80 = call i64 @strlen(i8* %50)
  store i64 %80, i64* %17, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %82 = load i64, i64* %17, align 8
  store i64 %82, i64* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  store i8* %50, i8** %83, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 2
  %85 = load i32, i32* @TK_ID, align 4
  store i32 %85, i32* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 2
  %87 = call i32 @tSQLGetToken(i8* %50, i32* %86)
  %88 = call i32 @tscValidateName(%struct.TYPE_16__* %18)
  %89 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %61
  %92 = load i32, i32* @TSDB_CODE_INVALID_METER_ID, align 4
  store i32 %92, i32* %9, align 4
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = call i64 (i8*, i8*, ...) @sprintf(i8* %95, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %188

98:                                               ; preds = %61
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %100 = call i32 @setMeterID(%struct.TYPE_14__* %99, %struct.TYPE_16__* %18, i32 0)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i32, i32* %9, align 4
  store i32 %104, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %188

105:                                              ; preds = %98
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %107, align 8
  %110 = load i64, i64* @TSDB_MULTI_METERMETA_MAX_NUM, align 8
  %111 = icmp sgt i64 %109, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %105
  %113 = load i32, i32* @TSDB_CODE_INVALID_METER_ID, align 4
  store i32 %113, i32* %9, align 4
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = call i64 (i8*, i8*, ...) @sprintf(i8* %116, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %118 = load i32, i32* %9, align 4
  store i32 %118, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %188

119:                                              ; preds = %105
  %120 = load i32, i32* %15, align 4
  %121 = sext i32 %120 to i64
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = call i64 @strlen(i8* %124)
  %126 = add nsw i64 %121, %125
  %127 = add nsw i64 %126, 128
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp sge i64 %127, %130
  br i1 %131, label %132, label %165

132:                                              ; preds = %119
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %7, align 8
  %140 = add i64 %138, %139
  %141 = call i8* @realloc(i8* %135, i64 %140)
  store i8* %141, i8** %20, align 8
  %142 = load i8*, i8** %20, align 8
  %143 = icmp eq i8* %142, null
  br i1 %143, label %144, label %151

144:                                              ; preds = %132
  %145 = load i32, i32* @TSDB_CODE_CLI_OUT_OF_MEMORY, align 4
  store i32 %145, i32* %9, align 4
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = call i64 (i8*, i8*, ...) @sprintf(i8* %148, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %150 = load i32, i32* %9, align 4
  store i32 %150, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %188

151:                                              ; preds = %132
  %152 = load i8*, i8** %20, align 8
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 1
  store i8* %152, i8** %154, align 8
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* %7, align 8
  %159 = add i64 %157, %158
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 2
  store i64 %159, i64* %161, align 8
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 1
  %164 = load i8*, i8** %163, align 8
  store i8* %164, i8** %16, align 8
  br label %165

165:                                              ; preds = %151, %119
  %166 = load i8*, i8** %16, align 8
  %167 = load i32, i32* %15, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = call i64 (i8*, i8*, ...) @sprintf(i8* %169, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %172)
  %174 = load i32, i32* %15, align 4
  %175 = sext i32 %174 to i64
  %176 = add nsw i64 %175, %173
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %15, align 4
  br label %54

178:                                              ; preds = %60
  %179 = load i8*, i8** %16, align 8
  %180 = load i32, i32* %15, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %179, i64 %181
  store i8 0, i8* %182, align 1
  %183 = load i32, i32* %15, align 4
  %184 = add nsw i32 %183, 1
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 3
  store i32 %184, i32* %186, align 8
  %187 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %187, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %188

188:                                              ; preds = %178, %144, %112, %103, %91
  %189 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %189)
  br label %190

190:                                              ; preds = %188, %44
  %191 = load i32, i32* %4, align 4
  ret i32 %191
}

declare dso_local i32 @tscRemoveAllMeterMetaInfo(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @tscCleanSqlCmd(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_17__* @tscAddEmptyMeterMetaInfo(%struct.TYPE_15__*) #1

declare dso_local i32 @tscAllocPayload(%struct.TYPE_15__*, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strtrim(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @tSQLGetToken(i8*, i32*) #1

declare dso_local i32 @tscValidateName(%struct.TYPE_16__*) #1

declare dso_local i64 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @setMeterID(%struct.TYPE_14__*, %struct.TYPE_16__*, i32) #1

declare dso_local i8* @realloc(i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
