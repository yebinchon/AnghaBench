; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_do_top_function_add.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_do_top_function_add.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, i64, i8*, i32, i64, %struct.TYPE_18__*, i8*, i32)* @do_top_function_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_top_function_add(%struct.TYPE_17__* %0, i64 %1, i8* %2, i32 %3, i64 %4, %struct.TYPE_18__* %5, i8* %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_15__, align 8
  %18 = alloca %struct.TYPE_16__**, align 8
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
  %21 = bitcast %struct.TYPE_15__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 24, i1 false)
  %22 = load i8*, i8** %11, align 8
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** @tDataTypeDesc, align 8
  %24 = load i64, i64* %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %13, align 8
  %29 = call i32 @tVariantCreateFromBinary(%struct.TYPE_15__* %17, i8* %22, i32 %27, i64 %28)
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %31, align 8
  store %struct.TYPE_16__** %32, %struct.TYPE_16__*** %18, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %10, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %199

38:                                               ; preds = %8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %87, label %43

43:                                               ; preds = %38
  %44 = load i64, i64* %13, align 8
  %45 = load i64, i64* @TSDB_DATA_TYPE_TINYINT, align 8
  %46 = icmp uge i64 %44, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %43
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* @TSDB_DATA_TYPE_BIGINT, align 8
  %50 = icmp ule i64 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %18, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sub i64 %57, 1
  %59 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %54, i64 %58
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp sge i64 %53, %63
  br i1 %64, label %87, label %65

65:                                               ; preds = %51, %47, %43
  %66 = load i64, i64* %13, align 8
  %67 = load i64, i64* @TSDB_DATA_TYPE_FLOAT, align 8
  %68 = icmp uge i64 %66, %67
  br i1 %68, label %69, label %101

69:                                               ; preds = %65
  %70 = load i64, i64* %13, align 8
  %71 = load i64, i64* @TSDB_DATA_TYPE_DOUBLE, align 8
  %72 = icmp ule i64 %70, %71
  br i1 %72, label %73, label %101

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %18, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = sub i64 %79, 1
  %81 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %76, i64 %80
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp sge i64 %75, %85
  br i1 %86, label %87, label %101

87:                                               ; preds = %73, %51, %38
  %88 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %18, align 8
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %88, i64 %91
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %92, align 8
  %94 = load i64, i64* %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %96 = load i32, i32* %12, align 4
  %97 = load i8*, i8** %15, align 8
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %99 = load i32, i32* %16, align 4
  %100 = call i32 @valuePairAssign(%struct.TYPE_16__* %93, i64 %94, i64* %95, i32 %96, i8* %97, %struct.TYPE_18__* %98, i32 %99)
  br label %194

101:                                              ; preds = %73, %69, %65
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = sub i64 %104, 1
  store i64 %105, i64* %19, align 8
  %106 = load i64, i64* %13, align 8
  %107 = load i64, i64* @TSDB_DATA_TYPE_TINYINT, align 8
  %108 = icmp uge i64 %106, %107
  br i1 %108, label %109, label %147

109:                                              ; preds = %101
  %110 = load i64, i64* %13, align 8
  %111 = load i64, i64* @TSDB_DATA_TYPE_BIGINT, align 8
  %112 = icmp ule i64 %110, %111
  br i1 %112, label %113, label %147

113:                                              ; preds = %109
  br label %114

114:                                              ; preds = %130, %113
  %115 = load i64, i64* %19, align 8
  %116 = icmp uge i64 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %114
  %118 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %18, align 8
  %119 = load i64, i64* %19, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %118, i64 %119
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp sgt i64 %124, %126
  br label %128

128:                                              ; preds = %117, %114
  %129 = phi i1 [ false, %114 ], [ %127, %117 ]
  br i1 %129, label %130, label %146

130:                                              ; preds = %128
  %131 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %18, align 8
  %132 = load i64, i64* %19, align 8
  %133 = add i64 %132, 1
  %134 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %131, i64 %133
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %134, align 8
  %136 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %18, align 8
  %137 = load i64, i64* %19, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %136, i64 %137
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %138, align 8
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @VALUEPAIRASSIGN(%struct.TYPE_16__* %135, %struct.TYPE_16__* %139, i32 %142)
  %144 = load i64, i64* %19, align 8
  %145 = sub i64 %144, 1
  store i64 %145, i64* %19, align 8
  br label %114

