; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_thistogram.c_tHistogramAdd.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_thistogram.c_tHistogramAdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32 }
%struct.TYPE_30__ = type { i32, i64, i32, i32, i64, double, double, %struct.TYPE_33__*, %struct.TYPE_29__*, %struct.TYPE_32__* }
%struct.TYPE_33__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i64, %struct.TYPE_28__** }
%struct.TYPE_28__ = type { i64, %struct.TYPE_27__**, %struct.TYPE_28__**, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { double }
%struct.TYPE_29__ = type { i64, i64, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, %struct.TYPE_28__* }
%struct.TYPE_32__ = type { double, i32 }
%struct.TYPE_31__ = type { double, i32, i64, i64 }

@MAX_HISTOGRAM_BIN = common dso_local global i32 0, align 4
@TSDB_DATA_TYPE_DOUBLE = common dso_local global i64 0, align 8
@tDataTypeDesc = common dso_local global %struct.TYPE_25__* null, align 8
@DBL_MAX = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%f\09\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"delta is:%lf\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"disappear index is:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"delta is:%9lf\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tHistogramAdd(%struct.TYPE_30__** %0, double %1) #0 {
  %3 = alloca %struct.TYPE_30__**, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.TYPE_31__*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_29__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_31__*, align 8
  %14 = alloca %struct.TYPE_29__*, align 8
  %15 = alloca %struct.TYPE_29__*, align 8
  %16 = alloca %struct.TYPE_28__*, align 8
  %17 = alloca %struct.TYPE_28__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_31__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_28__*, align 8
  %23 = alloca %struct.TYPE_31__*, align 8
  %24 = alloca %struct.TYPE_28__*, align 8
  %25 = alloca %struct.TYPE_31__*, align 8
  %26 = alloca double, align 8
  %27 = alloca %struct.TYPE_31__*, align 8
  %28 = alloca %struct.TYPE_29__*, align 8
  %29 = alloca i64, align 8
  %30 = alloca %struct.TYPE_31__*, align 8
  %31 = alloca %struct.TYPE_31__*, align 8
  store %struct.TYPE_30__** %0, %struct.TYPE_30__*** %3, align 8
  store double %1, double* %4, align 8
  %32 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %3, align 8
  %33 = load %struct.TYPE_30__*, %struct.TYPE_30__** %32, align 8
  %34 = icmp eq %struct.TYPE_30__* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %2
  %36 = load i32, i32* @MAX_HISTOGRAM_BIN, align 4
  %37 = call %struct.TYPE_30__* @tHistogramCreate(i32 %36)
  %38 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %3, align 8
  store %struct.TYPE_30__* %37, %struct.TYPE_30__** %38, align 8
  br label %39

39:                                               ; preds = %35, %2
  %40 = load i64, i64* @TSDB_DATA_TYPE_DOUBLE, align 8
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** @tDataTypeDesc, align 8
  %42 = load i64, i64* @TSDB_DATA_TYPE_DOUBLE, align 8
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @tSkipListCreateKey(i64 %40, double* %4, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = call %struct.TYPE_31__* @calloc(i32 1, i32 32)
  store %struct.TYPE_31__* %47, %struct.TYPE_31__** %6, align 8
  %48 = load double, double* %4, align 8
  %49 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %49, i32 0, i32 0
  store double %48, double* %50, align 8
  %51 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %3, align 8
  %52 = load %struct.TYPE_30__*, %struct.TYPE_30__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %52, i32 0, i32 7
  %54 = load %struct.TYPE_33__*, %struct.TYPE_33__** %53, align 8
  %55 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %56 = call %struct.TYPE_28__* @tSkipListPut(%struct.TYPE_33__* %54, %struct.TYPE_31__* %55, i32* %5, i32 0)
  store %struct.TYPE_28__* %56, %struct.TYPE_28__** %7, align 8
  %57 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %60, %struct.TYPE_31__** %8, align 8
  %61 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %61, i32 0, i32 1
  store i32 -1, i32* %62, align 8
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %9, align 8
  %63 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %662

67:                                               ; preds = %39
  %68 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %3, align 8
  %69 = load %struct.TYPE_30__*, %struct.TYPE_30__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  %73 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %74, align 8
  %77 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %79, i64 0
  %81 = load %struct.TYPE_28__*, %struct.TYPE_28__** %80, align 8
  %82 = icmp ne %struct.TYPE_28__* %81, null
  br i1 %82, label %83, label %176

83:                                               ; preds = %67
  %84 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %86, i64 0
  %88 = load %struct.TYPE_28__*, %struct.TYPE_28__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to %struct.TYPE_31__*
  %92 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %91, i32 0, i32 0
  %93 = load double, double* %92, align 8
  %94 = load double, double* %4, align 8
  %95 = fsub double %93, %94
  %96 = fptoui double %95 to i64
  %97 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %97, i32 0, i32 3
  store i64 %96, i64* %98, align 8
  %99 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %3, align 8
  %100 = load %struct.TYPE_30__*, %struct.TYPE_30__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %175

104:                                              ; preds = %83
  %105 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %3, align 8
  %106 = load %struct.TYPE_30__*, %struct.TYPE_30__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %10, align 8
  %109 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %3, align 8
  %110 = load %struct.TYPE_30__*, %struct.TYPE_30__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %110, i32 0, i32 8
  %112 = load %struct.TYPE_29__*, %struct.TYPE_29__** %111, align 8
  store %struct.TYPE_29__* %112, %struct.TYPE_29__** %11, align 8
  %113 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %114 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %3, align 8
  %115 = load %struct.TYPE_30__*, %struct.TYPE_30__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %115, i32 0, i32 8
  %117 = load %struct.TYPE_29__*, %struct.TYPE_29__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %118, align 8
  %120 = load i64, i64* %10, align 8
  %121 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = add i64 %120, %123
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %125, i32 0, i32 1
  store %struct.TYPE_28__* %113, %struct.TYPE_28__** %126, align 8
  %127 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %3, align 8
  %128 = load %struct.TYPE_30__*, %struct.TYPE_30__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %128, i32 0, i32 8
  %130 = load %struct.TYPE_29__*, %struct.TYPE_29__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_26__*, %struct.TYPE_26__** %131, align 8
  %133 = load i64, i64* %10, align 8
  %134 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = add i64 %133, %136
  %138 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %132, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 8
  %143 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %3, align 8
  %144 = load %struct.TYPE_30__*, %struct.TYPE_30__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %159

148:                                              ; preds = %104
  %149 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %150 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = sext i32 %152 to i64
  %154 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = add i64 %153, %156
  %158 = call i32 @tLoserTreeAdjust(%struct.TYPE_29__* %149, i64 %157)
  br label %159

159:                                              ; preds = %148, %104
  %160 = load i64, i64* @TSDB_DATA_TYPE_DOUBLE, align 8
  %161 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %3, align 8
  %162 = load %struct.TYPE_30__*, %struct.TYPE_30__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %162, i32 0, i32 5
  %164 = load %struct.TYPE_25__*, %struct.TYPE_25__** @tDataTypeDesc, align 8
  %165 = load i64, i64* @TSDB_DATA_TYPE_DOUBLE, align 8
  %166 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %164, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @tSkipListCreateKey(i64 %160, double* %163, i32 %168)
  store i32 %169, i32* %12, align 4
  %170 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %3, align 8
  %171 = load %struct.TYPE_30__*, %struct.TYPE_30__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %171, i32 0, i32 7
  %173 = load %struct.TYPE_33__*, %struct.TYPE_33__** %172, align 8
  %174 = call %struct.TYPE_28__* @tSkipListGetOne(%struct.TYPE_33__* %173, i32* %12)
  store %struct.TYPE_28__* %174, %struct.TYPE_28__** %9, align 8
  br label %175

175:                                              ; preds = %159, %83
  br label %182

176:                                              ; preds = %67
  %177 = load i8*, i8** @DBL_MAX, align 8
  %178 = ptrtoint i8* %177 to i64
  %179 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %179, i32 0, i32 3
  store i64 %178, i64* %180, align 8
  %181 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  store %struct.TYPE_28__* %181, %struct.TYPE_28__** %9, align 8
  br label %182

182:                                              ; preds = %176, %175
  %183 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %185, i64 0
  %187 = load %struct.TYPE_27__*, %struct.TYPE_27__** %186, align 8
  %188 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %3, align 8
  %189 = load %struct.TYPE_30__*, %struct.TYPE_30__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %189, i32 0, i32 7
  %191 = load %struct.TYPE_33__*, %struct.TYPE_33__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %191, i32 0, i32 0
  %193 = icmp ne %struct.TYPE_27__* %187, %192
  br i1 %193, label %194, label %234

194:                                              ; preds = %182
  %195 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %197, i64 0
  %199 = load %struct.TYPE_27__*, %struct.TYPE_27__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = inttoptr i64 %201 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %202, %struct.TYPE_31__** %13, align 8
  %203 = load double, double* %4, align 8
  %204 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %205 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %204, i32 0, i32 0
  %206 = load double, double* %205, align 8
  %207 = fsub double %203, %206
  %208 = fptoui double %207 to i64
  %209 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %210 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %209, i32 0, i32 3
  store i64 %208, i64* %210, align 8
  %211 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %3, align 8
  %212 = load %struct.TYPE_30__*, %struct.TYPE_30__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %212, i32 0, i32 8
  %214 = load %struct.TYPE_29__*, %struct.TYPE_29__** %213, align 8
  store %struct.TYPE_29__* %214, %struct.TYPE_29__** %14, align 8
  %215 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %3, align 8
  %216 = load %struct.TYPE_30__*, %struct.TYPE_30__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %233

220:                                              ; preds = %194
  %221 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %222 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %223 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = sext i32 %224 to i64
  %226 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %227 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = add i64 %225, %228
  %230 = call i32 @tLoserTreeAdjust(%struct.TYPE_29__* %221, i64 %229)
  %231 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %232 = call i32 @tLoserTreeDisplay(%struct.TYPE_29__* %231)
  br label %233

233:                                              ; preds = %220, %194
  br label %234

234:                                              ; preds = %233, %182
  %235 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %3, align 8
  %236 = load %struct.TYPE_30__*, %struct.TYPE_30__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = sext i32 %238 to i64
  %240 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %3, align 8
  %241 = load %struct.TYPE_30__*, %struct.TYPE_30__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = add i64 %243, 1
  %245 = icmp uge i64 %239, %244
  br i1 %245, label %246, label %599

246:                                              ; preds = %234
  %247 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %3, align 8
  %248 = load %struct.TYPE_30__*, %struct.TYPE_30__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %248, i32 0, i32 8
  %250 = load %struct.TYPE_29__*, %struct.TYPE_29__** %249, align 8
  %251 = icmp ne %struct.TYPE_29__* %250, null
  %252 = zext i1 %251 to i32
  %253 = call i32 @assert(i32 %252)
  %254 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %3, align 8
  %255 = load %struct.TYPE_30__*, %struct.TYPE_30__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %392, label %259

259:                                              ; preds = %246
  %260 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %3, align 8
  %261 = load %struct.TYPE_30__*, %struct.TYPE_30__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %261, i32 0, i32 7
  %263 = load %struct.TYPE_33__*, %struct.TYPE_33__** %262, align 8
  %264 = call i32 @tSkipListPrint(%struct.TYPE_33__* %263, i32 1)
  %265 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %3, align 8
  %266 = load %struct.TYPE_30__*, %struct.TYPE_30__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %266, i32 0, i32 8
  %268 = load %struct.TYPE_29__*, %struct.TYPE_29__** %267, align 8
  store %struct.TYPE_29__* %268, %struct.TYPE_29__** %15, align 8
  %269 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %3, align 8
  %270 = load %struct.TYPE_30__*, %struct.TYPE_30__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %270, i32 0, i32 7
  %272 = load %struct.TYPE_33__*, %struct.TYPE_33__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %273, i32 0, i32 1
  %275 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %275, i64 0
  %277 = load %struct.TYPE_28__*, %struct.TYPE_28__** %276, align 8
  store %struct.TYPE_28__* %277, %struct.TYPE_28__** %16, align 8
  %278 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  store %struct.TYPE_28__* %278, %struct.TYPE_28__** %17, align 8
  %279 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %280

280:                                              ; preds = %283, %259
  %281 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %282 = icmp ne %struct.TYPE_28__* %281, null
  br i1 %282, label %283, label %296

283:                                              ; preds = %280
  %284 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %285 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = inttoptr i64 %286 to %struct.TYPE_31__*
  %288 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %287, i32 0, i32 3
  %289 = load i64, i64* %288, align 8
  %290 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %289)
  %291 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %292 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %291, i32 0, i32 2
  %293 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %293, i64 0
  %295 = load %struct.TYPE_28__*, %struct.TYPE_28__** %294, align 8
  store %struct.TYPE_28__* %295, %struct.TYPE_28__** %17, align 8
  br label %280

296:                                              ; preds = %280
  %297 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %298 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %299 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  store i64 %300, i64* %18, align 8
  br label %301

301:                                              ; preds = %345, %296
  %302 = load i64, i64* %18, align 8
  %303 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %304 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %303, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = icmp ult i64 %302, %305
  br i1 %306, label %307, label %348

307:                                              ; preds = %301
  %308 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %309 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %310 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %309, i32 0, i32 2
  %311 = load %struct.TYPE_26__*, %struct.TYPE_26__** %310, align 8
  %312 = load i64, i64* %18, align 8
  %313 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %311, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %313, i32 0, i32 1
  store %struct.TYPE_28__* %308, %struct.TYPE_28__** %314, align 8
  %315 = load i64, i64* %18, align 8
  %316 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %317 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = sub i64 %315, %318
  %320 = trunc i64 %319 to i32
  %321 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %322 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %321, i32 0, i32 2
  %323 = load %struct.TYPE_26__*, %struct.TYPE_26__** %322, align 8
  %324 = load i64, i64* %18, align 8
  %325 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %323, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %325, i32 0, i32 0
  store i32 %320, i32* %326, align 8
  %327 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %328 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = inttoptr i64 %329 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %330, %struct.TYPE_31__** %19, align 8
  %331 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %332 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %331, i32 0, i32 2
  %333 = load %struct.TYPE_26__*, %struct.TYPE_26__** %332, align 8
  %334 = load i64, i64* %18, align 8
  %335 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %333, i64 %334
  %336 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %339 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %338, i32 0, i32 1
  store i32 %337, i32* %339, align 8
  %340 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %341 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %340, i32 0, i32 2
  %342 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %342, i64 0
  %344 = load %struct.TYPE_28__*, %struct.TYPE_28__** %343, align 8
  store %struct.TYPE_28__* %344, %struct.TYPE_28__** %16, align 8
  br label %345

345:                                              ; preds = %307
  %346 = load i64, i64* %18, align 8
  %347 = add i64 %346, 1
  store i64 %347, i64* %18, align 8
  br label %301

348:                                              ; preds = %301
  %349 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  store %struct.TYPE_28__* %349, %struct.TYPE_28__** %9, align 8
  store i64 0, i64* %20, align 8
  br label %350

350:                                              ; preds = %363, %348
  %351 = load i64, i64* %20, align 8
  %352 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %353 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = icmp ult i64 %351, %354
  br i1 %355, label %356, label %366

356:                                              ; preds = %350
  %357 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %358 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %357, i32 0, i32 2
  %359 = load %struct.TYPE_26__*, %struct.TYPE_26__** %358, align 8
  %360 = load i64, i64* %20, align 8
  %361 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %359, i64 %360
  %362 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %361, i32 0, i32 0
  store i32 -1, i32* %362, align 8
  br label %363

363:                                              ; preds = %356
  %364 = load i64, i64* %20, align 8
  %365 = add i64 %364, 1
  store i64 %365, i64* %20, align 8
  br label %350

366:                                              ; preds = %350
  %367 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %368 = call i32 @tLoserTreeDisplay(%struct.TYPE_29__* %367)
  %369 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %370 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %369, i32 0, i32 1
  %371 = load i64, i64* %370, align 8
  %372 = sub i64 %371, 1
  store i64 %372, i64* %21, align 8
  br label %373

373:                                              ; preds = %383, %366
  %374 = load i64, i64* %21, align 8
  %375 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %376 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %375, i32 0, i32 0
  %377 = load i64, i64* %376, align 8
  %378 = icmp uge i64 %374, %377
  br i1 %378, label %379, label %386

379:                                              ; preds = %373
  %380 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %381 = load i64, i64* %21, align 8
  %382 = call i32 @tLoserTreeAdjust(%struct.TYPE_29__* %380, i64 %381)
  br label %383

383:                                              ; preds = %379
  %384 = load i64, i64* %21, align 8
  %385 = add i64 %384, -1
  store i64 %385, i64* %21, align 8
  br label %373

386:                                              ; preds = %373
  %387 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %388 = call i32 @tLoserTreeDisplay(%struct.TYPE_29__* %387)
  %389 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %3, align 8
  %390 = load %struct.TYPE_30__*, %struct.TYPE_30__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %390, i32 0, i32 3
  store i32 1, i32* %391, align 4
  br label %392

392:                                              ; preds = %386, %246
  %393 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %394 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %393, i32 0, i32 3
  %395 = load i64, i64* %394, align 8
  %396 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i64 %395)
  %397 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %3, align 8
  %398 = load %struct.TYPE_30__*, %struct.TYPE_30__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %398, i32 0, i32 7
  %400 = load %struct.TYPE_33__*, %struct.TYPE_33__** %399, align 8
  %401 = call i32 @tSkipListPrint(%struct.TYPE_33__* %400, i32 1)
  %402 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %3, align 8
  %403 = load %struct.TYPE_30__*, %struct.TYPE_30__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %403, i32 0, i32 8
  %405 = load %struct.TYPE_29__*, %struct.TYPE_29__** %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %405, i32 0, i32 2
  %407 = load %struct.TYPE_26__*, %struct.TYPE_26__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %407, i64 0
  %409 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %408, i32 0, i32 1
  %410 = load %struct.TYPE_28__*, %struct.TYPE_28__** %409, align 8
  store %struct.TYPE_28__* %410, %struct.TYPE_28__** %22, align 8
  %411 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %412 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %411, i32 0, i32 0
  %413 = load i64, i64* %412, align 8
  %414 = inttoptr i64 %413 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %414, %struct.TYPE_31__** %23, align 8
  %415 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %416 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %415, i32 0, i32 2
  %417 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %417, i64 0
  %419 = load %struct.TYPE_28__*, %struct.TYPE_28__** %418, align 8
  store %struct.TYPE_28__* %419, %struct.TYPE_28__** %24, align 8
  %420 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %421 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %420, i32 0, i32 0
  %422 = load i64, i64* %421, align 8
  %423 = inttoptr i64 %422 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %423, %struct.TYPE_31__** %25, align 8
  %424 = load %struct.TYPE_31__*, %struct.TYPE_31__** %25, align 8
  %425 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %424, i32 0, i32 0
  %426 = load double, double* %425, align 8
  %427 = load %struct.TYPE_31__*, %struct.TYPE_31__** %23, align 8
  %428 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %427, i32 0, i32 0
  %429 = load double, double* %428, align 8
  %430 = fsub double %426, %429
  %431 = load %struct.TYPE_31__*, %struct.TYPE_31__** %23, align 8
  %432 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %431, i32 0, i32 3
  %433 = load i64, i64* %432, align 8
  %434 = uitofp i64 %433 to double
  %435 = fcmp oeq double %430, %434
  %436 = zext i1 %435 to i32
  %437 = call i32 @assert(i32 %436)
  %438 = load %struct.TYPE_31__*, %struct.TYPE_31__** %23, align 8
  %439 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %438, i32 0, i32 0
  %440 = load double, double* %439, align 8
  %441 = load %struct.TYPE_31__*, %struct.TYPE_31__** %23, align 8
  %442 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %441, i32 0, i32 2
  %443 = load i64, i64* %442, align 8
  %444 = sitofp i64 %443 to double
  %445 = fmul double %440, %444
  %446 = load %struct.TYPE_31__*, %struct.TYPE_31__** %25, align 8
  %447 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %446, i32 0, i32 0
  %448 = load double, double* %447, align 8
  %449 = load %struct.TYPE_31__*, %struct.TYPE_31__** %25, align 8
  %450 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %449, i32 0, i32 2
  %451 = load i64, i64* %450, align 8
  %452 = sitofp i64 %451 to double
  %453 = fmul double %448, %452
  %454 = fadd double %445, %453
  %455 = load %struct.TYPE_31__*, %struct.TYPE_31__** %23, align 8
  %456 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %455, i32 0, i32 2
  %457 = load i64, i64* %456, align 8
  %458 = load %struct.TYPE_31__*, %struct.TYPE_31__** %25, align 8
  %459 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %458, i32 0, i32 2
  %460 = load i64, i64* %459, align 8
  %461 = add nsw i64 %457, %460
  %462 = sitofp i64 %461 to double
  %463 = fdiv double %454, %462
  store double %463, double* %26, align 8
  %464 = load double, double* %26, align 8
  %465 = load %struct.TYPE_31__*, %struct.TYPE_31__** %23, align 8
  %466 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %465, i32 0, i32 0
  store double %464, double* %466, align 8
  %467 = load double, double* %26, align 8
  %468 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %469 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %468, i32 0, i32 3
  %470 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %469, i32 0, i32 0
  store double %467, double* %470, align 8
  %471 = load %struct.TYPE_31__*, %struct.TYPE_31__** %23, align 8
  %472 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %471, i32 0, i32 2
  %473 = load i64, i64* %472, align 8
  %474 = load %struct.TYPE_31__*, %struct.TYPE_31__** %25, align 8
  %475 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %474, i32 0, i32 2
  %476 = load i64, i64* %475, align 8
  %477 = add nsw i64 %473, %476
  %478 = load %struct.TYPE_31__*, %struct.TYPE_31__** %23, align 8
  %479 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %478, i32 0, i32 2
  store i64 %477, i64* %479, align 8
  %480 = load %struct.TYPE_31__*, %struct.TYPE_31__** %25, align 8
  %481 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %480, i32 0, i32 3
  %482 = load i64, i64* %481, align 8
  %483 = uitofp i64 %482 to double
  %484 = load %struct.TYPE_31__*, %struct.TYPE_31__** %25, align 8
  %485 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %484, i32 0, i32 0
  %486 = load double, double* %485, align 8
  %487 = fadd double %483, %486
  %488 = load %struct.TYPE_31__*, %struct.TYPE_31__** %23, align 8
  %489 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %488, i32 0, i32 0
  %490 = load double, double* %489, align 8
  %491 = fsub double %487, %490
  %492 = fptoui double %491 to i64
  %493 = load %struct.TYPE_31__*, %struct.TYPE_31__** %23, align 8
  %494 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %493, i32 0, i32 3
  store i64 %492, i64* %494, align 8
  %495 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %496 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %495, i32 0, i32 1
  %497 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %496, align 8
  %498 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %497, i64 0
  %499 = load %struct.TYPE_27__*, %struct.TYPE_27__** %498, align 8
  %500 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %499, i32 0, i32 0
  %501 = load i64, i64* %500, align 8
  %502 = inttoptr i64 %501 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %502, %struct.TYPE_31__** %27, align 8
  %503 = load %struct.TYPE_31__*, %struct.TYPE_31__** %27, align 8
  %504 = icmp ne %struct.TYPE_31__* %503, null
  br i1 %504, label %505, label %516

