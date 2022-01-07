; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscParseInsert.c_tscInsertDataFromFile.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscParseInsert.c_tscInsertDataFromFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_23__, %struct.TYPE_26__ }
%struct.TYPE_23__ = type { i64, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_22__*, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_24__** }
%struct.TYPE_24__ = type { i32, i64, i64, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_29__*, i32 }
%struct.TYPE_29__ = type { i32, i32, i32 }
%struct.TYPE_27__ = type { i32 }

@TSDB_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@TSDB_CODE_CLI_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@TSDB_CODE_INVALID_SQL = common dso_local global i32 0, align 4
@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, i32*)* @tscInsertDataFromFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tscInsertDataFromFile(%struct.TYPE_25__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_28__*, align 8
  %16 = alloca %struct.TYPE_29__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_24__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_27__, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 0, i64* %6, align 8
  store i8* null, i8** %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 1
  store %struct.TYPE_26__* %25, %struct.TYPE_26__** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %27 = call %struct.TYPE_28__* @tscGetMeterMetaInfo(%struct.TYPE_26__* %26, i32 0)
  store %struct.TYPE_28__* %27, %struct.TYPE_28__** %15, align 8
  %28 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %29 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %29, align 8
  store %struct.TYPE_29__* %30, %struct.TYPE_29__** %16, align 8
  %31 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %32 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %17, align 4
  %34 = call %struct.TYPE_22__* (...) @tscCreateBlockArrayList()
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 0
  store %struct.TYPE_22__* %34, %struct.TYPE_22__** %36, align 8
  %37 = load i32, i32* @TSDB_PAYLOAD_SIZE, align 4
  %38 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %39 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %42 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.TYPE_24__* @tscCreateDataBlockEx(i32 %37, i32 %40, i32 4, i32 %43)
  store %struct.TYPE_24__* %44, %struct.TYPE_24__** %18, align 8
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %46, align 8
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %49 = call i32 @tscAppendDataBlock(%struct.TYPE_22__* %47, %struct.TYPE_24__* %48)
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %51 = load i32, i32* %17, align 4
  %52 = call i32 @tscAllocateMemIfNeed(%struct.TYPE_24__* %50, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp slt i32 %53, 1
  br i1 %54, label %55, label %56

55:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %244

56:                                               ; preds = %2
  store i32 0, i32* %19, align 4
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 0
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_29__*, %struct.TYPE_29__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %57, align 4
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_29__*, %struct.TYPE_29__** %64, align 8
  %66 = call i32* @tsGetSchema(%struct.TYPE_29__* %65)
  store i32* %66, i32** %21, align 8
  %67 = load i32*, i32** %21, align 8
  %68 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_29__*, %struct.TYPE_29__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @tscSetAssignedColumnInfo(%struct.TYPE_27__* %20, i32* %67, i32 %72)
  br label %74

74:                                               ; preds = %210, %102, %56
  %75 = load i32*, i32** %5, align 8
  %76 = call i64 @getline(i8** %7, i64* %8, i32* %75)
  store i64 %76, i64* %6, align 8
  %77 = icmp ne i64 %76, -1
  br i1 %77, label %78, label %211

78:                                               ; preds = %74
  %79 = load i8*, i8** %7, align 8
  %80 = load i64, i64* %6, align 8
  %81 = sub i64 %80, 1
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 13, %84
  br i1 %85, label %94, label %86

86:                                               ; preds = %78
  %87 = load i8*, i8** %7, align 8
  %88 = load i64, i64* %6, align 8
  %89 = sub i64 %88, 1
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 10, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %86, %78
  %95 = load i8*, i8** %7, align 8
  %96 = load i64, i64* %6, align 8
  %97 = add i64 %96, -1
  store i64 %97, i64* %6, align 8
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  store i8 0, i8* %98, align 1
  br label %99

99:                                               ; preds = %94, %86
  %100 = load i64, i64* %6, align 8
  %101 = icmp ule i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  br label %74

103:                                              ; preds = %99
  %104 = load i8*, i8** %7, align 8
  store i8* %104, i8** %22, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = call i32 @strtolower(i8* %105, i8* %106)
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp sge i32 %108, %109
  br i1 %110, label %124, label %111

111:                                              ; preds = %103
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %116 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %114, %117
  %119 = sext i32 %118 to i64
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %121 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp sge i64 %119, %122
  br i1 %123, label %124, label %139

124:                                              ; preds = %111, %103
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %126 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @tscAllocateMemIfNeed(%struct.TYPE_24__* %125, i32 %128)
  store i32 %129, i32* %23, align 4
  %130 = load i32, i32* %23, align 4
  %131 = icmp eq i32 0, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %124
  %133 = load i32, i32* @TSDB_CODE_CLI_OUT_OF_MEMORY, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %3, align 4
  br label %244

135:                                              ; preds = %124
  %136 = load i32, i32* %23, align 4
  %137 = load i32, i32* %10, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %10, align 4
  br label %139

139:                                              ; preds = %135, %111
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %141 = load i32*, i32** %21, align 8
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %146 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @tsParseOneRowData(i8** %22, %struct.TYPE_24__* %140, i32* %141, %struct.TYPE_27__* %20, i32 %144, i32 %147)
  store i32 %148, i32* %9, align 4
  %149 = load i32, i32* %9, align 4
  %150 = icmp sle i32 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %139
  %152 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = icmp sgt i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %151, %139
  %157 = load i32, i32* @TSDB_CODE_INVALID_SQL, align 4
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 1
  store i32 %157, i32* %160, align 8
  store i32 -1, i32* %3, align 4
  br label %244

161:                                              ; preds = %151
  %162 = load i32, i32* %9, align 4
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = add nsw i32 %165, %162
  store i32 %166, i32* %164, align 8
  %167 = load i32, i32* %19, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %19, align 4
  %169 = load i32, i32* %14, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %14, align 4
  %171 = load i32, i32* %19, align 4
  %172 = load i32, i32* %10, align 4
  %173 = icmp sge i32 %171, %172
  br i1 %173, label %174, label %210

174:                                              ; preds = %161
  %175 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %176 = load i32, i32* %19, align 4
  %177 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %178 = call i32 @doPackSendDataBlock(%struct.TYPE_25__* %175, i32 %176, %struct.TYPE_24__* %177)
  store i32 %178, i32* %13, align 4
  %179 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  %180 = icmp ne i32 %178, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %174
  %182 = load i32, i32* %13, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %3, align 4
  br label %244

184:                                              ; preds = %174
  %185 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %186 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %189, i64 0
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %190, align 8
  store %struct.TYPE_24__* %191, %struct.TYPE_24__** %18, align 8
  %192 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i32 0, i32 0
  store i32 4, i32* %193, align 8
  %194 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %195 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %198 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %197, i32 0, i32 3
  store i32 %196, i32* %198, align 8
  %199 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i32, i32* %12, align 4
  %204 = sext i32 %203 to i64
  %205 = add nsw i64 %204, %202
  %206 = trunc i64 %205 to i32
  store i32 %206, i32* %12, align 4
  %207 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %208, i32 0, i32 0
  store i64 0, i64* %209, align 8
  store i32 0, i32* %19, align 4
  br label %210

210:                                              ; preds = %184, %161
  br label %74

211:                                              ; preds = %74
  %212 = load i32, i32* %19, align 4
  %213 = icmp sgt i32 %212, 0
  br i1 %213, label %214, label %236

214:                                              ; preds = %211
  %215 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %216 = load i32, i32* %19, align 4
  %217 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %218 = call i32 @doPackSendDataBlock(%struct.TYPE_25__* %215, i32 %216, %struct.TYPE_24__* %217)
  store i32 %218, i32* %13, align 4
  %219 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  %220 = icmp ne i32 %218, %219
  br i1 %220, label %221, label %224

221:                                              ; preds = %214
  %222 = load i32, i32* %13, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %3, align 4
  br label %244

224:                                              ; preds = %214
  %225 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i32, i32* %12, align 4
  %230 = sext i32 %229 to i64
  %231 = add nsw i64 %230, %228
  %232 = trunc i64 %231 to i32
  store i32 %232, i32* %12, align 4
  %233 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %234, i32 0, i32 0
  store i64 0, i64* %235, align 8
  br label %236

236:                                              ; preds = %224, %211
  %237 = load i8*, i8** %7, align 8
  %238 = icmp ne i8* %237, null
  br i1 %238, label %239, label %242

239:                                              ; preds = %236
  %240 = load i8*, i8** %7, align 8
  %241 = call i32 @tfree(i8* %240)
  br label %242

242:                                              ; preds = %239, %236
  %243 = load i32, i32* %12, align 4
  store i32 %243, i32* %3, align 4
  br label %244

244:                                              ; preds = %242, %221, %181, %156, %132, %55
  %245 = load i32, i32* %3, align 4
  ret i32 %245
}

declare dso_local %struct.TYPE_28__* @tscGetMeterMetaInfo(%struct.TYPE_26__*, i32) #1

declare dso_local %struct.TYPE_22__* @tscCreateBlockArrayList(...) #1

declare dso_local %struct.TYPE_24__* @tscCreateDataBlockEx(i32, i32, i32, i32) #1

declare dso_local i32 @tscAppendDataBlock(%struct.TYPE_22__*, %struct.TYPE_24__*) #1

declare dso_local i32 @tscAllocateMemIfNeed(%struct.TYPE_24__*, i32) #1

declare dso_local i32* @tsGetSchema(%struct.TYPE_29__*) #1

declare dso_local i32 @tscSetAssignedColumnInfo(%struct.TYPE_27__*, i32*, i32) #1

declare dso_local i64 @getline(i8**, i64*, i32*) #1

declare dso_local i32 @strtolower(i8*, i8*) #1

declare dso_local i32 @tsParseOneRowData(i8**, %struct.TYPE_24__*, i32*, %struct.TYPE_27__*, i32, i32) #1

declare dso_local i32 @doPackSendDataBlock(%struct.TYPE_25__*, i32, %struct.TYPE_24__*) #1

declare dso_local i32 @tfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