146:                                              ; preds = %128
  br label %181

147:                                              ; preds = %109, %101
  br label %148

148:                                              ; preds = %164, %147
  %149 = load i64, i64* %19, align 8
  %150 = icmp uge i64 %149, 0
  br i1 %150, label %151, label %162

151:                                              ; preds = %148
  %152 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %18, align 8
  %153 = load i64, i64* %19, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %152, i64 %153
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp sgt i64 %158, %160
  br label %162

162:                                              ; preds = %151, %148
  %163 = phi i1 [ false, %148 ], [ %161, %151 ]
  br i1 %163, label %164, label %180

164:                                              ; preds = %162
  %165 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %18, align 8
  %166 = load i64, i64* %19, align 8
  %167 = add i64 %166, 1
  %168 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %165, i64 %167
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %168, align 8
  %170 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %18, align 8
  %171 = load i64, i64* %19, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %170, i64 %171
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %172, align 8
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @VALUEPAIRASSIGN(%struct.TYPE_16__* %169, %struct.TYPE_16__* %173, i32 %176)
  %178 = load i64, i64* %19, align 8
  %179 = sub i64 %178, 1
  store i64 %179, i64* %19, align 8
  br label %148

180:                                              ; preds = %162
  br label %181

181:                                              ; preds = %180, %146
  %182 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %18, align 8
  %183 = load i64, i64* %19, align 8
  %184 = add i64 %183, 1
  %185 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %182, i64 %184
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %185, align 8
  %187 = load i64, i64* %13, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %189 = load i32, i32* %12, align 4
  %190 = load i8*, i8** %15, align 8
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %192 = load i32, i32* %16, align 4
  %193 = call i32 @valuePairAssign(%struct.TYPE_16__* %186, i64 %187, i64* %188, i32 %189, i8* %190, %struct.TYPE_18__* %191, i32 %192)
  br label %194

194:                                              ; preds = %181, %87
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = add i64 %197, 1
  store i64 %198, i64* %196, align 8
  br label %330

199:                                              ; preds = %8
  store i64 0, i64* %20, align 8
  %200 = load i64, i64* %13, align 8
  %201 = load i64, i64* @TSDB_DATA_TYPE_TINYINT, align 8
  %202 = icmp uge i64 %200, %201
  br i1 %202, label %203, label %217

203:                                              ; preds = %199
  %204 = load i64, i64* %13, align 8
  %205 = load i64, i64* @TSDB_DATA_TYPE_BIGINT, align 8
  %206 = icmp ule i64 %204, %205
  br i1 %206, label %207, label %217

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %18, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %210, i64 0
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = icmp sgt i64 %209, %215
  br i1 %216, label %235, label %217

217:                                              ; preds = %207, %203, %199
  %218 = load i64, i64* %13, align 8
  %219 = load i64, i64* @TSDB_DATA_TYPE_FLOAT, align 8
  %220 = icmp uge i64 %218, %219
  br i1 %220, label %221, label %329

221:                                              ; preds = %217
  %222 = load i64, i64* %13, align 8
  %223 = load i64, i64* @TSDB_DATA_TYPE_DOUBLE, align 8
  %224 = icmp ule i64 %222, %223
  br i1 %224, label %225, label %329

225:                                              ; preds = %221
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %18, align 8
  %229 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %228, i64 0
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = icmp sgt i64 %227, %233
  br i1 %234, label %235, label %329

235:                                              ; preds = %225, %207
  %236 = load i64, i64* %13, align 8
  %237 = load i64, i64* @TSDB_DATA_TYPE_TINYINT, align 8
  %238 = icmp uge i64 %236, %237
  br i1 %238, label %239, label %280

239:                                              ; preds = %235
  %240 = load i64, i64* %13, align 8
  %241 = load i64, i64* @TSDB_DATA_TYPE_BIGINT, align 8
  %242 = icmp ule i64 %240, %241
  br i1 %242, label %243, label %280