505:                                              ; preds = %392
  %506 = load %struct.TYPE_31__*, %struct.TYPE_31__** %23, align 8
  %507 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %506, i32 0, i32 0
  %508 = load double, double* %507, align 8
  %509 = load %struct.TYPE_31__*, %struct.TYPE_31__** %27, align 8
  %510 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %509, i32 0, i32 0
  %511 = load double, double* %510, align 8
  %512 = fsub double %508, %511
  %513 = fptoui double %512 to i64
  %514 = load %struct.TYPE_31__*, %struct.TYPE_31__** %27, align 8
  %515 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %514, i32 0, i32 3
  store i64 %513, i64* %515, align 8
  br label %516

516:                                              ; preds = %505, %392
  %517 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %3, align 8
  %518 = load %struct.TYPE_30__*, %struct.TYPE_30__** %517, align 8
  %519 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %518, i32 0, i32 8
  %520 = load %struct.TYPE_29__*, %struct.TYPE_29__** %519, align 8
  store %struct.TYPE_29__* %520, %struct.TYPE_29__** %28, align 8
  %521 = load %struct.TYPE_31__*, %struct.TYPE_31__** %25, align 8
  %522 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %521, i32 0, i32 1
  %523 = load i32, i32* %522, align 8
  %524 = icmp ne i32 %523, -1
  br i1 %524, label %525, label %572

