; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_interp_function.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_interp_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8*, i64, i64, i8, %struct.TYPE_18__*, i32, i32 }
%struct.TYPE_18__ = type { i32, i8* }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i32, i32 }
%struct.TYPE_15__ = type { i8*, i32 }

@TSDB_INTERPO_NONE = common dso_local global i64 0, align 8
@TSDB_INTERPO_NULL = common dso_local global i64 0, align 8
@TSDB_INTERPO_SET_VALUE = common dso_local global i64 0, align 8
@TSDB_INTERPO_PREV = common dso_local global i64 0, align 8
@TSDB_KEYSIZE = common dso_local global i32 0, align 4
@TSDB_DATA_TYPE_FLOAT = common dso_local global i64 0, align 8
@TSDB_INTERPO_LINEAR = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_TINYINT = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_BIGINT = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_TIMESTAMP = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_DOUBLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @interp_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @interp_function(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_17__, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca float, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_15__, align 8
  %14 = alloca %struct.TYPE_15__, align 8
  %15 = alloca %struct.TYPE_15__, align 8
  %16 = alloca i64, align 8
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i64 3
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %40

26:                                               ; preds = %1
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %28 = call i8* @GET_INPUT_CHAR(%struct.TYPE_14__* %27)
  store i8* %28, i8** %3, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 (i8*, ...) @assignVal(i8* %31, i8* %32, i32 %35, i64 %38)
  br label %326

40:                                               ; preds = %1
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i64 3
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 2
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = bitcast i8* %52 to %struct.TYPE_17__*
  %54 = bitcast %struct.TYPE_17__* %4 to i8*
  %55 = bitcast %struct.TYPE_17__* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 %55, i64 8, i1 false)
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 0
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %56, align 8
  store %struct.TYPE_16__* %57, %struct.TYPE_16__** %5, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @TSDB_INTERPO_NONE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %40
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 4
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i64 3
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  store i32 0, i32* %68, align 8
  br label %322

69:                                               ; preds = %40
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = bitcast i8* %80 to i32*
  store i32 %77, i32* %81, align 4
  br label %321

82:                                               ; preds = %69
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @TSDB_INTERPO_NULL, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %82
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @setNull(i8* %91, i64 %94, i32 %97)
  br label %320

99:                                               ; preds = %82
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @TSDB_INTERPO_SET_VALUE, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %117

105:                                              ; preds = %99
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 4
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i64 1
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @tVariantDump(%struct.TYPE_18__* %109, i8* %112, i64 %115)
  br label %319

117:                                              ; preds = %99
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @TSDB_INTERPO_PREV, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %165

123:                                              ; preds = %117
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 4
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i64 1
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  store i8* %129, i8** %6, align 8
  %130 = load i8*, i8** %6, align 8
  %131 = load i32, i32* @TSDB_KEYSIZE, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  store i8* %133, i8** %7, align 8
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @TSDB_DATA_TYPE_FLOAT, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %152

139:                                              ; preds = %123
  %140 = load i8*, i8** %7, align 8
  %141 = call float @GET_DOUBLE_VAL(i8* %140)
  store float %141, float* %8, align 4
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = call i32 (i8*, ...) @assignVal(i8* %144, float* %8, i32 %147, i64 %150)
  br label %164

152:                                              ; preds = %123
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = load i8*, i8** %7, align 8
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 6
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = call i32 (i8*, ...) @assignVal(i8* %155, i8* %156, i32 %159, i64 %162)
  br label %164

164:                                              ; preds = %152, %139
  br label %318

165:                                              ; preds = %117
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @TSDB_INTERPO_LINEAR, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %317

