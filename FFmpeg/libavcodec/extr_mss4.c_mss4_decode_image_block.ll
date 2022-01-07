; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mss4.c_mss4_decode_image_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mss4.c_mss4_decode_image_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64**, %struct.TYPE_4__*, i64**, i32* }
%struct.TYPE_4__ = type { i32* }

@vec_len_syms = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i64**, i32, i32)* @mss4_decode_image_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mss4_decode_image_block(%struct.TYPE_5__* %0, i32* %1, i64** %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x [4 x i64]], align 16
  %12 = alloca [3 x i32], align 4
  %13 = alloca [3 x i32], align 4
  %14 = alloca [3 x i32], align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [3 x i32], align 4
  %23 = alloca [3 x i32], align 4
  %24 = alloca [16 x i32], align 16
  %25 = alloca [3 x i64*], align 16
  %26 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64** %2, i64*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %27 = bitcast [3 x i32]* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %27, i8 0, i64 12, i1 false)
  %28 = bitcast [3 x i32]* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %28, i8 0, i64 12, i1 false)
  %29 = bitcast [16 x i32]* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %29, i8 0, i64 64, i1 false)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 100
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 0, i32 2
  store i32 %35, i32* %26, align 4
  store i32 0, i32* %15, align 4
  br label %36

36:                                               ; preds = %50, %5
  %37 = load i32, i32* %15, align 4
  %38 = icmp slt i32 %37, 3
  br i1 %38, label %39, label %53

39:                                               ; preds = %36
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i64**, i64*** %41, align 8
  %43 = load i32, i32* %15, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64*, i64** %42, i64 %44
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [3 x i64*], [3 x i64*]* %25, i64 0, i64 %48
  store i64* %46, i64** %49, align 8
  br label %50

50:                                               ; preds = %39
  %51 = load i32, i32* %15, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %15, align 4
  br label %36

53:                                               ; preds = %36
  store i32 0, i32* %15, align 4
  br label %54

54:                                               ; preds = %166, %53
  %55 = load i32, i32* %15, align 4
  %56 = icmp slt i32 %55, 3
  br i1 %56, label %57, label %169

57:                                               ; preds = %54
  %58 = load i32**, i32*** @vec_len_syms, align 8
  %59 = load i32, i32* %15, align 4
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %58, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = call i64 @get_unary(i32* %67, i32 0, i32 3)
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %15, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 %72
  store i32 %70, i32* %73, align 4
  store i32 0, i32* %16, align 4
  br label %74

74:                                               ; preds = %136, %57
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %15, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %75, %79
  br i1 %80, label %81, label %139

81:                                               ; preds = %74
  %82 = load i32*, i32** %7, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 4
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %85, i64 %91
  %93 = call i64 @get_coeff(i32* %82, i32* %92)
  %94 = load i32, i32* %15, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %11, i64 0, i64 %95
  %97 = load i32, i32* %16, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [4 x i64], [4 x i64]* %96, i64 0, i64 %98
  store i64 %93, i64* %99, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 3
  %102 = load i64**, i64*** %101, align 8
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64*, i64** %102, i64 %104
  %106 = load i64*, i64** %105, align 8
  %107 = load i32, i32* %16, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* %15, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %11, i64 0, i64 %112
  %114 = load i32, i32* %16, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [4 x i64], [4 x i64]* %113, i64 0, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %117, %110
  store i64 %118, i64* %116, align 8
  %119 = load i32, i32* %15, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %11, i64 0, i64 %120
  %122 = load i32, i32* %16, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [4 x i64], [4 x i64]* %121, i64 0, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 3
  %128 = load i64**, i64*** %127, align 8
  %129 = load i32, i32* %15, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64*, i64** %128, i64 %130
  %132 = load i64*, i64** %131, align 8
  %133 = load i32, i32* %16, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  store i64 %125, i64* %135, align 8
  br label %136

136:                                              ; preds = %81
  %137 = load i32, i32* %16, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %16, align 4
  br label %74

139:                                              ; preds = %74
  %140 = load i32, i32* %15, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = icmp sgt i32 %143, 1
  %145 = zext i1 %144 to i32
  %146 = load i32, i32* %15, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 %147
  store i32 %145, i32* %148, align 4
  %149 = load i32, i32* %15, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = icmp sgt i32 %152, 2
  br i1 %153, label %154, label %160