525:                                              ; preds = %516
  %526 = load %struct.TYPE_31__*, %struct.TYPE_31__** %25, align 8
  %527 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %526, i32 0, i32 1
  %528 = load i32, i32* %527, align 8
  %529 = sext i32 %528 to i64
  %530 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %3, align 8
  %531 = load %struct.TYPE_30__*, %struct.TYPE_30__** %530, align 8
  %532 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %531, i32 0, i32 4
  store i64 %529, i64* %532, align 8
  %533 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %534 = load %struct.TYPE_29__*, %struct.TYPE_29__** %28, align 8
  %535 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %534, i32 0, i32 2
  %536 = load %struct.TYPE_26__*, %struct.TYPE_26__** %535, align 8
  %537 = load %struct.TYPE_31__*, %struct.TYPE_31__** %25, align 8
  %538 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %537, i32 0, i32 1
  %539 = load i32, i32* %538, align 8
  %540 = sext i32 %539 to i64
  %541 = load %struct.TYPE_29__*, %struct.TYPE_29__** %28, align 8
  %542 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %541, i32 0, i32 0
  %543 = load i64, i64* %542, align 8
  %544 = add i64 %540, %543
  %545 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %536, i64 %544
  %546 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %545, i32 0, i32 1
  store %struct.TYPE_28__* %533, %struct.TYPE_28__** %546, align 8
  %547 = load %struct.TYPE_31__*, %struct.TYPE_31__** %25, align 8
  %548 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %547, i32 0, i32 1
  %549 = load i32, i32* %548, align 8
  %550 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %551 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %550, i32 0, i32 0
  %552 = load i64, i64* %551, align 8
  %553 = inttoptr i64 %552 to %struct.TYPE_31__*
  %554 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %553, i32 0, i32 1
  store i32 %549, i32* %554, align 8
  %555 = load %struct.TYPE_29__*, %struct.TYPE_29__** %28, align 8
  %556 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %555, i32 0, i32 2
  %557 = load %struct.TYPE_26__*, %struct.TYPE_26__** %556, align 8
  %558 = load %struct.TYPE_31__*, %struct.TYPE_31__** %25, align 8
  %559 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %558, i32 0, i32 1
  %560 = load i32, i32* %559, align 8
  %561 = sext i32 %560 to i64
  %562 = load %struct.TYPE_29__*, %struct.TYPE_29__** %28, align 8
  %563 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %562, i32 0, i32 0
  %564 = load i64, i64* %563, align 8
  %565 = add i64 %561, %564
  %566 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %557, i64 %565
  %567 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %566, i32 0, i32 0
  %568 = load i32, i32* %567, align 8
  %569 = sext i32 %568 to i64
  store i64 %569, i64* %29, align 8
  %570 = load i64, i64* %29, align 8
  %571 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %570)
  br label %572

