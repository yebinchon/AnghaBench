; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtDb.c_mgmtRetrieveDbs.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtDb.c_mgmtRetrieveDbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, i32*, i32, i8* }
%struct.TYPE_14__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { double, double, i64, %struct.TYPE_11__, i32, i32, i64 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, double, double, double, i64, i32, i32, i32, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { double }

@.str = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d,%d,%d\00", align 1
@TSDB_TIME_PRECISION_MILLI = common dso_local global i64 0, align 8
@TSDB_TIME_PRECISION_MILLI_STR = common dso_local global i8* null, align 8
@TSDB_TIME_PRECISION_MICRO_STR = common dso_local global i8* null, align 8
@TSDB_DB_STATUS_READY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"dropping\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"ready\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmtRetrieveDbs(%struct.TYPE_12__* %0, i8* %1, i32 %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %8, align 8
  store i32 0, i32* %9, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %10, align 8
  store i32 0, i32* %12, align 4
  br label %14

14:                                               ; preds = %575, %4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %618

18:                                               ; preds = %14
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 3
  %21 = load i8*, i8** %20, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %10, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %24 = icmp eq %struct.TYPE_13__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %618

26:                                               ; preds = %18
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 3
  store i8* %30, i8** %32, align 8
  store i32 0, i32* %12, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = mul nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %33, i64 %43
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %9, align 4
  %53 = mul nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %44, i64 %54
  store i8* %55, i8** %11, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @mgmtGetDbStr(i32 %59)
  %61 = call i32 @strcpy(i8* %56, i8* %60)
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %12, align 4
  %64 = load i8*, i8** %6, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %7, align 4
  %73 = mul nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %64, i64 %74
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %9, align 4
  %84 = mul nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %75, i64 %85
  store i8* %86, i8** %11, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = bitcast i8* %90 to i32*
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %12, align 4
  %94 = load i8*, i8** %6, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %7, align 4
  %103 = mul nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %94, i64 %104
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %9, align 4
  %114 = mul nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %105, i64 %115
  store i8* %116, i8** %11, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load double, double* %118, align 8
  %120 = load i8*, i8** %11, align 8
  %121 = bitcast i8* %120 to double*
  store double %119, double* %121, align 8
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %12, align 4
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @strcmp(i32 %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %162

131:                                              ; preds = %26
  %132 = load i8*, i8** %6, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %7, align 4
  %141 = mul nsw i32 %139, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %132, i64 %142
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %12, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %9, align 4
  %152 = mul nsw i32 %150, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %143, i64 %153
  store i8* %154, i8** %11, align 8
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 1
  %157 = load double, double* %156, align 8
  %158 = load i8*, i8** %11, align 8
  %159 = bitcast i8* %158 to double*
  store double %157, double* %159, align 8
  %160 = load i32, i32* %12, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %12, align 4
  br label %162

162:                                              ; preds = %131, %26
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i64 @strcmp(i32 %167, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %233

170:                                              ; preds = %162
  %171 = load i8*, i8** %6, align 8
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %12, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %7, align 4
  %180 = mul nsw i32 %178, %179
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %171, i64 %181
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %12, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %9, align 4
  %191 = mul nsw i32 %189, %190
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8, i8* %182, i64 %192
  store i8* %193, i8** %11, align 8
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 13
  %197 = load i32, i32* %196, align 4
  %198 = load i8*, i8** %11, align 8
  %199 = bitcast i8* %198 to i32*
  store i32 %197, i32* %199, align 4
  %200 = load i32, i32* %12, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %12, align 4
  %202 = load i8*, i8** %6, align 8
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %12, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %7, align 4
  %211 = mul nsw i32 %209, %210
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8, i8* %202, i64 %212
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 1
  %216 = load i32*, i32** %215, align 8
  %217 = load i32, i32* %12, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* %9, align 4
  %222 = mul nsw i32 %220, %221
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8, i8* %213, i64 %223
  store i8* %224, i8** %11, align 8
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 3
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 12
  %228 = load i32, i32* %227, align 8
  %229 = load i8*, i8** %11, align 8
  %230 = bitcast i8* %229 to i32*
  store i32 %228, i32* %230, align 4
  %231 = load i32, i32* %12, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %12, align 4
  br label %233

233:                                              ; preds = %170, %162
  %234 = load i8*, i8** %6, align 8
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 0
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %12, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* %7, align 4
  %243 = mul nsw i32 %241, %242
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8, i8* %234, i64 %244
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 1
  %248 = load i32*, i32** %247, align 8
  %249 = load i32, i32* %12, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* %9, align 4
  %254 = mul nsw i32 %252, %253
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i8, i8* %245, i64 %255
  store i8* %256, i8** %11, align 8
  %257 = load i8*, i8** %11, align 8
  %258 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 3
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 3
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 3
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @sprintf(i8* %257, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %261, i32 %265, i32 %269)
  %271 = load i32, i32* %12, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %12, align 4
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 0
  %275 = load %struct.TYPE_10__*, %struct.TYPE_10__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = call i64 @strcmp(i32 %277, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %280, label %541

280:                                              ; preds = %233
  %281 = load i8*, i8** %6, align 8
  %282 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %282, i32 0, i32 0
  %284 = load i32*, i32** %283, align 8
  %285 = load i32, i32* %12, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %284, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* %7, align 4
  %290 = mul nsw i32 %288, %289
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i8, i8* %281, i64 %291
  %293 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 1
  %295 = load i32*, i32** %294, align 8
  %296 = load i32, i32* %12, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* %9, align 4
  %301 = mul nsw i32 %299, %300
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i8, i8* %292, i64 %302
  store i8* %303, i8** %11, align 8
  %304 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %305 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %304, i32 0, i32 3
  %306 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %305, i32 0, i32 3
  %307 = load i32, i32* %306, align 4
  %308 = sub nsw i32 %307, 1
  %309 = sitofp i32 %308 to double
  %310 = load i8*, i8** %11, align 8
  %311 = bitcast i8* %310 to double*
  store double %309, double* %311, align 8
  %312 = load i32, i32* %12, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %12, align 4
  %314 = load i8*, i8** %6, align 8
  %315 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %315, i32 0, i32 0
  %317 = load i32*, i32** %316, align 8
  %318 = load i32, i32* %12, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %317, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* %7, align 4
  %323 = mul nsw i32 %321, %322
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i8, i8* %314, i64 %324
  %326 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %327 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %326, i32 0, i32 1
  %328 = load i32*, i32** %327, align 8
  %329 = load i32, i32* %12, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %328, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = load i32, i32* %9, align 4
  %334 = mul nsw i32 %332, %333
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i8, i8* %325, i64 %335
  store i8* %336, i8** %11, align 8
  %337 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %338 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %337, i32 0, i32 3
  %339 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %338, i32 0, i32 4
  %340 = load double, double* %339, align 8
  %341 = load i8*, i8** %11, align 8
  %342 = bitcast i8* %341 to double*
  store double %340, double* %342, align 8
  %343 = load i32, i32* %12, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %12, align 4
  %345 = load i8*, i8** %6, align 8
  %346 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %346, i32 0, i32 0
  %348 = load i32*, i32** %347, align 8
  %349 = load i32, i32* %12, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %348, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* %7, align 4
  %354 = mul nsw i32 %352, %353
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i8, i8* %345, i64 %355
  %357 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %358 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %357, i32 0, i32 1
  %359 = load i32*, i32** %358, align 8
  %360 = load i32, i32* %12, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %359, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = load i32, i32* %9, align 4
  %365 = mul nsw i32 %363, %364
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i8, i8* %356, i64 %366
  store i8* %367, i8** %11, align 8
  %368 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %369 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %368, i32 0, i32 3
  %370 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %369, i32 0, i32 5
  %371 = load double, double* %370, align 8
  %372 = load i8*, i8** %11, align 8
  %373 = bitcast i8* %372 to double*
  store double %371, double* %373, align 8
  %374 = load i32, i32* %12, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %12, align 4
  %376 = load i8*, i8** %6, align 8
  %377 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %378 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %377, i32 0, i32 0
  %379 = load i32*, i32** %378, align 8
  %380 = load i32, i32* %12, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %379, i64 %381
  %383 = load i32, i32* %382, align 4
  %384 = load i32, i32* %7, align 4
  %385 = mul nsw i32 %383, %384
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i8, i8* %376, i64 %386
  %388 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %389 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %388, i32 0, i32 1
  %390 = load i32*, i32** %389, align 8
  %391 = load i32, i32* %12, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %390, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = load i32, i32* %9, align 4
  %396 = mul nsw i32 %394, %395
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i8, i8* %387, i64 %397
  store i8* %398, i8** %11, align 8
  %399 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %400 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %399, i32 0, i32 3
  %401 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %400, i32 0, i32 11
  %402 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %401, i32 0, i32 0
  %403 = load double, double* %402, align 8
  %404 = fmul double %403, 1.000000e+00
  %405 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %406 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %405, i32 0, i32 3
  %407 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %406, i32 0, i32 3
  %408 = load i32, i32* %407, align 4
  %409 = sub nsw i32 %408, 1
  %410 = sitofp i32 %409 to double
  %411 = fdiv double %404, %410
  %412 = fptrunc double %411 to float
  %413 = load i8*, i8** %11, align 8
  %414 = bitcast i8* %413 to float*
  store float %412, float* %414, align 4
  %415 = load i32, i32* %12, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %12, align 4
  %417 = load i8*, i8** %6, align 8
  %418 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %419 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %418, i32 0, i32 0
  %420 = load i32*, i32** %419, align 8
  %421 = load i32, i32* %12, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i32, i32* %420, i64 %422
  %424 = load i32, i32* %423, align 4
  %425 = load i32, i32* %7, align 4
  %426 = mul nsw i32 %424, %425
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i8, i8* %417, i64 %427
  %429 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %430 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %429, i32 0, i32 1
  %431 = load i32*, i32** %430, align 8
  %432 = load i32, i32* %12, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i32, i32* %431, i64 %433
  %435 = load i32, i32* %434, align 4
  %436 = load i32, i32* %9, align 4
  %437 = mul nsw i32 %435, %436
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i8, i8* %428, i64 %438
  store i8* %439, i8** %11, align 8
  %440 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %441 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %440, i32 0, i32 3
  %442 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %441, i32 0, i32 10
  %443 = load i32, i32* %442, align 8
  %444 = load i8*, i8** %11, align 8
  %445 = bitcast i8* %444 to i32*
  store i32 %443, i32* %445, align 4
  %446 = load i32, i32* %12, align 4
  %447 = add nsw i32 %446, 1
  store i32 %447, i32* %12, align 4
  %448 = load i8*, i8** %6, align 8
  %449 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %450 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %449, i32 0, i32 0
  %451 = load i32*, i32** %450, align 8
  %452 = load i32, i32* %12, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i32, i32* %451, i64 %453
  %455 = load i32, i32* %454, align 4
  %456 = load i32, i32* %7, align 4
  %457 = mul nsw i32 %455, %456
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i8, i8* %448, i64 %458
  %460 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %461 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %460, i32 0, i32 1
  %462 = load i32*, i32** %461, align 8
  %463 = load i32, i32* %12, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds i32, i32* %462, i64 %464
  %466 = load i32, i32* %465, align 4
  %467 = load i32, i32* %9, align 4
  %468 = mul nsw i32 %466, %467
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds i8, i8* %459, i64 %469
  store i8* %470, i8** %11, align 8
  %471 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %472 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %471, i32 0, i32 3
  %473 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %472, i32 0, i32 6
  %474 = load double, double* %473, align 8
  %475 = load i8*, i8** %11, align 8
  %476 = bitcast i8* %475 to double*
  store double %474, double* %476, align 8
  %477 = load i32, i32* %12, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %12, align 4
  %479 = load i8*, i8** %6, align 8
  %480 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %481 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %480, i32 0, i32 0
  %482 = load i32*, i32** %481, align 8
  %483 = load i32, i32* %12, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds i32, i32* %482, i64 %484
  %486 = load i32, i32* %485, align 4
  %487 = load i32, i32* %7, align 4
  %488 = mul nsw i32 %486, %487
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds i8, i8* %479, i64 %489
  %491 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %492 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %491, i32 0, i32 1
  %493 = load i32*, i32** %492, align 8
  %494 = load i32, i32* %12, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds i32, i32* %493, i64 %495
  %497 = load i32, i32* %496, align 4
  %498 = load i32, i32* %9, align 4
  %499 = mul nsw i32 %497, %498
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds i8, i8* %490, i64 %500
  store i8* %501, i8** %11, align 8
  %502 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %503 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %502, i32 0, i32 3
  %504 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %503, i32 0, i32 9
  %505 = load i32, i32* %504, align 4
  %506 = load i8*, i8** %11, align 8
  %507 = bitcast i8* %506 to i32*
  store i32 %505, i32* %507, align 4
  %508 = load i32, i32* %12, align 4
  %509 = add nsw i32 %508, 1
  store i32 %509, i32* %12, align 4
  %510 = load i8*, i8** %6, align 8
  %511 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %512 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %511, i32 0, i32 0
  %513 = load i32*, i32** %512, align 8
  %514 = load i32, i32* %12, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds i32, i32* %513, i64 %515
  %517 = load i32, i32* %516, align 4
  %518 = load i32, i32* %7, align 4
  %519 = mul nsw i32 %517, %518
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds i8, i8* %510, i64 %520
  %522 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %523 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %522, i32 0, i32 1
  %524 = load i32*, i32** %523, align 8
  %525 = load i32, i32* %12, align 4
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds i32, i32* %524, i64 %526
  %528 = load i32, i32* %527, align 4
  %529 = load i32, i32* %9, align 4
  %530 = mul nsw i32 %528, %529
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds i8, i8* %521, i64 %531
  store i8* %532, i8** %11, align 8
  %533 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %534 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %533, i32 0, i32 3
  %535 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %534, i32 0, i32 8
  %536 = load i32, i32* %535, align 8
  %537 = load i8*, i8** %11, align 8
  %538 = bitcast i8* %537 to i32*
  store i32 %536, i32* %538, align 4
  %539 = load i32, i32* %12, align 4
  %540 = add nsw i32 %539, 1
  store i32 %540, i32* %12, align 4
  br label %541

541:                                              ; preds = %280, %233
  %542 = load i8*, i8** %6, align 8
  %543 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %544 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %543, i32 0, i32 0
  %545 = load i32*, i32** %544, align 8
  %546 = load i32, i32* %12, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds i32, i32* %545, i64 %547
  %549 = load i32, i32* %548, align 4
  %550 = load i32, i32* %7, align 4
  %551 = mul nsw i32 %549, %550
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds i8, i8* %542, i64 %552
  %554 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %555 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %554, i32 0, i32 1
  %556 = load i32*, i32** %555, align 8
  %557 = load i32, i32* %12, align 4
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds i32, i32* %556, i64 %558
  %560 = load i32, i32* %559, align 4
  %561 = load i32, i32* %9, align 4
  %562 = mul nsw i32 %560, %561
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds i8, i8* %553, i64 %563
  store i8* %564, i8** %11, align 8
  %565 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %566 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %565, i32 0, i32 3
  %567 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %566, i32 0, i32 7
  %568 = load i64, i64* %567, align 8
  %569 = load i64, i64* @TSDB_TIME_PRECISION_MILLI, align 8
  %570 = icmp eq i64 %568, %569
  br i1 %570, label %571, label %573

571:                                              ; preds = %541
  %572 = load i8*, i8** @TSDB_TIME_PRECISION_MILLI_STR, align 8
  br label %575

573:                                              ; preds = %541
  %574 = load i8*, i8** @TSDB_TIME_PRECISION_MICRO_STR, align 8
  br label %575

575:                                              ; preds = %573, %571
  %576 = phi i8* [ %572, %571 ], [ %574, %573 ]
  store i8* %576, i8** %13, align 8
  %577 = load i8*, i8** %11, align 8
  %578 = load i8*, i8** %13, align 8
  %579 = call i32 @strcpy(i8* %577, i8* %578)
  %580 = load i32, i32* %12, align 4
  %581 = add nsw i32 %580, 1
  store i32 %581, i32* %12, align 4
  %582 = load i8*, i8** %6, align 8
  %583 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %584 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %583, i32 0, i32 0
  %585 = load i32*, i32** %584, align 8
  %586 = load i32, i32* %12, align 4
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds i32, i32* %585, i64 %587
  %589 = load i32, i32* %588, align 4
  %590 = load i32, i32* %7, align 4
  %591 = mul nsw i32 %589, %590
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds i8, i8* %582, i64 %592
  %594 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %595 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %594, i32 0, i32 1
  %596 = load i32*, i32** %595, align 8
  %597 = load i32, i32* %12, align 4
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds i32, i32* %596, i64 %598
  %600 = load i32, i32* %599, align 4
  %601 = load i32, i32* %9, align 4
  %602 = mul nsw i32 %600, %601
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds i8, i8* %593, i64 %603
  store i8* %604, i8** %11, align 8
  %605 = load i8*, i8** %11, align 8
  %606 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %607 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %606, i32 0, i32 2
  %608 = load i64, i64* %607, align 8
  %609 = load i64, i64* @TSDB_DB_STATUS_READY, align 8
  %610 = icmp ne i64 %608, %609
  %611 = zext i1 %610 to i64
  %612 = select i1 %610, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %613 = call i32 @strcpy(i8* %605, i8* %612)
  %614 = load i32, i32* %12, align 4
  %615 = add nsw i32 %614, 1
  store i32 %615, i32* %12, align 4
  %616 = load i32, i32* %9, align 4
  %617 = add nsw i32 %616, 1
  store i32 %617, i32* %9, align 4
  br label %14

618:                                              ; preds = %25, %14
  %619 = load i32, i32* %9, align 4
  %620 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %621 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %620, i32 0, i32 2
  %622 = load i32, i32* %621, align 8
  %623 = add nsw i32 %622, %619
  store i32 %623, i32* %621, align 8
  %624 = load i32, i32* %9, align 4
  ret i32 %624
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @mgmtGetDbStr(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
