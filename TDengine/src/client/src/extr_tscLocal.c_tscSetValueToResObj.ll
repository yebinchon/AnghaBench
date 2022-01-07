; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscLocal.c_tscSetValueToResObj.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscLocal.c_tscSetValueToResObj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_21__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_20__ = type { i8*, i64, i32 }
%struct.TYPE_17__ = type { i32 }

@TSDB_COL_NAME_LEN = common dso_local global i32 0, align 4
@tDataTypeDesc = common dso_local global %struct.TYPE_16__* null, align 8
@TSDB_NCHAR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@TSDB_DATA_NULL_STR = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i32)* @tscSetValueToResObj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tscSetValueToResObj(%struct.TYPE_19__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_17__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i32 %1, i32* %5, align 4
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 1
  store %struct.TYPE_18__* %25, %struct.TYPE_18__** %6, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  store i32* %27, i32** %7, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call %struct.TYPE_21__* @tscGetMeterMetaInfo(i32* %28, i32 0)
  store %struct.TYPE_21__* %29, %struct.TYPE_21__** %8, align 8
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  store %struct.TYPE_22__* %32, %struct.TYPE_22__** %9, align 8
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %36, %39
  store i32 %40, i32* %11, align 4
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %42 = call i64 @UTIL_METER_IS_METRIC(%struct.TYPE_21__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %2
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %47, %50
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %44, %2
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @tscInitResObjForLocalQuery(%struct.TYPE_19__* %53, i32 %54, i32 %55)
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %58 = call %struct.TYPE_20__* @tsGetSchema(%struct.TYPE_22__* %57)
  store %struct.TYPE_20__* %58, %struct.TYPE_20__** %12, align 8
  store i32 0, i32* %13, align 4
  br label %59

59:                                               ; preds = %194, %52
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %197

63:                                               ; preds = %59
  %64 = load i32*, i32** %7, align 8
  %65 = call %struct.TYPE_17__* @tscFieldInfoGetField(i32* %64, i32 0)
  store %struct.TYPE_17__* %65, %struct.TYPE_17__** %14, align 8
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @tscFieldInfoGetOffset(i32* %69, i32 0)
  %71 = load i32, i32* %11, align 4
  %72 = mul nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %68, i64 %73
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %13, align 4
  %79 = mul nsw i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %74, i64 %80
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load i32, i32* @TSDB_COL_NAME_LEN, align 4
  %89 = call i32 @strncpy(i8* %81, i8* %87, i32 %88)
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** @tDataTypeDesc, align 8
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  store i8* %99, i8** %15, align 8
  %100 = load i32*, i32** %7, align 8
  %101 = call %struct.TYPE_17__* @tscFieldInfoGetField(i32* %100, i32 1)
  store %struct.TYPE_17__* %101, %struct.TYPE_17__** %14, align 8
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load i32*, i32** %7, align 8
  %106 = call i32 @tscFieldInfoGetOffset(i32* %105, i32 1)
  %107 = load i32, i32* %11, align 4
  %108 = mul nsw i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %104, i64 %109
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %13, align 4
  %115 = mul nsw i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %110, i64 %116
  %118 = load i8*, i8** %15, align 8
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @strncpy(i8* %117, i8* %118, i32 %121)
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %124 = load i32, i32* %13, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  store i32 %128, i32* %16, align 4
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp eq i64 %134, 130
  br i1 %135, label %136, label %140

136:                                              ; preds = %63
  %137 = load i32, i32* %16, align 4
  %138 = load i32, i32* @TSDB_NCHAR_SIZE, align 4
  %139 = sdiv i32 %137, %138
  store i32 %139, i32* %16, align 4
  br label %140

140:                                              ; preds = %136, %63
  %141 = load i32*, i32** %7, align 8
  %142 = call %struct.TYPE_17__* @tscFieldInfoGetField(i32* %141, i32 2)
  store %struct.TYPE_17__* %142, %struct.TYPE_17__** %14, align 8
  %143 = load i32, i32* %16, align 4
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = load i32*, i32** %7, align 8
  %148 = call i32 @tscFieldInfoGetOffset(i32* %147, i32 2)
  %149 = load i32, i32* %11, align 4
  %150 = mul nsw i32 %148, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %146, i64 %151
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %13, align 4
  %157 = mul nsw i32 %155, %156
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %152, i64 %158
  %160 = bitcast i8* %159 to i32*
  store i32 %143, i32* %160, align 4
  %161 = load i32*, i32** %7, align 8
  %162 = call %struct.TYPE_17__* @tscFieldInfoGetField(i32* %161, i32 3)
  store %struct.TYPE_17__* %162, %struct.TYPE_17__** %14, align 8
  %163 = load i32, i32* %13, align 4
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = icmp sge i32 %163, %166
  br i1 %167, label %168, label %193

168:                                              ; preds = %140
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %193

173:                                              ; preds = %168
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = load i32*, i32** %7, align 8
  %178 = call i32 @tscFieldInfoGetOffset(i32* %177, i32 3)
  %179 = load i32, i32* %11, align 4
  %180 = mul nsw i32 %178, %179
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %176, i64 %181
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %13, align 4
  %187 = mul nsw i32 %185, %186
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %182, i64 %188
  %190 = call i32 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %191 = add nsw i32 %190, 1
  %192 = call i32 @strncpy(i8* %189, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %191)
  br label %193

193:                                              ; preds = %173, %168, %140
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %13, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %13, align 4
  br label %59

197:                                              ; preds = %59
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %199 = call i64 @UTIL_METER_IS_METRIC(%struct.TYPE_21__* %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %197
  store i32 0, i32* %3, align 4
  br label %430

202:                                              ; preds = %197
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %204 = call i8* @tsGetTagsValue(%struct.TYPE_22__* %203)
  store i8* %204, i8** %17, align 8
  %205 = load i32, i32* %10, align 4
  store i32 %205, i32* %18, align 4
  br label %206

206:                                              ; preds = %426, %202
  %207 = load i32, i32* %18, align 4
  %208 = load i32, i32* %11, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %429

210:                                              ; preds = %206
  %211 = load i32*, i32** %7, align 8
  %212 = call %struct.TYPE_17__* @tscFieldInfoGetField(i32* %211, i32 0)
  store %struct.TYPE_17__* %212, %struct.TYPE_17__** %19, align 8
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 0
  %215 = load i8*, i8** %214, align 8
  %216 = load i32*, i32** %7, align 8
  %217 = call i32 @tscFieldInfoGetOffset(i32* %216, i32 0)
  %218 = load i32, i32* %11, align 4
  %219 = mul nsw i32 %217, %218
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, i8* %215, i64 %220
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %18, align 4
  %226 = mul nsw i32 %224, %225
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8, i8* %221, i64 %227
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %230 = load i32, i32* %18, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %232, i32 0, i32 0
  %234 = load i8*, i8** %233, align 8
  %235 = load i32, i32* @TSDB_COL_NAME_LEN, align 4
  %236 = call i32 @strncpy(i8* %228, i8* %234, i32 %235)
  %237 = load i32*, i32** %7, align 8
  %238 = call %struct.TYPE_17__* @tscFieldInfoGetField(i32* %237, i32 1)
  store %struct.TYPE_17__* %238, %struct.TYPE_17__** %19, align 8
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** @tDataTypeDesc, align 8
  %240 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %241 = load i32, i32* %18, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i32 0, i32 0
  %248 = load i8*, i8** %247, align 8
  store i8* %248, i8** %20, align 8
  %249 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %249, i32 0, i32 0
  %251 = load i8*, i8** %250, align 8
  %252 = load i32*, i32** %7, align 8
  %253 = call i32 @tscFieldInfoGetOffset(i32* %252, i32 1)
  %254 = load i32, i32* %11, align 4
  %255 = mul nsw i32 %253, %254
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i8, i8* %251, i64 %256
  %258 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %259 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %18, align 4
  %262 = mul nsw i32 %260, %261
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8, i8* %257, i64 %263
  %265 = load i8*, i8** %20, align 8
  %266 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %267 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @strncpy(i8* %264, i8* %265, i32 %268)
  %270 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %271 = load i32, i32* %18, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  store i32 %275, i32* %21, align 4
  %276 = load i32*, i32** %7, align 8
  %277 = call %struct.TYPE_17__* @tscFieldInfoGetField(i32* %276, i32 2)
  store %struct.TYPE_17__* %277, %struct.TYPE_17__** %19, align 8
  %278 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %279 = load i32, i32* %18, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %281, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  %284 = icmp eq i64 %283, 130
  br i1 %284, label %285, label %289

285:                                              ; preds = %210
  %286 = load i32, i32* %21, align 4
  %287 = load i32, i32* @TSDB_NCHAR_SIZE, align 4
  %288 = sdiv i32 %286, %287
  store i32 %288, i32* %21, align 4
  br label %289

289:                                              ; preds = %285, %210
  %290 = load i32, i32* %21, align 4
  %291 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %291, i32 0, i32 0
  %293 = load i8*, i8** %292, align 8
  %294 = load i32*, i32** %7, align 8
  %295 = call i32 @tscFieldInfoGetOffset(i32* %294, i32 2)
  %296 = load i32, i32* %11, align 4
  %297 = mul nsw i32 %295, %296
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i8, i8* %293, i64 %298
  %300 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %301 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* %18, align 4
  %304 = mul nsw i32 %302, %303
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i8, i8* %299, i64 %305
  %307 = bitcast i8* %306 to i32*
  store i32 %290, i32* %307, align 4
  %308 = load i32*, i32** %7, align 8
  %309 = call %struct.TYPE_17__* @tscFieldInfoGetField(i32* %308, i32 3)
  store %struct.TYPE_17__* %309, %struct.TYPE_17__** %19, align 8
  %310 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %310, i32 0, i32 0
  %312 = load i8*, i8** %311, align 8
  %313 = load i32*, i32** %7, align 8
  %314 = call i32 @tscFieldInfoGetOffset(i32* %313, i32 3)
  %315 = load i32, i32* %11, align 4
  %316 = mul nsw i32 %314, %315
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i8, i8* %312, i64 %317
  %319 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %320 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* %18, align 4
  %323 = mul nsw i32 %321, %322
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i8, i8* %318, i64 %324
  store i8* %325, i8** %22, align 8
  %326 = load i8*, i8** %17, align 8
  %327 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %328 = load i32, i32* %18, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %327, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %330, i32 0, i32 1
  %332 = load i64, i64* %331, align 8
  %333 = trunc i64 %332 to i32
  %334 = call i64 @isNull(i8* %326, i32 %333)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %340

336:                                              ; preds = %289
  %337 = load i8*, i8** %22, align 8
  %338 = load i8*, i8** @TSDB_DATA_NULL_STR, align 8
  %339 = call i32 (i8*, i8*, ...) @sprintf(i8* %337, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %338)
  br label %416

340:                                              ; preds = %289
  %341 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %342 = load i32, i32* %18, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %341, i64 %343
  %345 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %344, i32 0, i32 1
  %346 = load i64, i64* %345, align 8
  switch i64 %346, label %414 [
    i64 135, label %347
    i64 130, label %357
    i64 132, label %367
    i64 133, label %374
    i64 128, label %380
    i64 129, label %386
    i64 131, label %392
    i64 136, label %398
    i64 134, label %404
  ]

347:                                              ; preds = %340
  %348 = load i8*, i8** %22, align 8
  %349 = load i8*, i8** %17, align 8
  %350 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %351 = load i32, i32* %18, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %350, i64 %352
  %354 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %353, i32 0, i32 2
  %355 = load i32, i32* %354, align 8
  %356 = call i32 @strncpy(i8* %348, i8* %349, i32 %355)
  br label %415

357:                                              ; preds = %340
  %358 = load i8*, i8** %17, align 8
  %359 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %360 = load i32, i32* %18, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %359, i64 %361
  %363 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %362, i32 0, i32 2
  %364 = load i32, i32* %363, align 8
  %365 = load i8*, i8** %22, align 8
  %366 = call i32 @taosUcs4ToMbs(i8* %358, i32 %364, i8* %365)
  br label %415

367:                                              ; preds = %340
  %368 = load i8*, i8** %22, align 8
  %369 = load i8*, i8** %17, align 8
  %370 = bitcast i8* %369 to float*
  %371 = load float, float* %370, align 4
  %372 = fpext float %371 to double
  %373 = call i32 (i8*, i8*, ...) @sprintf(i8* %368, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), double %372)
  br label %415

374:                                              ; preds = %340
  %375 = load i8*, i8** %22, align 8
  %376 = load i8*, i8** %17, align 8
  %377 = bitcast i8* %376 to double*
  %378 = load double, double* %377, align 8
  %379 = call i32 (i8*, i8*, ...) @sprintf(i8* %375, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %378)
  br label %415

380:                                              ; preds = %340
  %381 = load i8*, i8** %22, align 8
  %382 = load i8*, i8** %17, align 8
  %383 = bitcast i8* %382 to i32*
  %384 = load i32, i32* %383, align 4
  %385 = call i32 (i8*, i8*, ...) @sprintf(i8* %381, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %384)
  br label %415

386:                                              ; preds = %340
  %387 = load i8*, i8** %22, align 8
  %388 = load i8*, i8** %17, align 8
  %389 = bitcast i8* %388 to i32*
  %390 = load i32, i32* %389, align 4
  %391 = call i32 (i8*, i8*, ...) @sprintf(i8* %387, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %390)
  br label %415

392:                                              ; preds = %340
  %393 = load i8*, i8** %22, align 8
  %394 = load i8*, i8** %17, align 8
  %395 = bitcast i8* %394 to i32*
  %396 = load i32, i32* %395, align 4
  %397 = call i32 (i8*, i8*, ...) @sprintf(i8* %393, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %396)
  br label %415

398:                                              ; preds = %340
  %399 = load i8*, i8** %22, align 8
  %400 = load i8*, i8** %17, align 8
  %401 = bitcast i8* %400 to i8**
  %402 = load i8*, i8** %401, align 8
  %403 = call i32 (i8*, i8*, ...) @sprintf(i8* %399, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %402)
  br label %415

404:                                              ; preds = %340
  %405 = load i8*, i8** %17, align 8
  %406 = bitcast i8* %405 to i32*
  %407 = load i32, i32* %406, align 4
  %408 = icmp eq i32 %407, 0
  %409 = zext i1 %408 to i64
  %410 = select i1 %408, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  store i8* %410, i8** %23, align 8
  %411 = load i8*, i8** %22, align 8
  %412 = load i8*, i8** %23, align 8
  %413 = call i32 (i8*, i8*, ...) @sprintf(i8* %411, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %412)
  br label %415

414:                                              ; preds = %340
  br label %415

415:                                              ; preds = %414, %404, %398, %392, %386, %380, %374, %367, %357, %347
  br label %416

416:                                              ; preds = %415, %336
  %417 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %418 = load i32, i32* %18, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %417, i64 %419
  %421 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %420, i32 0, i32 2
  %422 = load i32, i32* %421, align 8
  %423 = load i8*, i8** %17, align 8
  %424 = sext i32 %422 to i64
  %425 = getelementptr inbounds i8, i8* %423, i64 %424
  store i8* %425, i8** %17, align 8
  br label %426

426:                                              ; preds = %416
  %427 = load i32, i32* %18, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %18, align 4
  br label %206

429:                                              ; preds = %206
  store i32 0, i32* %3, align 4
  br label %430

430:                                              ; preds = %429, %201
  %431 = load i32, i32* %3, align 4
  ret i32 %431
}

declare dso_local %struct.TYPE_21__* @tscGetMeterMetaInfo(i32*, i32) #1

declare dso_local i64 @UTIL_METER_IS_METRIC(%struct.TYPE_21__*) #1

declare dso_local i32 @tscInitResObjForLocalQuery(%struct.TYPE_19__*, i32, i32) #1

declare dso_local %struct.TYPE_20__* @tsGetSchema(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_17__* @tscFieldInfoGetField(i32*, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @tscFieldInfoGetOffset(i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @tsGetTagsValue(%struct.TYPE_22__*) #1

declare dso_local i64 @isNull(i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @taosUcs4ToMbs(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