572:                                              ; preds = %525, %516
  %573 = load %struct.TYPE_29__*, %struct.TYPE_29__** %28, align 8
  %574 = load %struct.TYPE_31__*, %struct.TYPE_31__** %23, align 8
  %575 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %574, i32 0, i32 1
  %576 = load i32, i32* %575, align 8
  %577 = sext i32 %576 to i64
  %578 = load %struct.TYPE_29__*, %struct.TYPE_29__** %28, align 8
  %579 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %578, i32 0, i32 0
  %580 = load i64, i64* %579, align 8
  %581 = add i64 %577, %580
  %582 = call i32 @tLoserTreeAdjust(%struct.TYPE_29__* %573, i64 %581)
  %583 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %3, align 8
  %584 = load %struct.TYPE_30__*, %struct.TYPE_30__** %583, align 8
  %585 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %584, i32 0, i32 7
  %586 = load %struct.TYPE_33__*, %struct.TYPE_33__** %585, align 8
  %587 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %588 = call i32 @tSkipListRemoveNode(%struct.TYPE_33__* %586, %struct.TYPE_28__* %587)
  %589 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %3, align 8
  %590 = load %struct.TYPE_30__*, %struct.TYPE_30__** %589, align 8
  %591 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %590, i32 0, i32 7
  %592 = load %struct.TYPE_33__*, %struct.TYPE_33__** %591, align 8
  %593 = call i32 @tSkipListPrint(%struct.TYPE_33__* %592, i32 1)
  %594 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %3, align 8
  %595 = load %struct.TYPE_30__*, %struct.TYPE_30__** %594, align 8
  %596 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %595, i32 0, i32 8
  %597 = load %struct.TYPE_29__*, %struct.TYPE_29__** %596, align 8
  %598 = call i32 @tLoserTreeDisplay(%struct.TYPE_29__* %597)
  br label %661

