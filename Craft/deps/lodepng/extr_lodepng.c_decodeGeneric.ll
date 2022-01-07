; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_decodeGeneric.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_decodeGeneric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_20__, %struct.TYPE_17__ }
%struct.TYPE_20__ = type { i32, i32*, i32* }
%struct.TYPE_17__ = type { i32, i32, i64, i64 }
%struct.TYPE_18__ = type { i64, i8* }

@.str = private unnamed_addr constant [5 x i8] c"IDAT\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"IEND\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"PLTE\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"tRNS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32*, i32*, %struct.TYPE_19__*, i8*, i64)* @decodeGeneric to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decodeGeneric(i8** %0, i32* %1, i32* %2, %struct.TYPE_19__* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_18__, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_18__, align 8
  %22 = alloca %struct.TYPE_18__, align 8
  store i8** %0, i8*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  store i8 0, i8* %13, align 1
  store i32 0, i32* %17, align 4
  %23 = load i8**, i8*** %7, align 8
  store i8* null, i8** %23, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = load i64, i64* %12, align 8
  %29 = call i32 @lodepng_inspect(i32* %24, i32* %25, %struct.TYPE_19__* %26, i8* %27, i64 %28)
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %6
  br label %317

37:                                               ; preds = %6
  %38 = call i32 @ucvector_init(%struct.TYPE_18__* %16)
  %39 = load i8*, i8** %11, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 33
  store i8* %40, i8** %14, align 8
  br label %41

41:                                               ; preds = %228, %37
  %42 = load i8, i8* %13, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  br label %50

50:                                               ; preds = %44, %41
  %51 = phi i1 [ false, %41 ], [ %49, %44 ]
  br i1 %51, label %52, label %229

52:                                               ; preds = %50
  %53 = load i8*, i8** %14, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = ptrtoint i8* %53 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = add nsw i64 %57, 12
  %59 = load i64, i64* %12, align 8
  %60 = icmp ugt i64 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %52
  %62 = load i8*, i8** %14, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = icmp ult i8* %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61, %52
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @CERROR_BREAK(i32 %68, i32 30)
  br label %70

70:                                               ; preds = %65, %61
  %71 = load i8*, i8** %14, align 8
  %72 = call i32 @lodepng_chunk_length(i8* %71)
  store i32 %72, i32* %18, align 4
  %73 = load i32, i32* %18, align 4
  %74 = icmp ugt i32 %73, 2147483647
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @CERROR_BREAK(i32 %78, i32 63)
  br label %80

80:                                               ; preds = %75, %70
  %81 = load i8*, i8** %14, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = ptrtoint i8* %81 to i64
  %84 = ptrtoint i8* %82 to i64
  %85 = sub i64 %83, %84
  %86 = load i32, i32* %18, align 4
  %87 = zext i32 %86 to i64
  %88 = add nsw i64 %85, %87
  %89 = add nsw i64 %88, 12
  %90 = load i64, i64* %12, align 8
  %91 = icmp ugt i64 %89, %90
  br i1 %91, label %100, label %92

92:                                               ; preds = %80
  %93 = load i8*, i8** %14, align 8
  %94 = load i32, i32* %18, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = getelementptr inbounds i8, i8* %96, i64 12
  %98 = load i8*, i8** %11, align 8
  %99 = icmp ult i8* %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %92, %80
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @CERROR_BREAK(i32 %103, i32 64)
  br label %105

105:                                              ; preds = %100, %92
  %106 = load i8*, i8** %14, align 8
  %107 = call i8* @lodepng_chunk_data_const(i8* %106)
  store i8* %107, i8** %19, align 8
  %108 = load i8*, i8** %14, align 8
  %109 = call i64 @lodepng_chunk_type_equals(i8* %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %147

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %20, align 8
  %114 = load i64, i64* %20, align 8
  %115 = load i32, i32* %18, align 4
  %116 = zext i32 %115 to i64
  %117 = add i64 %114, %116
  %118 = trunc i64 %117 to i32
  %119 = call i32 @ucvector_resize(%struct.TYPE_18__* %16, i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %111
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @CERROR_BREAK(i32 %124, i32 83)
  br label %126

126:                                              ; preds = %121, %111
  store i64 0, i64* %15, align 8
  br label %127

127:                                              ; preds = %143, %126
  %128 = load i64, i64* %15, align 8
  %129 = load i32, i32* %18, align 4
  %130 = zext i32 %129 to i64
  %131 = icmp ult i64 %128, %130
  br i1 %131, label %132, label %146

132:                                              ; preds = %127
  %133 = load i8*, i8** %19, align 8
  %134 = load i64, i64* %15, align 8
  %135 = getelementptr inbounds i8, i8* %133, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = load i64, i64* %20, align 8
  %140 = load i64, i64* %15, align 8
  %141 = add i64 %139, %140
  %142 = getelementptr inbounds i8, i8* %138, i64 %141
  store i8 %136, i8* %142, align 1
  br label %143

143:                                              ; preds = %132
  %144 = load i64, i64* %15, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %15, align 8
  br label %127

146:                                              ; preds = %127
  br label %203

147:                                              ; preds = %105
  %148 = load i8*, i8** %14, align 8
  %149 = call i64 @lodepng_chunk_type_equals(i8* %148, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %147
  store i8 1, i8* %13, align 1
  br label %202

152:                                              ; preds = %147
  %153 = load i8*, i8** %14, align 8
  %154 = call i64 @lodepng_chunk_type_equals(i8* %153, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %171

156:                                              ; preds = %152
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 0
  %160 = load i8*, i8** %19, align 8
  %161 = load i32, i32* %18, align 4
  %162 = call i32 @readChunk_PLTE(i32* %159, i8* %160, i32 %161)
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %156
  br label %229

170:                                              ; preds = %156
  br label %201

171:                                              ; preds = %152
  %172 = load i8*, i8** %14, align 8
  %173 = call i64 @lodepng_chunk_type_equals(i8* %172, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %190

175:                                              ; preds = %171
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 0
  %179 = load i8*, i8** %19, align 8
  %180 = load i32, i32* %18, align 4
  %181 = call i32 @readChunk_tRNS(i32* %178, i8* %179, i32 %180)
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %175
  br label %229

189:                                              ; preds = %175
  br label %200

190:                                              ; preds = %171
  %191 = load i8*, i8** %14, align 8
  %192 = call i32 @lodepng_chunk_ancillary(i8* %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %199, label %194

194:                                              ; preds = %190
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @CERROR_BREAK(i32 %197, i32 69)
  br label %199

199:                                              ; preds = %194, %190
  store i32 1, i32* %17, align 4
  br label %200

200:                                              ; preds = %199, %189
  br label %201

201:                                              ; preds = %200, %170
  br label %202

202:                                              ; preds = %201, %151
  br label %203

203:                                              ; preds = %202, %146
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %222, label %209

209:                                              ; preds = %203
  %210 = load i32, i32* %17, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %222, label %212

212:                                              ; preds = %209
  %213 = load i8*, i8** %14, align 8
  %214 = call i64 @lodepng_chunk_check_crc(i8* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %212
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @CERROR_BREAK(i32 %219, i32 57)
  br label %221

221:                                              ; preds = %216, %212
  br label %222

222:                                              ; preds = %221, %209, %203
  %223 = load i8, i8* %13, align 1
  %224 = icmp ne i8 %223, 0
  br i1 %224, label %228, label %225

225:                                              ; preds = %222
  %226 = load i8*, i8** %14, align 8
  %227 = call i8* @lodepng_chunk_next_const(i8* %226)
  store i8* %227, i8** %14, align 8
  br label %228

228:                                              ; preds = %225, %222
  br label %41

229:                                              ; preds = %188, %169, %50
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %315, label %234

234:                                              ; preds = %229
  %235 = call i32 @ucvector_init(%struct.TYPE_18__* %21)
  %236 = load i32*, i32** %8, align 8
  %237 = load i32, i32* %236, align 4
  %238 = load i32*, i32** %9, align 8
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %241, i32 0, i32 0
  %243 = call i32 @lodepng_get_raw_size(i32 %237, i32 %239, i32* %242)
  %244 = load i32*, i32** %9, align 8
  %245 = load i32, i32* %244, align 4
  %246 = add i32 %243, %245
  %247 = call i32 @ucvector_resize(%struct.TYPE_18__* %21, i32 %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %252, label %249

249:                                              ; preds = %234
  %250 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %251 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %250, i32 0, i32 0
  store i32 83, i32* %251, align 8
  br label %252

252:                                              ; preds = %249, %234
  %253 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %254 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %270, label %257

257:                                              ; preds = %252
  %258 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 1
  %261 = load i8*, i8** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %265 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %264, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %265, i32 0, i32 0
  %267 = call i32 @zlib_decompress(i8** %258, i64* %259, i8* %261, i64 %263, i32* %266)
  %268 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %269 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %268, i32 0, i32 0
  store i32 %267, i32* %269, align 8
  br label %270

270:                                              ; preds = %257, %252
  %271 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %272 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %313, label %275

275:                                              ; preds = %270
  %276 = call i32 @ucvector_init(%struct.TYPE_18__* %22)
  %277 = load i32*, i32** %8, align 8
  %278 = load i32, i32* %277, align 4
  %279 = load i32*, i32** %9, align 8
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %282 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %282, i32 0, i32 0
  %284 = call i32 @lodepng_get_raw_size(i32 %278, i32 %280, i32* %283)
  %285 = call i32 @ucvector_resizev(%struct.TYPE_18__* %22, i32 %284, i32 0)
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %290, label %287

287:                                              ; preds = %275
  %288 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %289 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %288, i32 0, i32 0
  store i32 83, i32* %289, align 8
  br label %290

290:                                              ; preds = %287, %275
  %291 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %292 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %309, label %295

295:                                              ; preds = %290
  %296 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 1
  %297 = load i8*, i8** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 1
  %299 = load i8*, i8** %298, align 8
  %300 = load i32*, i32** %8, align 8
  %301 = load i32, i32* %300, align 4
  %302 = load i32*, i32** %9, align 8
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %305 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %304, i32 0, i32 1
  %306 = call i32 @postProcessScanlines(i8* %297, i8* %299, i32 %301, i32 %303, %struct.TYPE_20__* %305)
  %307 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %308 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %307, i32 0, i32 0
  store i32 %306, i32* %308, align 8
  br label %309

309:                                              ; preds = %295, %290
  %310 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 1
  %311 = load i8*, i8** %310, align 8
  %312 = load i8**, i8*** %7, align 8
  store i8* %311, i8** %312, align 8
  br label %313

313:                                              ; preds = %309, %270
  %314 = call i32 @ucvector_cleanup(%struct.TYPE_18__* %21)
  br label %315

315:                                              ; preds = %313, %229
  %316 = call i32 @ucvector_cleanup(%struct.TYPE_18__* %16)
  br label %317

317:                                              ; preds = %315, %36
  ret void
}

declare dso_local i32 @lodepng_inspect(i32*, i32*, %struct.TYPE_19__*, i8*, i64) #1

declare dso_local i32 @ucvector_init(%struct.TYPE_18__*) #1

declare dso_local i32 @CERROR_BREAK(i32, i32) #1

declare dso_local i32 @lodepng_chunk_length(i8*) #1

declare dso_local i8* @lodepng_chunk_data_const(i8*) #1

declare dso_local i64 @lodepng_chunk_type_equals(i8*, i8*) #1

declare dso_local i32 @ucvector_resize(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @readChunk_PLTE(i32*, i8*, i32) #1

declare dso_local i32 @readChunk_tRNS(i32*, i8*, i32) #1

declare dso_local i32 @lodepng_chunk_ancillary(i8*) #1

declare dso_local i64 @lodepng_chunk_check_crc(i8*) #1

declare dso_local i8* @lodepng_chunk_next_const(i8*) #1

declare dso_local i32 @lodepng_get_raw_size(i32, i32, i32*) #1

declare dso_local i32 @zlib_decompress(i8**, i64*, i8*, i64, i32*) #1

declare dso_local i32 @ucvector_resizev(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @postProcessScanlines(i8*, i8*, i32, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @ucvector_cleanup(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