154:                                              ; preds = %139
  %155 = load i32, i32* %15, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = sub nsw i32 %158, 2
  br label %161

160:                                              ; preds = %139
  br label %161

161:                                              ; preds = %160, %154
  %162 = phi i32 [ %159, %154 ], [ 0, %160 ]
  %163 = load i32, i32* %15, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 %164
  store i32 %162, i32* %165, align 4
  br label %166

166:                                              ; preds = %161
  %167 = load i32, i32* %15, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %15, align 4
  br label %54

169:                                              ; preds = %54
  store i32 0, i32* %16, align 4
  br label %170

170:                                              ; preds = %449, %169
  %171 = load i32, i32* %16, align 4
  %172 = icmp slt i32 %171, 16
  br i1 %172, label %173, label %452

173:                                              ; preds = %170
  %174 = load i32*, i32** %7, align 8
  %175 = call i32 @get_bits1(i32* %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %293

177:                                              ; preds = %173
  store i32 0, i32* %19, align 4
  %178 = load i32*, i32** %7, align 8
  %179 = call i32 @get_bits1(i32* %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %177
  %182 = getelementptr inbounds [16 x i32], [16 x i32]* %24, i64 0, i64 0
  store i32 0, i32* %182, align 16
  %183 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 2
  store i32 0, i32* %183, align 4
  %184 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 1
  store i32 0, i32* %184, align 4
  %185 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 0
  store i32 0, i32* %185, align 4
  store i32 2, i32* %18, align 4
  br label %195

186:                                              ; preds = %177
  %187 = load i32*, i32** %7, align 8
  %188 = call i32 @get_bits1(i32* %187)
  store i32 %188, i32* %18, align 4
  %189 = load i32, i32* %18, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %186
  %192 = load i32*, i32** %7, align 8
  %193 = call i32 @get_bits(i32* %192, i32 4)
  store i32 %193, i32* %19, align 4
  br label %194

194:                                              ; preds = %191, %186
  br label %195

195:                                              ; preds = %194, %181
  store i32 0, i32* %15, align 4
  br label %196

196:                                              ; preds = %289, %195
  %197 = load i32, i32* %15, align 4
  %198 = icmp slt i32 %197, 16
  br i1 %198, label %199, label %292

199:                                              ; preds = %196
  %200 = load i32, i32* %18, align 4
  %201 = icmp sle i32 %200, 1
  br i1 %201, label %202, label %236

202:                                              ; preds = %199
  %203 = load i32, i32* %15, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [16 x i32], [16 x i32]* %24, i64 0, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = and i32 %206, 7
  %208 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 0
  store i32 %207, i32* %208, align 4
  %209 = load i32, i32* %15, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [16 x i32], [16 x i32]* %24, i64 0, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = ashr i32 %212, 3
  %214 = and i32 %213, 7
  %215 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 1
  store i32 %214, i32* %215, align 4
  %216 = load i32, i32* %15, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [16 x i32], [16 x i32]* %24, i64 0, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = ashr i32 %219, 6
  %221 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 2
  store i32 %220, i32* %221, align 4
  %222 = load i32, i32* %18, align 4
  %223 = icmp eq i32 %222, 1
  br i1 %223, label %224, label %235

224:                                              ; preds = %202
  %225 = load i32, i32* %15, align 4
  %226 = load i32, i32* %19, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %228, label %235

228:                                              ; preds = %224
  %229 = load i32*, i32** %7, align 8
  %230 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 0
  %231 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %232 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %233 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 0
  %234 = call i32 @read_vec_pos(i32* %229, i32* %230, i32* %231, i32* %232, i32* %233)
  br label %235

235:                                              ; preds = %228, %224, %202
  br label %252

236:                                              ; preds = %199
  %237 = load i32, i32* %18, align 4
  %238 = icmp eq i32 %237, 2
  br i1 %238, label %239, label %251

239:                                              ; preds = %236
  %240 = load i32*, i32** %7, align 8
  %241 = call i32 @get_bits1(i32* %240)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %250

243:                                              ; preds = %239
  %244 = load i32*, i32** %7, align 8
  %245 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 0
  %246 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %247 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %248 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 0
  %249 = call i32 @read_vec_pos(i32* %244, i32* %245, i32* %246, i32* %247, i32* %248)
  br label %250

250:                                              ; preds = %243, %239
  br label %251

251:                                              ; preds = %250, %236
  br label %252

252:                                              ; preds = %251, %235
  store i32 0, i32* %17, align 4
  br label %253

253:                                              ; preds = %280, %252
  %254 = load i32, i32* %17, align 4
  %255 = icmp slt i32 %254, 3
  br i1 %255, label %256, label %283

256:                                              ; preds = %253
  %257 = load i32*, i32** %7, align 8
  %258 = load i32, i32* %17, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* %17, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %11, i64 0, i64 %263
  %265 = getelementptr inbounds [4 x i64], [4 x i64]* %264, i64 0, i64 0
  %266 = load i32, i32* %17, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %17, align 4
  %271 = load i32, i32* %26, align 4
  %272 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %273 = call i8* @get_value_cached(i32* %257, i32 %261, i64* %265, i32 %269, i32 %270, i32 %271, i32* %272)
  %274 = ptrtoint i8* %273 to i64
  %275 = load i32, i32* %17, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds [3 x i64*], [3 x i64*]* %25, i64 0, i64 %276
  %278 = load i64*, i64** %277, align 8
  %279 = getelementptr inbounds i64, i64* %278, i32 1
  store i64* %279, i64** %277, align 8
  store i64 %274, i64* %278, align 8
  br label %280

280:                                              ; preds = %256
  %281 = load i32, i32* %17, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %17, align 4
  br label %253

283:                                              ; preds = %253
  %284 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 0
  %285 = call i32 @MKVAL(i32* %284)
  %286 = load i32, i32* %15, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [16 x i32], [16 x i32]* %24, i64 0, i64 %287
  store i32 %285, i32* %288, align 4
  br label %289

289:                                              ; preds = %283
  %290 = load i32, i32* %15, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %15, align 4
  br label %196

292:                                              ; preds = %196
  br label %448

293:                                              ; preds = %173
  %294 = load i32*, i32** %7, align 8
  %295 = call i32 @get_bits1(i32* %294)
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %308

297:                                              ; preds = %293
  %298 = load i32*, i32** %7, align 8
  %299 = call i32 @get_bits(i32* %298, i32 4)
  store i32 %299, i32* %19, align 4
  %300 = load i32, i32* %19, align 4
  %301 = load i32, i32* %21, align 4
  %302 = icmp sge i32 %300, %301
  br i1 %302, label %303, label %306

303:                                              ; preds = %297
  %304 = load i32, i32* %19, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %19, align 4
  br label %306

306:                                              ; preds = %303, %297
  %307 = load i32, i32* %19, align 4
  store i32 %307, i32* %21, align 4
  br label %310

308:                                              ; preds = %293
  %309 = load i32, i32* %21, align 4
  store i32 %309, i32* %19, align 4
  br label %310

310:                                              ; preds = %308, %306
  %311 = load i32, i32* %19, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %372

313:                                              ; preds = %310
  %314 = getelementptr inbounds [16 x i32], [16 x i32]* %24, i64 0, i64 0
  %315 = load i32, i32* %314, align 16
  %316 = and i32 %315, 7
  %317 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 0
  store i32 %316, i32* %317, align 4
  %318 = getelementptr inbounds [16 x i32], [16 x i32]* %24, i64 0, i64 0
  %319 = load i32, i32* %318, align 16
  %320 = ashr i32 %319, 3
  %321 = and i32 %320, 7
  %322 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 1
  store i32 %321, i32* %322, align 4
  %323 = getelementptr inbounds [16 x i32], [16 x i32]* %24, i64 0, i64 0
  %324 = load i32, i32* %323, align 16
  %325 = ashr i32 %324, 6
  %326 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 2
  store i32 %325, i32* %326, align 4
  store i32 0, i32* %15, align 4
  br label %327

327:                                              ; preds = %368, %313
  %328 = load i32, i32* %15, align 4
  %329 = icmp slt i32 %328, 3
  br i1 %329, label %330, label %371

330:                                              ; preds = %327
  store i32 0, i32* %17, align 4
  br label %331

331:                                              ; preds = %364, %330
  %332 = load i32, i32* %17, align 4
  %333 = load i32, i32* %19, align 4
  %334 = icmp slt i32 %332, %333
  br i1 %334, label %335, label %367

335:                                              ; preds = %331
  %336 = load i32*, i32** %7, align 8
  %337 = load i32, i32* %15, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 %338
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* %15, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %11, i64 0, i64 %342
  %344 = getelementptr inbounds [4 x i64], [4 x i64]* %343, i64 0, i64 0
  %345 = load i32, i32* %15, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* %15, align 4
  %350 = load i32, i32* %26, align 4
  %351 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %352 = call i8* @get_value_cached(i32* %336, i32 %340, i64* %344, i32 %348, i32 %349, i32 %350, i32* %351)
  %353 = ptrtoint i8* %352 to i64
  %354 = load i32, i32* %15, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds [3 x i64*], [3 x i64*]* %25, i64 0, i64 %355
  %357 = load i64*, i64** %356, align 8
  %358 = getelementptr inbounds i64, i64* %357, i32 1
  store i64* %358, i64** %356, align 8
  store i64 %353, i64* %357, align 8
  %359 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 0
  %360 = call i32 @MKVAL(i32* %359)
  %361 = load i32, i32* %17, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds [16 x i32], [16 x i32]* %24, i64 0, i64 %362
  store i32 %360, i32* %363, align 4
  br label %364

364:                                              ; preds = %335
  %365 = load i32, i32* %17, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %17, align 4
  br label %331

367:                                              ; preds = %331
  br label %368

368:                                              ; preds = %367
  %369 = load i32, i32* %15, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %15, align 4
  br label %327

371:                                              ; preds = %327
  br label %372

372:                                              ; preds = %371, %310
  %373 = load i32, i32* %19, align 4
  %374 = icmp ne i32 %373, 16
  br i1 %374, label %375, label %447

375:                                              ; preds = %372
  %376 = load i32, i32* %20, align 4
  %377 = and i32 %376, 7
  %378 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 0
  store i32 %377, i32* %378, align 4
  %379 = load i32, i32* %20, align 4
  %380 = ashr i32 %379, 3
  %381 = and i32 %380, 7
  %382 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 1
  store i32 %381, i32* %382, align 4
  %383 = load i32, i32* %20, align 4
  %384 = ashr i32 %383, 6
  %385 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 2
  store i32 %384, i32* %385, align 4
  %386 = load i32*, i32** %7, align 8
  %387 = call i32 @get_bits1(i32* %386)
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %398

389:                                              ; preds = %375
  %390 = load i32*, i32** %7, align 8
  %391 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 0
  %392 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %393 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %394 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 0
  %395 = call i32 @read_vec_pos(i32* %390, i32* %391, i32* %392, i32* %393, i32* %394)
  %396 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 0
  %397 = call i32 @MKVAL(i32* %396)
  store i32 %397, i32* %20, align 4
  br label %398

398:                                              ; preds = %389, %375
  store i32 0, i32* %15, align 4
  br label %399

399:                                              ; preds = %443, %398
  %400 = load i32, i32* %15, align 4
  %401 = icmp slt i32 %400, 3
  br i1 %401, label %402, label %446

402:                                              ; preds = %399
  store i32 0, i32* %17, align 4
  br label %403

403:                                              ; preds = %439, %402
  %404 = load i32, i32* %17, align 4
  %405 = load i32, i32* %19, align 4
  %406 = sub nsw i32 16, %405
  %407 = icmp slt i32 %404, %406
  br i1 %407, label %408, label %442

408:                                              ; preds = %403
  %409 = load i32*, i32** %7, align 8
  %410 = load i32, i32* %15, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 %411
  %413 = load i32, i32* %412, align 4
  %414 = load i32, i32* %15, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %11, i64 0, i64 %415
  %417 = getelementptr inbounds [4 x i64], [4 x i64]* %416, i64 0, i64 0
  %418 = load i32, i32* %15, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 %419
  %421 = load i32, i32* %420, align 4
  %422 = load i32, i32* %15, align 4
  %423 = load i32, i32* %26, align 4
  %424 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %425 = call i8* @get_value_cached(i32* %409, i32 %413, i64* %417, i32 %421, i32 %422, i32 %423, i32* %424)
  %426 = ptrtoint i8* %425 to i64
  %427 = load i32, i32* %15, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds [3 x i64*], [3 x i64*]* %25, i64 0, i64 %428
  %430 = load i64*, i64** %429, align 8
  %431 = getelementptr inbounds i64, i64* %430, i32 1
  store i64* %431, i64** %429, align 8
  store i64 %426, i64* %430, align 8
  %432 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 0
  %433 = call i32 @MKVAL(i32* %432)
  %434 = load i32, i32* %19, align 4
  %435 = load i32, i32* %17, align 4
  %436 = add nsw i32 %434, %435
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds [16 x i32], [16 x i32]* %24, i64 0, i64 %437
  store i32 %433, i32* %438, align 4
  br label %439

439:                                              ; preds = %408
  %440 = load i32, i32* %17, align 4
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %17, align 4
  br label %403

442:                                              ; preds = %403
  br label %443

443:                                              ; preds = %442
  %444 = load i32, i32* %15, align 4
  %445 = add nsw i32 %444, 1
  store i32 %445, i32* %15, align 4
  br label %399

446:                                              ; preds = %399
  br label %447

447:                                              ; preds = %446, %372
  br label %448

448:                                              ; preds = %447, %292
  br label %449

449:                                              ; preds = %448
  %450 = load i32, i32* %16, align 4
  %451 = add nsw i32 %450, 1
  store i32 %451, i32* %16, align 4
  br label %170

452:                                              ; preds = %170
  store i32 0, i32* %15, align 4
  br label %453

453:                                              ; preds = %499, %452
  %454 = load i32, i32* %15, align 4
  %455 = icmp slt i32 %454, 3
  br i1 %455, label %456, label %502

456:                                              ; preds = %453
  store i32 0, i32* %16, align 4
  br label %457

457:                                              ; preds = %495, %456
  %458 = load i32, i32* %16, align 4
  %459 = icmp slt i32 %458, 16
  br i1 %459, label %460, label %498

460:                                              ; preds = %457
  %461 = load i64**, i64*** %8, align 8
  %462 = load i32, i32* %15, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i64*, i64** %461, i64 %463
  %465 = load i64*, i64** %464, align 8
  %466 = load i32, i32* %9, align 4
  %467 = mul nsw i32 %466, 16
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds i64, i64* %465, i64 %468
  %470 = load i32, i32* %16, align 4
  %471 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %472 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %471, i32 0, i32 2
  %473 = load %struct.TYPE_4__*, %struct.TYPE_4__** %472, align 8
  %474 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %473, i32 0, i32 0
  %475 = load i32*, i32** %474, align 8
  %476 = load i32, i32* %15, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds i32, i32* %475, i64 %477
  %479 = load i32, i32* %478, align 4
  %480 = mul nsw i32 %470, %479
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i64, i64* %469, i64 %481
  %483 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %484 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %483, i32 0, i32 1
  %485 = load i64**, i64*** %484, align 8
  %486 = load i32, i32* %15, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds i64*, i64** %485, i64 %487
  %489 = load i64*, i64** %488, align 8
  %490 = load i32, i32* %16, align 4
  %491 = mul nsw i32 %490, 16
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds i64, i64* %489, i64 %492
  %494 = call i32 @memcpy(i64* %482, i64* %493, i32 16)
  br label %495

495:                                              ; preds = %460
  %496 = load i32, i32* %16, align 4
  %497 = add nsw i32 %496, 1
  store i32 %497, i32* %16, align 4
  br label %457

498:                                              ; preds = %457
  br label %499

499:                                              ; preds = %498
  %500 = load i32, i32* %15, align 4
  %501 = add nsw i32 %500, 1
  store i32 %501, i32* %15, align 4
  br label %453

502:                                              ; preds = %453
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @get_unary(i32*, i32, i32) #2

declare dso_local i64 @get_coeff(i32*, i32*) #2

declare dso_local i32 @get_bits1(i32*) #2

declare dso_local i32 @get_bits(i32*, i32) #2

declare dso_local i32 @read_vec_pos(i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i8* @get_value_cached(i32*, i32, i64*, i32, i32, i32, i32*) #2

declare dso_local i32 @MKVAL(i32*) #2

declare dso_local i32 @memcpy(i64*, i64*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