599:                                              ; preds = %234
  %600 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %601 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %600, i32 0, i32 2
  %602 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %601, align 8
  %603 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %602, i64 0
  %604 = load %struct.TYPE_28__*, %struct.TYPE_28__** %603, align 8
  %605 = icmp ne %struct.TYPE_28__* %604, null
  br i1 %605, label %606, label %622

606:                                              ; preds = %599
  %607 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %608 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %607, i32 0, i32 2
  %609 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %608, align 8
  %610 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %609, i64 0
  %611 = load %struct.TYPE_28__*, %struct.TYPE_28__** %610, align 8
  %612 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %611, i32 0, i32 0
  %613 = load i64, i64* %612, align 8
  %614 = inttoptr i64 %613 to %struct.TYPE_31__*
  %615 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %614, i32 0, i32 0
  %616 = load double, double* %615, align 8
  %617 = load double, double* %4, align 8
  %618 = fsub double %616, %617
  %619 = fptoui double %618 to i64
  %620 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %621 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %620, i32 0, i32 3
  store i64 %619, i64* %621, align 8
  br label %627

622:                                              ; preds = %599
  %623 = load i8*, i8** @DBL_MAX, align 8
  %624 = ptrtoint i8* %623 to i64
  %625 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %626 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %625, i32 0, i32 3
  store i64 %624, i64* %626, align 8
  br label %627

