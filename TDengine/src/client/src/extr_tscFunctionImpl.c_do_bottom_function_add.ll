; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_do_bottom_function_add.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_do_bottom_function_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_16__** }
%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_15__ = type { i64, i64, i32 }

@tDataTypeDesc = common dso_local global %struct.TYPE_19__* null, align 8
@TSDB_DATA_TYPE_TINYINT = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_BIGINT = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_FLOAT = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_DOUBLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, i64, i8*, i32, i64, %struct.TYPE_18__*, i8*, i32)* @do_bottom_function_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_bottom_function_add(%struct.TYPE_17__* %0, i64 %1, i8* %2, i32 %3, i64 %4, %struct.TYPE_18__* %5, i8* %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_16__**, align 8
  %18 = alloca %struct.TYPE_15__, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store %struct.TYPE_18__* %5, %struct.TYPE_18__** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32 %7, i32* %16, align 4
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %22, align 8
  store %struct.TYPE_16__** %23, %struct.TYPE_16__*** %17, align 8
  %24 = bitcast %struct.TYPE_15__* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %24, i8 0, i64 24, i1 false)
  %25 = load i8*, i8** %11, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** @tDataTypeDesc, align 8
  %27 = load i64, i64* %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %13, align 8
  %32 = call i32 @tVariantCreateFromBinary(%struct.TYPE_15__* %18, i8* %25, i32 %30, i64 %31)
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %10, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %155

38:                                               ; preds = %8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %38
  %44 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %17, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %44, i64 %47
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %48, align 8
  %50 = load i64, i64* %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %52 = load i32, i32* %12, align 4
  %53 = load i8*, i8** %15, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %55 = load i32, i32* %16, align 4
  %56 = call i32 @valuePairAssign(%struct.TYPE_16__* %49, i64 %50, i64* %51, i32 %52, i8* %53, %struct.TYPE_18__* %54, i32 %55)
  br label %150

57:                                               ; preds = %38
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = sub i64 %60, 1
  store i64 %61, i64* %19, align 8
  %62 = load i64, i64* %13, align 8
  %63 = load i64, i64* @TSDB_DATA_TYPE_TINYINT, align 8
  %64 = icmp uge i64 %62, %63
  br i1 %64, label %65, label %103

65:                                               ; preds = %57
  %66 = load i64, i64* %13, align 8
  %67 = load i64, i64* @TSDB_DATA_TYPE_BIGINT, align 8
  %68 = icmp ule i64 %66, %67
  br i1 %68, label %69, label %103

69:                                               ; preds = %65
  br label %70

70:                                               ; preds = %86, %69
  %71 = load i64, i64* %19, align 8
  %72 = icmp uge i64 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %70
  %74 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %17, align 8
  %75 = load i64, i64* %19, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %74, i64 %75
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp slt i64 %80, %82
  br label %84

84:                                               ; preds = %73, %70
  %85 = phi i1 [ false, %70 ], [ %83, %73 ]
  br i1 %85, label %86, label %102

86:                                               ; preds = %84
  %87 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %17, align 8
  %88 = load i64, i64* %19, align 8
  %89 = add i64 %88, 1
  %90 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %87, i64 %89
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %90, align 8
  %92 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %17, align 8
  %93 = load i64, i64* %19, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %92, i64 %93
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %94, align 8
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @VALUEPAIRASSIGN(%struct.TYPE_16__* %91, %struct.TYPE_16__* %95, i32 %98)
  %100 = load i64, i64* %19, align 8
  %101 = sub i64 %100, 1
  store i64 %101, i64* %19, align 8
  br label %70

102:                                              ; preds = %84
  br label %137

103:                                              ; preds = %65, %57
  br label %104

104:                                              ; preds = %120, %103
  %105 = load i64, i64* %19, align 8
  %106 = icmp uge i64 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %104
  %108 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %17, align 8
  %109 = load i64, i64* %19, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %108, i64 %109
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp slt i64 %114, %116
  br label %118

118:                                              ; preds = %107, %104
  %119 = phi i1 [ false, %104 ], [ %117, %107 ]
  br i1 %119, label %120, label %136

120:                                              ; preds = %118
  %121 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %17, align 8
  %122 = load i64, i64* %19, align 8
  %123 = add i64 %122, 1
  %124 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %121, i64 %123
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %124, align 8
  %126 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %17, align 8
  %127 = load i64, i64* %19, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %126, i64 %127
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %128, align 8
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @VALUEPAIRASSIGN(%struct.TYPE_16__* %125, %struct.TYPE_16__* %129, i32 %132)
  %134 = load i64, i64* %19, align 8
  %135 = sub i64 %134, 1
  store i64 %135, i64* %19, align 8
  br label %104

136:                                              ; preds = %118
  br label %137

137:                                              ; preds = %136, %102
  %138 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %17, align 8
  %139 = load i64, i64* %19, align 8
  %140 = add i64 %139, 1
  %141 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %138, i64 %140
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %141, align 8
  %143 = load i64, i64* %13, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %145 = load i32, i32* %12, align 4
  %146 = load i8*, i8** %15, align 8
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %148 = load i32, i32* %16, align 4
  %149 = call i32 @valuePairAssign(%struct.TYPE_16__* %142, i64 %143, i64* %144, i32 %145, i8* %146, %struct.TYPE_18__* %147, i32 %148)
  br label %150

150:                                              ; preds = %137, %43
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %152, align 8
  br label %286

155:                                              ; preds = %8
  store i64 0, i64* %20, align 8
  %156 = load i64, i64* %13, align 8
  %157 = load i64, i64* @TSDB_DATA_TYPE_TINYINT, align 8
  %158 = icmp uge i64 %156, %157
  br i1 %158, label %159, label %173

