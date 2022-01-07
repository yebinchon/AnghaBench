; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtMeter.c_mgmtMeterAddColumn.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtMeter.c_mgmtMeterAddColumn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32, i32, i32, i64, i64, %struct.TYPE_17__*, %struct.TYPE_17__*, i64, i64, i32 }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }

@TSDB_METER_MTABLE = common dso_local global i64 0, align 8
@TSDB_METER_STABLE = common dso_local global i64 0, align 8
@TSDB_CODE_APP_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"meter: %s not belongs to any database\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"DB: %s not belongs to andy account\00", align 1
@TSDB_METER_OTABLE = common dso_local global i64 0, align 8
@TSDB_METER_METRIC = common dso_local global i64 0, align 8
@meterSdb = common dso_local global i32 0, align 4
@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmtMeterAddColumn(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %8, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %9, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %15 = icmp eq %struct.TYPE_17__* %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %3
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TSDB_METER_MTABLE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %31, label %22

22:                                               ; preds = %16
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TSDB_METER_STABLE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28, %22, %16, %3
  %32 = load i32, i32* @TSDB_CODE_APP_ERROR, align 4
  store i32 %32, i32* %4, align 4
  br label %271

33:                                               ; preds = %28
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %51, %33
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %34
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @mgmtFindColumnIndex(%struct.TYPE_17__* %39, i32 %45)
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i32, i32* @TSDB_CODE_APP_ERROR, align 4
  store i32 %49, i32* %4, align 4
  br label %271

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %34

54:                                               ; preds = %34
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 10
  %57 = load i32, i32* %56, align 8
  %58 = call %struct.TYPE_19__* @mgmtGetDbByMeterId(i32 %57)
  store %struct.TYPE_19__* %58, %struct.TYPE_19__** %9, align 8
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %60 = icmp eq %struct.TYPE_19__* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 10
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @mError(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @TSDB_CODE_APP_ERROR, align 4
  store i32 %66, i32* %4, align 4
  br label %271

67:                                               ; preds = %54
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call %struct.TYPE_20__* @mgmtGetAcct(i32 %71)
  store %struct.TYPE_20__* %72, %struct.TYPE_20__** %8, align 8
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %74 = icmp eq %struct.TYPE_20__* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %67
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @mError(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @TSDB_CODE_APP_ERROR, align 4
  store i32 %80, i32* %4, align 4
  br label %271

81:                                               ; preds = %67
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 9
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 8
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 16, %89
  %91 = add i64 %87, %90
  %92 = call i64 @realloc(i64 %84, i64 %91)
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 9
  store i64 %92, i64* %94, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @TSDB_METER_OTABLE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %114

100:                                              ; preds = %81
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 9
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 8
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %103, %106
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = mul i64 16, %110
  %112 = trunc i64 %111 to i32
  %113 = call i32 @memcpy(i64 %107, %struct.TYPE_18__* %108, i32 %112)
  br label %164

114:                                              ; preds = %81
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @TSDB_METER_METRIC, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %163

120:                                              ; preds = %114
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 9
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %126, %127
  %129 = sext i32 %128 to i64
  %130 = mul i64 16, %129
  %131 = add i64 %123, %130
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 9
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = mul i64 16, %138
  %140 = add i64 %134, %139
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = mul i64 16, %144
  %146 = trunc i64 %145 to i32
  %147 = call i32 @memmove(i64 %131, i64 %140, i32 %146)
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 9
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = mul i64 16, %154
  %156 = add i64 %150, %155
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = mul i64 16, %159
  %161 = trunc i64 %160 to i32
  %162 = call i32 @memcpy(i64 %156, %struct.TYPE_18__* %157, i32 %161)
  br label %163

163:                                              ; preds = %120, %114
  br label %164

164:                                              ; preds = %163, %100
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 9
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = sext i32 %170 to i64
  %172 = mul i64 16, %171
  %173 = add i64 %167, %172
  %174 = inttoptr i64 %173 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %174, %struct.TYPE_18__** %11, align 8
  store i32 0, i32* %12, align 4
  br label %175

175:                                              ; preds = %189, %164
  %176 = load i32, i32* %12, align 4
  %177 = load i32, i32* %7, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %192

179:                                              ; preds = %175
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 5
  %182 = load i64, i64* %181, align 8
  %183 = add nsw i64 %182, 1
  store i64 %183, i64* %181, align 8
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %185 = load i32, i32* %12, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 0
  store i64 %182, i64* %188, align 8
  br label %189

189:                                              ; preds = %179
  %190 = load i32, i32* %12, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %12, align 4
  br label %175

192:                                              ; preds = %175
  %193 = load i32, i32* %7, align 4
  %194 = sext i32 %193 to i64
  %195 = mul i64 16, %194
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 8
  %198 = load i64, i64* %197, align 8
  %199 = add i64 %198, %195
  store i64 %199, i64* %197, align 8
  %200 = load i32, i32* %7, align 4
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = add nsw i32 %203, %200
  store i32 %204, i32* %202, align 8
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 4
  %207 = load i64, i64* %206, align 8
  %208 = add nsw i64 %207, 1
  store i64 %208, i64* %206, align 8
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %210 = call i64 @mgmtIsNormalMeter(%struct.TYPE_17__* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %192
  %213 = load i32, i32* %7, align 4
  %214 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = add nsw i32 %217, %213
  store i32 %218, i32* %216, align 4
  br label %230

219:                                              ; preds = %192
  %220 = load i32, i32* %7, align 4
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 8
  %224 = mul nsw i32 %220, %223
  %225 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = add nsw i32 %228, %224
  store i32 %229, i32* %227, align 4
  br label %230

230:                                              ; preds = %219, %212
  %231 = load i32, i32* @meterSdb, align 4
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %233 = call i32 @sdbUpdateRow(i32 %231, %struct.TYPE_17__* %232, i32 0, i32 1)
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @TSDB_METER_METRIC, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %269

239:                                              ; preds = %230
  %240 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %240, i32 0, i32 7
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %241, align 8
  store %struct.TYPE_17__* %242, %struct.TYPE_17__** %13, align 8
  br label %243

243:                                              ; preds = %264, %239
  %244 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %245 = icmp ne %struct.TYPE_17__* %244, null
  br i1 %245, label %246, label %268

246:                                              ; preds = %243
  %247 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %248 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %248, align 8
  %251 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %251, i32 0, i32 5
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %255 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %254, i32 0, i32 5
  store i64 %253, i64* %255, align 8
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 4
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %260 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %259, i32 0, i32 4
  store i64 %258, i64* %260, align 8
  %261 = load i32, i32* @meterSdb, align 4
  %262 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %263 = call i32 @sdbUpdateRow(i32 %261, %struct.TYPE_17__* %262, i32 0, i32 1)
  br label %264

264:                                              ; preds = %246
  %265 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %266 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %265, i32 0, i32 6
  %267 = load %struct.TYPE_17__*, %struct.TYPE_17__** %266, align 8
  store %struct.TYPE_17__* %267, %struct.TYPE_17__** %13, align 8
  br label %243

268:                                              ; preds = %243
  br label %269

269:                                              ; preds = %268, %230
  %270 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %270, i32* %4, align 4
  br label %271

271:                                              ; preds = %269, %75, %61, %48, %31
  %272 = load i32, i32* %4, align 4
  ret i32 %272
}

declare dso_local i64 @mgmtFindColumnIndex(%struct.TYPE_17__*, i32) #1

declare dso_local %struct.TYPE_19__* @mgmtGetDbByMeterId(i32) #1

declare dso_local i32 @mError(i8*, i32) #1

declare dso_local %struct.TYPE_20__* @mgmtGetAcct(i32) #1

declare dso_local i64 @realloc(i64, i64) #1

declare dso_local i32 @memcpy(i64, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

declare dso_local i64 @mgmtIsNormalMeter(%struct.TYPE_17__*) #1

declare dso_local i32 @sdbUpdateRow(i32, %struct.TYPE_17__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