627:                                              ; preds = %622, %606
  %628 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %629 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %628, i32 0, i32 1
  %630 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %629, align 8
  %631 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %630, i64 0
  %632 = load %struct.TYPE_27__*, %struct.TYPE_27__** %631, align 8
  %633 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %3, align 8
  %634 = load %struct.TYPE_30__*, %struct.TYPE_30__** %633, align 8
  %635 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %634, i32 0, i32 7
  %636 = load %struct.TYPE_33__*, %struct.TYPE_33__** %635, align 8
  %637 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %636, i32 0, i32 0
  %638 = icmp ne %struct.TYPE_27__* %632, %637
  br i1 %638, label %639, label %656

639:                                              ; preds = %627
  %640 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %641 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %640, i32 0, i32 1
  %642 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %641, align 8
  %643 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %642, i64 0
  %644 = load %struct.TYPE_27__*, %struct.TYPE_27__** %643, align 8
  %645 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %644, i32 0, i32 0
  %646 = load i64, i64* %645, align 8
  %647 = inttoptr i64 %646 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %647, %struct.TYPE_31__** %30, align 8
  %648 = load double, double* %4, align 8
  %649 = load %struct.TYPE_31__*, %struct.TYPE_31__** %30, align 8
  %650 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %649, i32 0, i32 0
  %651 = load double, double* %650, align 8
  %652 = fsub double %648, %651
  %653 = fptoui double %652 to i64
  %654 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %655 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %654, i32 0, i32 3
  store i64 %653, i64* %655, align 8
  br label %656

