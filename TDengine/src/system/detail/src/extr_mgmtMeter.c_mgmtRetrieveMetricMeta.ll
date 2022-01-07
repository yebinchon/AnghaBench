; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtMeter.c_mgmtRetrieveMetricMeta.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtMeter.c_mgmtRetrieveMetricMeta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32* }
%struct.TYPE_18__ = type { i32, i32, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 }

@INT32_MAX = common dso_local global i64 0, align 8
@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4
@TSDB_CODE_NOT_SUPER_TABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmtRetrieveMetricMeta(i8* %0, i8** %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  %20 = load i64, i64* @INT32_MAX, align 8
  store i64 %20, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %21 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %21, i32* %10, align 4
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 8
  %27 = trunc i64 %26 to i32
  %28 = call i64* @calloc(i32 1, i32 %27)
  store i64* %28, i64** %11, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = mul i64 8, %32
  %34 = trunc i64 %33 to i32
  %35 = call i64* @calloc(i32 1, i32 %34)
  store i64* %35, i64** %12, align 8
  %36 = load i64*, i64** %11, align 8
  %37 = icmp eq i64* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %3
  %39 = load i64*, i64** %12, align 8
  %40 = icmp eq i64* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %38, %3
  store i32 -1, i32* %4, align 4
  br label %195

42:                                               ; preds = %38
  store i64 0, i64* %13, align 8
  br label %43

43:                                               ; preds = %76, %42
  %44 = load i64, i64* %13, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = icmp ult i64 %44, %48
  br i1 %49, label %50, label %79

50:                                               ; preds = %43
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %52 = load i64, i64* %13, align 8
  %53 = call %struct.TYPE_18__* @doConvertMetricMetaMsg(%struct.TYPE_17__* %51, i64 %52)
  store %struct.TYPE_18__* %53, %struct.TYPE_18__** %14, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call %struct.TYPE_16__* @mgmtGetMeter(i32 %56)
  store %struct.TYPE_16__* %57, %struct.TYPE_16__** %15, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %59 = call i32 @mgmtIsMetric(%struct.TYPE_16__* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %50
  %62 = load i32, i32* @TSDB_CODE_NOT_SUPER_TABLE, align 4
  store i32 %62, i32* %10, align 4
  br label %79

63:                                               ; preds = %50
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i32*
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @mgmtGetReqTagsLength(%struct.TYPE_16__* %64, i32* %68, i32 %71)
  %73 = load i64*, i64** %12, align 8
  %74 = load i64, i64* %13, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  store i64 %72, i64* %75, align 8
  br label %76

76:                                               ; preds = %63
  %77 = load i64, i64* %13, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %13, align 8
  br label %43

79:                                               ; preds = %61, %43
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %102

83:                                               ; preds = %79
  store i64 0, i64* %16, align 8
  br label %84

84:                                               ; preds = %98, %83
  %85 = load i64, i64* %16, align 8
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = icmp ult i64 %85, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %84
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %93 = load i64, i64* %16, align 8
  %94 = load i64*, i64** %11, align 8
  %95 = load i64, i64* %16, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  %97 = call i32 @mgmtRetrieveMetersFromMetric(%struct.TYPE_17__* %92, i64 %93, i64* %96)
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %91
  %99 = load i64, i64* %16, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %16, align 8
  br label %84

101:                                              ; preds = %84
  br label %102

102:                                              ; preds = %101, %79
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %108 = load i64*, i64** %11, align 8
  %109 = call i32 @mgmtDoJoin(%struct.TYPE_17__* %107, i64* %108)
  store i32 %109, i32* %10, align 4
  br label %110

110:                                              ; preds = %106, %102
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %133

114:                                              ; preds = %110
  store i64 0, i64* %17, align 8
  br label %115

115:                                              ; preds = %129, %114
  %116 = load i64, i64* %17, align 8
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = icmp ult i64 %116, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %115
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %124 = load i64, i64* %17, align 8
  %125 = load i64*, i64** %11, align 8
  %126 = load i64, i64* %17, align 8
  %127 = getelementptr inbounds i64, i64* %125, i64 %126
  %128 = call i32 @mgmtReorganizeMetersInMetricMeta(%struct.TYPE_17__* %123, i64 %124, i64* %127)
  br label %129

129:                                              ; preds = %122
  %130 = load i64, i64* %17, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %17, align 8
  br label %115

132:                                              ; preds = %115
  br label %133

133:                                              ; preds = %132, %110
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %163

137:                                              ; preds = %133
  store i64 0, i64* %18, align 8
  br label %138

138:                                              ; preds = %159, %137
  %139 = load i64, i64* %18, align 8
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = icmp ult i64 %139, %143
  br i1 %144, label %145, label %162

145:                                              ; preds = %138
  %146 = load i64*, i64** %11, align 8
  %147 = load i64, i64* %18, align 8
  %148 = getelementptr inbounds i64, i64* %146, i64 %147
  %149 = load i64*, i64** %12, align 8
  %150 = load i64, i64* %18, align 8
  %151 = getelementptr inbounds i64, i64* %149, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* %8, align 8
  %154 = call i64 @mgmtGetMetricMetaMsgSize(i64* %148, i64 %152, i64 %153)
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %156, %154
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %9, align 4
  br label %159

159:                                              ; preds = %145
  %160 = load i64, i64* %18, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %18, align 8
  br label %138

162:                                              ; preds = %138
  br label %164

163:                                              ; preds = %133
  store i32 512, i32* %9, align 4
  br label %164

164:                                              ; preds = %163, %162
  %165 = load i8*, i8** %5, align 8
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %167 = load i64*, i64** %11, align 8
  %168 = load i8**, i8*** %6, align 8
  %169 = load i64*, i64** %12, align 8
  %170 = load i32, i32* %9, align 4
  %171 = load i64, i64* %8, align 8
  %172 = load i32, i32* %10, align 4
  %173 = call i32 @mgmtBuildMetricMetaRspMsg(i8* %165, %struct.TYPE_17__* %166, i64* %167, i8** %168, i64* %169, i32 %170, i64 %171, i32 %172)
  store i32 %173, i32* %9, align 4
  store i64 0, i64* %19, align 8
  br label %174

174:                                              ; preds = %186, %164
  %175 = load i64, i64* %19, align 8
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = sext i32 %178 to i64
  %180 = icmp ult i64 %175, %179
  br i1 %180, label %181, label %189

181:                                              ; preds = %174
  %182 = load i64*, i64** %11, align 8
  %183 = load i64, i64* %19, align 8
  %184 = getelementptr inbounds i64, i64* %182, i64 %183
  %185 = call i32 @tQueryResultClean(i64* %184)
  br label %186

186:                                              ; preds = %181
  %187 = load i64, i64* %19, align 8
  %188 = add i64 %187, 1
  store i64 %188, i64* %19, align 8
  br label %174

189:                                              ; preds = %174
  %190 = load i64*, i64** %12, align 8
  %191 = call i32 @free(i64* %190)
  %192 = load i64*, i64** %11, align 8
  %193 = call i32 @free(i64* %192)
  %194 = load i32, i32* %9, align 4
  store i32 %194, i32* %4, align 4
  br label %195

195:                                              ; preds = %189, %41
  %196 = load i32, i32* %4, align 4
  ret i32 %196
}

declare dso_local i64* @calloc(i32, i32) #1

declare dso_local %struct.TYPE_18__* @doConvertMetricMetaMsg(%struct.TYPE_17__*, i64) #1

declare dso_local %struct.TYPE_16__* @mgmtGetMeter(i32) #1

declare dso_local i32 @mgmtIsMetric(%struct.TYPE_16__*) #1

declare dso_local i64 @mgmtGetReqTagsLength(%struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @mgmtRetrieveMetersFromMetric(%struct.TYPE_17__*, i64, i64*) #1

declare dso_local i32 @mgmtDoJoin(%struct.TYPE_17__*, i64*) #1

declare dso_local i32 @mgmtReorganizeMetersInMetricMeta(%struct.TYPE_17__*, i64, i64*) #1

declare dso_local i64 @mgmtGetMetricMetaMsgSize(i64*, i64, i64) #1

declare dso_local i32 @mgmtBuildMetricMetaRspMsg(i8*, %struct.TYPE_17__*, i64*, i8**, i64*, i32, i64, i32) #1

declare dso_local i32 @tQueryResultClean(i64*) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
