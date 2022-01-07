; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_doExtractColumnFilterInfo.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_doExtractColumnFilterInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32, i32, i32, i8*, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_18__, %struct.TYPE_13__* }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64 }

@.str = private unnamed_addr constant [31 x i8] c"not supported filter condition\00", align 1
@TSDB_DATA_TYPE_TINYINT = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_BIGINT = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_FLOAT = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_DOUBLE = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_TIMESTAMP = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_BINARY = common dso_local global i64 0, align 8
@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4
@TSDB_DATA_TYPE_NCHAR = common dso_local global i64 0, align 8
@TSDB_NCHAR_SIZE = common dso_local global i32 0, align 4
@TSDB_RELATION_LESS_EQUAL = common dso_local global i32 0, align 4
@TSDB_RELATION_LESS = common dso_local global i32 0, align 4
@TSDB_RELATION_LARGE = common dso_local global i32 0, align 4
@TSDB_RELATION_LARGE_EQUAL = common dso_local global i32 0, align 4
@TSDB_RELATION_EQUAL = common dso_local global i32 0, align 4
@TSDB_RELATION_NOT_EQUAL = common dso_local global i32 0, align 4
@TSDB_RELATION_LIKE = common dso_local global i32 0, align 4
@TSDB_CODE_INVALID_SQL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_13__*)* @doExtractColumnFilterInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doExtractColumnFilterInfo(i32* %0, %struct.TYPE_17__* %1, %struct.TYPE_16__* %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %9, align 8
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %11, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_15__* @tscGetMeterMetaInfo(i32* %20, i32 %23)
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %12, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.TYPE_14__* @tsGetColumnSchema(i32 %27, i32 %30)
  store %struct.TYPE_14__* %31, %struct.TYPE_14__** %13, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %14, align 8
  %35 = load i64, i64* %14, align 8
  %36 = load i64, i64* @TSDB_DATA_TYPE_TINYINT, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %4
  %39 = load i64, i64* %14, align 8
  %40 = load i64, i64* @TSDB_DATA_TYPE_BIGINT, align 8
  %41 = icmp sle i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i64, i64* @TSDB_DATA_TYPE_BIGINT, align 8
  store i64 %43, i64* %14, align 8
  br label %78

44:                                               ; preds = %38, %4
  %45 = load i64, i64* %14, align 8
  %46 = load i64, i64* @TSDB_DATA_TYPE_FLOAT, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i64, i64* %14, align 8
  %50 = load i64, i64* @TSDB_DATA_TYPE_DOUBLE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48, %44
  %53 = load i64, i64* @TSDB_DATA_TYPE_DOUBLE, align 8
  store i64 %53, i64* %14, align 8
  br label %77

54:                                               ; preds = %48
  %55 = load i64, i64* %14, align 8
  %56 = load i64, i64* @TSDB_DATA_TYPE_TIMESTAMP, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %54
  %59 = load i64, i64* @TSDB_DATA_TYPE_BINARY, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %59, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %58
  %66 = load i32*, i32** %6, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = call i32 @setColumnFilterInfoForTimestamp(i32* %66, %struct.TYPE_18__* %68)
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* %15, align 4
  store i32 %74, i32* %5, align 4
  br label %207

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75, %58, %54
  br label %77

77:                                               ; preds = %76, %52
  br label %78

78:                                               ; preds = %77, %42
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 131
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 129
  br i1 %87, label %88, label %96

88:                                               ; preds = %83, %78
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 5
  %93 = bitcast i32* %92 to i8*
  %94 = load i64, i64* %14, align 8
  %95 = call i32 @tVariantDump(%struct.TYPE_18__* %90, i8* %93, i64 %94)
  br label %168

96:                                               ; preds = %83
  %97 = load i64, i64* %14, align 8
  %98 = load i64, i64* @TSDB_DATA_TYPE_BINARY, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %124

100:                                              ; preds = %96
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, 1
  %106 = call i64 @calloc(i32 1, i32 %105)
  %107 = inttoptr i64 %106 to i8*
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 4
  store i8* %107, i8** %109, align 8
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 4
  %121 = load i8*, i8** %120, align 8
  %122 = load i64, i64* %14, align 8
  %123 = call i32 @tVariantDump(%struct.TYPE_18__* %118, i8* %121, i64 %122)
  br label %167

124:                                              ; preds = %96
  %125 = load i64, i64* %14, align 8
  %126 = load i64, i64* @TSDB_DATA_TYPE_NCHAR, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %158

128:                                              ; preds = %124
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %132, 1
  %134 = load i32, i32* @TSDB_NCHAR_SIZE, align 4
  %135 = mul nsw i32 %133, %134
  %136 = call i64 @calloc(i32 1, i32 %135)
  %137 = inttoptr i64 %136 to i8*
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 4
  store i8* %137, i8** %139, align 8
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 4
  %144 = load i8*, i8** %143, align 8
  %145 = load i64, i64* %14, align 8
  %146 = call i32 @tVariantDump(%struct.TYPE_18__* %141, i8* %144, i64 %145)
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 4
  %149 = load i8*, i8** %148, align 8
  %150 = bitcast i8* %149 to i32*
  %151 = call i64 @wcslen(i32* %150)
  store i64 %151, i64* %16, align 8
  %152 = load i64, i64* %16, align 8
  %153 = load i32, i32* @TSDB_NCHAR_SIZE, align 4
  %154 = sext i32 %153 to i64
  %155 = mul i64 %152, %154
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 0
  store i64 %155, i64* %157, align 8
  br label %166

158:                                              ; preds = %124
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 3
  %163 = bitcast i32* %162 to i8*
  %164 = load i64, i64* %14, align 8
  %165 = call i32 @tVariantDump(%struct.TYPE_18__* %160, i8* %163, i64 %164)
  br label %166

166:                                              ; preds = %158, %128
  br label %167

167:                                              ; preds = %166, %100
  br label %168

168:                                              ; preds = %167, %88
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  switch i32 %171, label %200 [
    i32 131, label %172
    i32 129, label %176
    i32 132, label %180
    i32 133, label %184
    i32 134, label %188
    i32 128, label %192
    i32 130, label %196
  ]

172:                                              ; preds = %168
  %173 = load i32, i32* @TSDB_RELATION_LESS_EQUAL, align 4
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 4
  br label %205

176:                                              ; preds = %168
  %177 = load i32, i32* @TSDB_RELATION_LESS, align 4
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 2
  store i32 %177, i32* %179, align 4
  br label %205

180:                                              ; preds = %168
  %181 = load i32, i32* @TSDB_RELATION_LARGE, align 4
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 1
  store i32 %181, i32* %183, align 8
  br label %205

184:                                              ; preds = %168
  %185 = load i32, i32* @TSDB_RELATION_LARGE_EQUAL, align 4
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 8
  br label %205

188:                                              ; preds = %168
  %189 = load i32, i32* @TSDB_RELATION_EQUAL, align 4
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 1
  store i32 %189, i32* %191, align 8
  br label %205

192:                                              ; preds = %168
  %193 = load i32, i32* @TSDB_RELATION_NOT_EQUAL, align 4
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 1
  store i32 %193, i32* %195, align 8
  br label %205

196:                                              ; preds = %168
  %197 = load i32, i32* @TSDB_RELATION_LIKE, align 4
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 1
  store i32 %197, i32* %199, align 8
  br label %205

200:                                              ; preds = %168
  %201 = load i32*, i32** %6, align 8
  %202 = load i8*, i8** %10, align 8
  %203 = call i32 @setErrMsg(i32* %201, i8* %202)
  %204 = load i32, i32* @TSDB_CODE_INVALID_SQL, align 4
  store i32 %204, i32* %5, align 4
  br label %207

205:                                              ; preds = %196, %192, %188, %184, %180, %176, %172
  %206 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %206, i32* %5, align 4
  br label %207

207:                                              ; preds = %205, %200, %73
  %208 = load i32, i32* %5, align 4
  ret i32 %208
}

declare dso_local %struct.TYPE_15__* @tscGetMeterMetaInfo(i32*, i32) #1

declare dso_local %struct.TYPE_14__* @tsGetColumnSchema(i32, i32) #1

declare dso_local i32 @setColumnFilterInfoForTimestamp(i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @tVariantDump(%struct.TYPE_18__*, i8*, i64) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i64 @wcslen(i32*) #1

declare dso_local i32 @setErrMsg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