656:                                              ; preds = %639, %627
  %657 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %658 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %657, i32 0, i32 3
  %659 = load i64, i64* %658, align 8
  %660 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i64 %659)
  br label %661

661:                                              ; preds = %656, %572
  br label %678

662:                                              ; preds = %39
  %663 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %664 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %663, i32 0, i32 0
  %665 = load i64, i64* %664, align 8
  %666 = inttoptr i64 %665 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %666, %struct.TYPE_31__** %31, align 8
  %667 = load %struct.TYPE_31__*, %struct.TYPE_31__** %31, align 8
  %668 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %667, i32 0, i32 0
  %669 = load double, double* %668, align 8
  %670 = load double, double* %4, align 8
  %671 = fcmp oeq double %669, %670
  %672 = zext i1 %671 to i32
  %673 = call i32 @assert(i32 %672)
  %674 = load %struct.TYPE_31__*, %struct.TYPE_31__** %31, align 8
  %675 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %674, i32 0, i32 2
  %676 = load i64, i64* %675, align 8
  %677 = add nsw i64 %676, 1
  store i64 %677, i64* %675, align 8
  br label %678

678:                                              ; preds = %662, %661
  %679 = load double, double* %4, align 8
  %680 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %3, align 8
  %681 = load %struct.TYPE_30__*, %struct.TYPE_30__** %680, align 8
  %682 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %681, i32 0, i32 5
  %683 = load double, double* %682, align 8
  %684 = fcmp ogt double %679, %683
  br i1 %684, label %685, label %690