159:                                              ; preds = %155
  %160 = load i64, i64* %13, align 8
  %161 = load i64, i64* @TSDB_DATA_TYPE_BIGINT, align 8
  %162 = icmp ule i64 %160, %161
  br i1 %162, label %163, label %173

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %17, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %166, i64 0
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp slt i64 %165, %171
  br i1 %172, label %191, label %173

173:                                              ; preds = %163, %159, %155
  %174 = load i64, i64* %13, align 8
  %175 = load i64, i64* @TSDB_DATA_TYPE_FLOAT, align 8
  %176 = icmp uge i64 %174, %175
  br i1 %176, label %177, label %285

177:                                              ; preds = %173
  %178 = load i64, i64* %13, align 8
  %179 = load i64, i64* @TSDB_DATA_TYPE_DOUBLE, align 8
  %180 = icmp ule i64 %178, %179
  br i1 %180, label %181, label %285

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %17, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %184, i64 0
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = icmp slt i64 %183, %189
  br i1 %190, label %191, label %285

191:                                              ; preds = %181, %163
  %192 = load i64, i64* %13, align 8
  %193 = load i64, i64* @TSDB_DATA_TYPE_TINYINT, align 8
  %194 = icmp uge i64 %192, %193
  br i1 %194, label %195, label %236

195:                                              ; preds = %191
  %196 = load i64, i64* %13, align 8
  %197 = load i64, i64* @TSDB_DATA_TYPE_BIGINT, align 8
  %198 = icmp ule i64 %196, %197
  br i1 %198, label %199, label %236

199:                                              ; preds = %195
  br label %200

200:                                              ; preds = %219, %199
  %201 = load i64, i64* %20, align 8
  %202 = add i64 %201, 1
  %203 = load i64, i64* %10, align 8
  %204 = icmp ult i64 %202, %203
  br i1 %204, label %205, label %217

205:                                              ; preds = %200
  %206 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %17, align 8
  %207 = load i64, i64* %20, align 8
  %208 = add i64 %207, 1
  %209 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %206, i64 %208
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = icmp sgt i64 %213, %215
  br label %217

217:                                              ; preds = %205, %200
  %218 = phi i1 [ false, %200 ], [ %216, %205 ]
  br i1 %218, label %219, label %235

219:                                              ; preds = %217
  %220 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %17, align 8
  %221 = load i64, i64* %20, align 8
  %222 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %220, i64 %221
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %222, align 8
  %224 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %17, align 8
  %225 = load i64, i64* %20, align 8
  %226 = add i64 %225, 1
  %227 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %224, i64 %226
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %227, align 8
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @VALUEPAIRASSIGN(%struct.TYPE_16__* %223, %struct.TYPE_16__* %228, i32 %231)
  %233 = load i64, i64* %20, align 8
  %234 = add i64 %233, 1
  store i64 %234, i64* %20, align 8
  br label %200

235:                                              ; preds = %217
  br label %273

236:                                              ; preds = %195, %191
  br label %237

237:                                              ; preds = %256, %236
  %238 = load i64, i64* %20, align 8
  %239 = add i64 %238, 1
  %240 = load i64, i64* %10, align 8
  %241 = icmp ult i64 %239, %240
  br i1 %241, label %242, label %254

242:                                              ; preds = %237
  %243 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %17, align 8
  %244 = load i64, i64* %20, align 8
  %245 = add i64 %244, 1
  %246 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %243, i64 %245
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = icmp sgt i64 %250, %252
  br label %254

254:                                              ; preds = %242, %237
  %255 = phi i1 [ false, %237 ], [ %253, %242 ]
  br i1 %255, label %256, label %272

256:                                              ; preds = %254
  %257 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %17, align 8
  %258 = load i64, i64* %20, align 8
  %259 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %257, i64 %258
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** %259, align 8
  %261 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %17, align 8
  %262 = load i64, i64* %20, align 8
  %263 = add i64 %262, 1
  %264 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %261, i64 %263
  %265 = load %struct.TYPE_16__*, %struct.TYPE_16__** %264, align 8
  %266 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %267 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @VALUEPAIRASSIGN(%struct.TYPE_16__* %260, %struct.TYPE_16__* %265, i32 %268)
  %270 = load i64, i64* %20, align 8
  %271 = add i64 %270, 1
  store i64 %271, i64* %20, align 8
  br label %237

272:                                              ; preds = %254
  br label %273

273:                                              ; preds = %272, %235
  %274 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %17, align 8
  %275 = load i64, i64* %20, align 8
  %276 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %274, i64 %275
  %277 = load %struct.TYPE_16__*, %struct.TYPE_16__** %276, align 8
  %278 = load i64, i64* %13, align 8
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %280 = load i32, i32* %12, align 4
  %281 = load i8*, i8** %15, align 8
  %282 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %283 = load i32, i32* %16, align 4
  %284 = call i32 @valuePairAssign(%struct.TYPE_16__* %277, i64 %278, i64* %279, i32 %280, i8* %281, %struct.TYPE_18__* %282, i32 %283)
  br label %285

285:                                              ; preds = %273, %181, %177, %173
  br label %286

286:                                              ; preds = %285, %150
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @tVariantCreateFromBinary(%struct.TYPE_15__*, i8*, i32, i64) #2

declare dso_local i32 @valuePairAssign(%struct.TYPE_16__*, i64, i64*, i32, i8*, %struct.TYPE_18__*, i32) #2

declare dso_local i32 @VALUEPAIRASSIGN(%struct.TYPE_16__*, %struct.TYPE_16__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