171:                                              ; preds = %165
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 4
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i64 1
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 1
  %177 = load i8*, i8** %176, align 8
  store i8* %177, i8** %9, align 8
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 4
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i64 2
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 1
  %183 = load i8*, i8** %182, align 8
  store i8* %183, i8** %10, align 8
  %184 = load i8*, i8** %9, align 8
  %185 = load i32, i32* @TSDB_KEYSIZE, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %184, i64 %186
  store i8* %187, i8** %11, align 8
  %188 = load i8*, i8** %10, align 8
  %189 = load i32, i32* @TSDB_KEYSIZE, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %188, i64 %190
  store i8* %191, i8** %12, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 4
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i64 1
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 0
  %198 = bitcast i32* %197 to i8*
  store i8* %198, i8** %192, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %200 = load i8*, i8** %9, align 8
  %201 = bitcast i8* %200 to i32*
  %202 = load i32, i32* %201, align 4
  store i32 %202, i32* %199, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 4
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i64 2
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 0
  %209 = bitcast i32* %208 to i8*
  store i8* %209, i8** %203, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %211 = load i8*, i8** %10, align 8
  %212 = bitcast i8* %211 to i32*
  %213 = load i32, i32* %212, align 4
  store i32 %213, i32* %210, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  store i8* %217, i8** %214, align 8
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  store i32 %221, i32* %218, align 8
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  store i64 %224, i64* %16, align 8
  %225 = load i64, i64* %16, align 8
  %226 = load i64, i64* @TSDB_DATA_TYPE_TINYINT, align 8
  %227 = icmp sge i64 %225, %226
  br i1 %227, label %228, label %232

228:                                              ; preds = %171
  %229 = load i64, i64* %16, align 8
  %230 = load i64, i64* @TSDB_DATA_TYPE_BIGINT, align 8
  %231 = icmp sle i64 %229, %230
  br i1 %231, label %240, label %232

232:                                              ; preds = %228, %171
  %233 = load i64, i64* %16, align 8
  %234 = load i64, i64* @TSDB_DATA_TYPE_TIMESTAMP, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %240, label %236

236:                                              ; preds = %232
  %237 = load i64, i64* %16, align 8
  %238 = load i64, i64* @TSDB_DATA_TYPE_DOUBLE, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %269