685:                                              ; preds = %678
  %686 = load double, double* %4, align 8
  %687 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %3, align 8
  %688 = load %struct.TYPE_30__*, %struct.TYPE_30__** %687, align 8
  %689 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %688, i32 0, i32 5
  store double %686, double* %689, align 8
  br label %690

690:                                              ; preds = %685, %678
  %691 = load double, double* %4, align 8
  %692 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %3, align 8
  %693 = load %struct.TYPE_30__*, %struct.TYPE_30__** %692, align 8
  %694 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %693, i32 0, i32 6
  %695 = load double, double* %694, align 8
  %696 = fcmp olt double %691, %695
  br i1 %696, label %697, label %702

697:                                              ; preds = %690
  %698 = load double, double* %4, align 8
  %699 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %3, align 8
  %700 = load %struct.TYPE_30__*, %struct.TYPE_30__** %699, align 8
  %701 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %700, i32 0, i32 6
  store double %698, double* %701, align 8
  br label %702

702:                                              ; preds = %697, %690
  %703 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %3, align 8
  %704 = load %struct.TYPE_30__*, %struct.TYPE_30__** %703, align 8
  %705 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %704, i32 0, i32 2
  %706 = load i32, i32* %705, align 8
  %707 = add nsw i32 %706, 1
  store i32 %707, i32* %705, align 8
  ret i64 0
}

declare dso_local %struct.TYPE_30__* @tHistogramCreate(i32) #1

declare dso_local i32 @tSkipListCreateKey(i64, double*, i32) #1

declare dso_local %struct.TYPE_31__* @calloc(i32, i32) #1

declare dso_local %struct.TYPE_28__* @tSkipListPut(%struct.TYPE_33__*, %struct.TYPE_31__*, i32*, i32) #1

declare dso_local i32 @tLoserTreeAdjust(%struct.TYPE_29__*, i64) #1

declare dso_local %struct.TYPE_28__* @tSkipListGetOne(%struct.TYPE_33__*, i32*) #1

declare dso_local i32 @tLoserTreeDisplay(%struct.TYPE_29__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tSkipListPrint(%struct.TYPE_33__*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @tSkipListRemoveNode(%struct.TYPE_33__*, %struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