243:                                              ; preds = %239
  br label %244

244:                                              ; preds = %263, %243
  %245 = load i64, i64* %20, align 8
  %246 = add i64 %245, 1
  %247 = load i64, i64* %10, align 8
  %248 = icmp ult i64 %246, %247
  br i1 %248, label %249, label %261

249:                                              ; preds = %244
  %250 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %18, align 8
  %251 = load i64, i64* %20, align 8
  %252 = add i64 %251, 1
  %253 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %250, i64 %252
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = icmp slt i64 %257, %259
  br label %261

261:                                              ; preds = %249, %244
  %262 = phi i1 [ false, %244 ], [ %260, %249 ]
  br i1 %262, label %263, label %279

263:                                              ; preds = %261
  %264 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %18, align 8
  %265 = load i64, i64* %20, align 8
  %266 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %264, i64 %265
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** %266, align 8
  %268 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %18, align 8
  %269 = load i64, i64* %20, align 8
  %270 = add i64 %269, 1
  %271 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %268, i64 %270
  %272 = load %struct.TYPE_16__*, %struct.TYPE_16__** %271, align 8
  %273 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %274 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @VALUEPAIRASSIGN(%struct.TYPE_16__* %267, %struct.TYPE_16__* %272, i32 %275)
  %277 = load i64, i64* %20, align 8
  %278 = add i64 %277, 1
  store i64 %278, i64* %20, align 8
  br label %244

279:                                              ; preds = %261
  br label %317

280:                                              ; preds = %239, %235
  br label %281

281:                                              ; preds = %300, %280
  %282 = load i64, i64* %20, align 8
  %283 = add i64 %282, 1
  %284 = load i64, i64* %10, align 8
  %285 = icmp ult i64 %283, %284
  br i1 %285, label %286, label %298

286:                                              ; preds = %281
  %287 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %18, align 8
  %288 = load i64, i64* %20, align 8
  %289 = add i64 %288, 1
  %290 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %287, i64 %289
  %291 = load %struct.TYPE_16__*, %struct.TYPE_16__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %292, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %296 = load i64, i64* %295, align 8
  %297 = icmp slt i64 %294, %296
  br label %298

298:                                              ; preds = %286, %281
  %299 = phi i1 [ false, %281 ], [ %297, %286 ]
  br i1 %299, label %300, label %316

300:                                              ; preds = %298
  %301 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %18, align 8
  %302 = load i64, i64* %20, align 8
  %303 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %301, i64 %302
  %304 = load %struct.TYPE_16__*, %struct.TYPE_16__** %303, align 8
  %305 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %18, align 8
  %306 = load i64, i64* %20, align 8
  %307 = add i64 %306, 1
  %308 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %305, i64 %307
  %309 = load %struct.TYPE_16__*, %struct.TYPE_16__** %308, align 8
  %310 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %311 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = call i32 @VALUEPAIRASSIGN(%struct.TYPE_16__* %304, %struct.TYPE_16__* %309, i32 %312)
  %314 = load i64, i64* %20, align 8
  %315 = add i64 %314, 1
  store i64 %315, i64* %20, align 8
  br label %281

316:                                              ; preds = %298
  br label %317

317:                                              ; preds = %316, %279
  %318 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %18, align 8
  %319 = load i64, i64* %20, align 8
  %320 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %318, i64 %319
  %321 = load %struct.TYPE_16__*, %struct.TYPE_16__** %320, align 8
  %322 = load i64, i64* %13, align 8
  %323 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %324 = load i32, i32* %12, align 4
  %325 = load i8*, i8** %15, align 8
  %326 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %327 = load i32, i32* %16, align 4
  %328 = call i32 @valuePairAssign(%struct.TYPE_16__* %321, i64 %322, i64* %323, i32 %324, i8* %325, %struct.TYPE_18__* %326, i32 %327)
  br label %329

329:                                              ; preds = %317, %225, %221, %217
  br label %330

330:                                              ; preds = %329, %194
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