240:                                              ; preds = %236, %232, %228
  %241 = load i8*, i8** %11, align 8
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  store i8* %241, i8** %242, align 8
  %243 = load i8*, i8** %12, align 8
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  store i8* %243, i8** %244, align 8
  %245 = load i8*, i8** %11, align 8
  %246 = load i64, i64* %16, align 8
  %247 = call i64 @isNull(i8* %245, i64 %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %254, label %249

249:                                              ; preds = %240
  %250 = load i8*, i8** %12, align 8
  %251 = load i64, i64* %16, align 8
  %252 = call i64 @isNull(i8* %250, i64 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %263

254:                                              ; preds = %249, %240
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 0
  %257 = load i8*, i8** %256, align 8
  %258 = load i64, i64* %16, align 8
  %259 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 5
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @setNull(i8* %257, i64 %258, i32 %261)
  br label %268

263:                                              ; preds = %249
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 2
  %266 = load i64, i64* %265, align 8
  %267 = call i32 @taosDoLinearInterpolation(i64 %266, %struct.TYPE_15__* %13, %struct.TYPE_15__* %14, %struct.TYPE_15__* %15)
  br label %268

268:                                              ; preds = %263, %254
  br label %316

269:                                              ; preds = %236
  %270 = load i64, i64* %16, align 8
  %271 = load i64, i64* @TSDB_DATA_TYPE_FLOAT, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %306

273:                                              ; preds = %269
  %274 = load i8*, i8** %11, align 8
  %275 = call float @GET_DOUBLE_VAL(i8* %274)
  store float %275, float* %17, align 4
  %276 = load i8*, i8** %12, align 8
  %277 = call float @GET_DOUBLE_VAL(i8* %276)
  store float %277, float* %18, align 4
  %278 = bitcast float* %17 to i8*
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  store i8* %278, i8** %279, align 8
  %280 = bitcast float* %18 to i8*
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  store i8* %280, i8** %281, align 8
  %282 = load i8*, i8** %11, align 8
  %283 = load i64, i64* %16, align 8
  %284 = call i64 @isNull(i8* %282, i64 %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %291, label %286

286:                                              ; preds = %273
  %287 = load i8*, i8** %12, align 8
  %288 = load i64, i64* %16, align 8
  %289 = call i64 @isNull(i8* %287, i64 %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %300

291:                                              ; preds = %286, %273
  %292 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %292, i32 0, i32 0
  %294 = load i8*, i8** %293, align 8
  %295 = load i64, i64* %16, align 8
  %296 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %297 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %296, i32 0, i32 5
  %298 = load i32, i32* %297, align 8
  %299 = call i32 @setNull(i8* %294, i64 %295, i32 %298)
  br label %305

300:                                              ; preds = %286
  %301 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %302 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %301, i32 0, i32 2
  %303 = load i64, i64* %302, align 8
  %304 = call i32 @taosDoLinearInterpolation(i64 %303, %struct.TYPE_15__* %13, %struct.TYPE_15__* %14, %struct.TYPE_15__* %15)
  br label %305

305:                                              ; preds = %300, %291
  br label %315

306:                                              ; preds = %269
  %307 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %307, i32 0, i32 0
  %309 = load i8*, i8** %308, align 8
  %310 = load i64, i64* %16, align 8
  %311 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i32 0, i32 5
  %313 = load i32, i32* %312, align 8
  %314 = call i32 @setNull(i8* %309, i64 %310, i32 %313)
  br label %315

315:                                              ; preds = %306, %305
  br label %316

316:                                              ; preds = %315, %268
  br label %317

317:                                              ; preds = %316, %165
  br label %318

318:                                              ; preds = %317, %164
  br label %319

319:                                              ; preds = %318, %105
  br label %320

320:                                              ; preds = %319, %88
  br label %321

321:                                              ; preds = %320, %74
  br label %322

322:                                              ; preds = %321, %63
  %323 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 0
  %324 = load %struct.TYPE_16__*, %struct.TYPE_16__** %323, align 8
  %325 = call i32 @free(%struct.TYPE_16__* %324)
  br label %326

326:                                              ; preds = %322, %26
  %327 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %328 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %327, i32 0, i32 4
  %329 = load %struct.TYPE_18__*, %struct.TYPE_18__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %329, i64 3
  %331 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = trunc i32 %332 to i8
  %334 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %335 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %334, i32 0, i32 3
  store i8 %333, i8* %335, align 8
  %336 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %337 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %336, i32 0, i32 4
  %338 = load %struct.TYPE_18__*, %struct.TYPE_18__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %338, i64 1
  %340 = call i32 @tVariantDestroy(%struct.TYPE_18__* %339)
  %341 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %342 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %341, i32 0, i32 4
  %343 = load %struct.TYPE_18__*, %struct.TYPE_18__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %343, i64 2
  %345 = call i32 @tVariantDestroy(%struct.TYPE_18__* %344)
  %346 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %347 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %348 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %347, i32 0, i32 3
  %349 = load i8, i8* %348, align 8
  %350 = call i32 @SET_VAL(%struct.TYPE_14__* %346, i8 signext %349, i32 1)
  ret void
}

declare dso_local i8* @GET_INPUT_CHAR(%struct.TYPE_14__*) #1

declare dso_local i32 @assignVal(i8*, ...) #1

declare dso_local i32 @assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @setNull(i8*, i64, i32) #1

declare dso_local i32 @tVariantDump(%struct.TYPE_18__*, i8*, i64) #1

declare dso_local float @GET_DOUBLE_VAL(i8*) #1

declare dso_local i64 @isNull(i8*, i64) #1

declare dso_local i32 @taosDoLinearInterpolation(i64, %struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @free(%struct.TYPE_16__*) #1

declare dso_local i32 @tVariantDestroy(%struct.TYPE_18__*) #1

declare dso_local i32 @SET_VAL(%struct.TYPE_14__*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
