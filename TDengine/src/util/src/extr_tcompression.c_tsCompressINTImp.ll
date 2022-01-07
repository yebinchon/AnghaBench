; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tcompression.c_tsCompressINTImp.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tcompression.c_tsCompressINTImp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.tsCompressINTImp.bit_per_integer = private unnamed_addr constant [16 x i8] c"\00\00\01\02\03\04\05\06\07\08\0A\0C\0F\14\1E<", align 16
@__const.tsCompressINTImp.selector_to_elems = private unnamed_addr constant [16 x i32] [i32 240, i32 120, i32 60, i32 30, i32 20, i32 15, i32 12, i32 10, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1], align 16
@__const.tsCompressINTImp.bit_to_selector = private unnamed_addr constant [61 x i8] c"\00\02\03\04\05\06\07\08\09\0A\0A\0B\0B\0C\0C\0C\0D\0D\0D\0D\0D\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F", align 16
@LONG_BYTES = common dso_local global i32 0, align 4
@INT_BYTES = common dso_local global i32 0, align 4
@SHORT_BYTES = common dso_local global i32 0, align 4
@CHAR_BYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Wrong integer types.\0A\00", align 1
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@SIMPLE8B_MAX_INT64 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tsCompressINTImp(i8* %0, i32 %1, i8* %2, i8 signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca [16 x i8], align 16
  %11 = alloca [16 x i32], align 16
  %12 = alloca [61 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i8, align 1
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8 %3, i8* %9, align 1
  %32 = bitcast [16 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %32, i8* align 16 getelementptr inbounds ([16 x i8], [16 x i8]* @__const.tsCompressINTImp.bit_per_integer, i32 0, i32 0), i64 16, i1 false)
  %33 = bitcast [16 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %33, i8* align 16 bitcast ([16 x i32]* @__const.tsCompressINTImp.selector_to_elems to i8*), i64 64, i1 false)
  %34 = bitcast [61 x i8]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %34, i8* align 16 getelementptr inbounds ([61 x i8], [61 x i8]* @__const.tsCompressINTImp.bit_to_selector, i32 0, i32 0), i64 61, i1 false)
  store i32 0, i32* %13, align 4
  %35 = load i8, i8* %9, align 1
  %36 = sext i8 %35 to i32
  switch i32 %36, label %45 [
    i32 131, label %37
    i32 130, label %39
    i32 129, label %41
    i32 128, label %43
  ]

37:                                               ; preds = %4
  %38 = load i32, i32* @LONG_BYTES, align 4
  store i32 %38, i32* %13, align 4
  br label %48

39:                                               ; preds = %4
  %40 = load i32, i32* @INT_BYTES, align 4
  store i32 %40, i32* %13, align 4
  br label %48

41:                                               ; preds = %4
  %42 = load i32, i32* @SHORT_BYTES, align 4
  store i32 %42, i32* %13, align 4
  br label %48

43:                                               ; preds = %4
  %44 = load i32, i32* @CHAR_BYTES, align 4
  store i32 %44, i32* %13, align 4
  br label %48

45:                                               ; preds = %4
  %46 = call i32 @perror(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %47 = call i32 @exit(i32 1) #4
  unreachable

48:                                               ; preds = %43, %41, %39, %37
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %13, align 4
  %51 = mul nsw i32 %49, %50
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %14, align 4
  store i32 1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %53

53:                                               ; preds = %304, %48
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %305

57:                                               ; preds = %53
  store i8 0, i8* %18, align 1
  store i8 0, i8* %19, align 1
  store i32 0, i32* %20, align 4
  %58 = load i32, i32* %16, align 4
  store i32 %58, i32* %21, align 4
  %59 = load i32, i32* %17, align 4
  store i32 %59, i32* %22, align 4
  br label %60

60:                                               ; preds = %200, %57
  %61 = load i32, i32* %22, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %203

64:                                               ; preds = %60
  store i32 0, i32* %23, align 4
  %65 = load i8, i8* %9, align 1
  %66 = sext i8 %65 to i32
  switch i32 %66, label %95 [
    i32 128, label %67
    i32 129, label %74
    i32 130, label %81
    i32 131, label %88
  ]

67:                                               ; preds = %64
  %68 = load i8*, i8** %6, align 8
  %69 = bitcast i8* %68 to i32*
  %70 = load i32, i32* %22, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %23, align 4
  br label %95

74:                                               ; preds = %64
  %75 = load i8*, i8** %6, align 8
  %76 = bitcast i8* %75 to i32*
  %77 = load i32, i32* %22, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %23, align 4
  br label %95

81:                                               ; preds = %64
  %82 = load i8*, i8** %6, align 8
  %83 = bitcast i8* %82 to i32*
  %84 = load i32, i32* %22, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %23, align 4
  br label %95

88:                                               ; preds = %64
  %89 = load i8*, i8** %6, align 8
  %90 = bitcast i8* %89 to i32*
  %91 = load i32, i32* %22, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %23, align 4
  br label %95

95:                                               ; preds = %64, %88, %81, %74, %67
  %96 = load i32, i32* %23, align 4
  %97 = load i32, i32* %16, align 4
  %98 = sub nsw i32 0, %97
  %99 = call i32 @safeInt64Add(i32 %96, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %95
  br label %294

102:                                              ; preds = %95
  %103 = load i32, i32* %23, align 4
  %104 = load i32, i32* %21, align 4
  %105 = sub nsw i32 %103, %104
  store i32 %105, i32* %24, align 4
  %106 = load i32, i32* %24, align 4
  %107 = load i32, i32* @LONG_BYTES, align 4
  %108 = load i32, i32* @BITS_PER_BYTE, align 4
  %109 = mul nsw i32 %107, %108
  %110 = sub nsw i32 %109, 1
  %111 = ashr i32 %106, %110
  %112 = load i32, i32* %24, align 4
  %113 = shl i32 %112, 1
  %114 = xor i32 %111, %113
  %115 = sext i32 %114 to i64
  store i64 %115, i64* %25, align 8
  %116 = load i64, i64* %25, align 8
  %117 = load i64, i64* @SIMPLE8B_MAX_INT64, align 8
  %118 = icmp sge i64 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %102
  br label %294

120:                                              ; preds = %102
  %121 = load i64, i64* %25, align 8
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  store i8 0, i8* %26, align 1
  br label %132

124:                                              ; preds = %120
  %125 = load i32, i32* @LONG_BYTES, align 4
  %126 = load i32, i32* @BITS_PER_BYTE, align 4
  %127 = mul nsw i32 %125, %126
  %128 = load i64, i64* %25, align 8
  %129 = call i32 @BUILDIN_CLZL(i64 %128)
  %130 = sub nsw i32 %127, %129
  %131 = trunc i32 %130 to i8
  store i8 %131, i8* %26, align 1
  br label %132

132:                                              ; preds = %124, %123
  %133 = load i32, i32* %20, align 4
  %134 = add nsw i32 %133, 1
  %135 = load i8, i8* %18, align 1
  %136 = sext i8 %135 to i64
  %137 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = icmp sle i32 %134, %138
  br i1 %139, label %140, label %178

140:                                              ; preds = %132
  %141 = load i32, i32* %20, align 4
  %142 = add nsw i32 %141, 1
  %143 = load i8, i8* %26, align 1
  %144 = sext i8 %143 to i64
  %145 = getelementptr inbounds [61 x i8], [61 x i8]* %12, i64 0, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i64
  %148 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = icmp sle i32 %142, %149
  br i1 %150, label %151, label %178

151:                                              ; preds = %140
  %152 = load i8, i8* %18, align 1
  %153 = sext i8 %152 to i32
  %154 = load i8, i8* %26, align 1
  %155 = sext i8 %154 to i64
  %156 = getelementptr inbounds [61 x i8], [61 x i8]* %12, i64 0, i64 %155
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp sgt i32 %153, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %151
  %161 = load i8, i8* %18, align 1
  %162 = sext i8 %161 to i32
  br label %169

163:                                              ; preds = %151
  %164 = load i8, i8* %26, align 1
  %165 = sext i8 %164 to i64
  %166 = getelementptr inbounds [61 x i8], [61 x i8]* %12, i64 0, i64 %165
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  br label %169

169:                                              ; preds = %163, %160
  %170 = phi i32 [ %162, %160 ], [ %168, %163 ]
  %171 = trunc i32 %170 to i8
  store i8 %171, i8* %18, align 1
  %172 = load i32, i32* %20, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %20, align 4
  %174 = load i8, i8* %18, align 1
  %175 = sext i8 %174 to i64
  %176 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 %175
  %177 = load i8, i8* %176, align 1
  store i8 %177, i8* %19, align 1
  br label %198

178:                                              ; preds = %140, %132
  br label %179

179:                                              ; preds = %186, %178
  %180 = load i32, i32* %20, align 4
  %181 = load i8, i8* %18, align 1
  %182 = sext i8 %181 to i64
  %183 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = icmp slt i32 %180, %184
  br i1 %185, label %186, label %189

186:                                              ; preds = %179
  %187 = load i8, i8* %18, align 1
  %188 = add i8 %187, 1
  store i8 %188, i8* %18, align 1
  br label %179

189:                                              ; preds = %179
  %190 = load i8, i8* %18, align 1
  %191 = sext i8 %190 to i64
  %192 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 %191
  %193 = load i32, i32* %192, align 4
  store i32 %193, i32* %20, align 4
  %194 = load i8, i8* %18, align 1
  %195 = sext i8 %194 to i64
  %196 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 %195
  %197 = load i8, i8* %196, align 1
  store i8 %197, i8* %19, align 1
  br label %203

198:                                              ; preds = %169
  %199 = load i32, i32* %23, align 4
  store i32 %199, i32* %21, align 4
  br label %200

200:                                              ; preds = %198
  %201 = load i32, i32* %22, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %22, align 4
  br label %60

203:                                              ; preds = %189, %60
  store i64 0, i64* %27, align 8
  %204 = load i8, i8* %18, align 1
  %205 = sext i8 %204 to i64
  %206 = load i64, i64* %27, align 8
  %207 = or i64 %206, %205
  store i64 %207, i64* %27, align 8
  store i32 0, i32* %28, align 4
  br label %208

208:                                              ; preds = %273, %203
  %209 = load i32, i32* %28, align 4
  %210 = load i32, i32* %20, align 4
  %211 = icmp slt i32 %209, %210
  br i1 %211, label %212, label %276

212:                                              ; preds = %208
  store i32 0, i32* %29, align 4
  %213 = load i8, i8* %9, align 1
  %214 = sext i8 %213 to i32
  switch i32 %214, label %243 [
    i32 128, label %215
    i32 129, label %222
    i32 130, label %229
    i32 131, label %236
  ]

215:                                              ; preds = %212
  %216 = load i8*, i8** %6, align 8
  %217 = bitcast i8* %216 to i32*
  %218 = load i32, i32* %17, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  store i32 %221, i32* %29, align 4
  br label %243

222:                                              ; preds = %212
  %223 = load i8*, i8** %6, align 8
  %224 = bitcast i8* %223 to i32*
  %225 = load i32, i32* %17, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  store i32 %228, i32* %29, align 4
  br label %243

229:                                              ; preds = %212
  %230 = load i8*, i8** %6, align 8
  %231 = bitcast i8* %230 to i32*
  %232 = load i32, i32* %17, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  store i32 %235, i32* %29, align 4
  br label %243

236:                                              ; preds = %212
  %237 = load i8*, i8** %6, align 8
  %238 = bitcast i8* %237 to i32*
  %239 = load i32, i32* %17, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  %242 = load i32, i32* %241, align 4
  store i32 %242, i32* %29, align 4
  br label %243

243:                                              ; preds = %212, %236, %229, %222, %215
  %244 = load i32, i32* %29, align 4
  %245 = load i32, i32* %16, align 4
  %246 = sub nsw i32 %244, %245
  store i32 %246, i32* %30, align 4
  %247 = load i32, i32* %30, align 4
  %248 = load i32, i32* @LONG_BYTES, align 4
  %249 = load i32, i32* @BITS_PER_BYTE, align 4
  %250 = mul nsw i32 %248, %249
  %251 = sub nsw i32 %250, 1
  %252 = ashr i32 %247, %251
  %253 = load i32, i32* %30, align 4
  %254 = shl i32 %253, 1
  %255 = xor i32 %252, %254
  %256 = sext i32 %255 to i64
  store i64 %256, i64* %31, align 8
  %257 = load i64, i64* %31, align 8
  %258 = load i8, i8* %19, align 1
  %259 = call i64 @INT64MASK(i8 signext %258)
  %260 = and i64 %257, %259
  %261 = load i8, i8* %19, align 1
  %262 = sext i8 %261 to i32
  %263 = load i32, i32* %28, align 4
  %264 = mul nsw i32 %262, %263
  %265 = add nsw i32 %264, 4
  %266 = zext i32 %265 to i64
  %267 = shl i64 %260, %266
  %268 = load i64, i64* %27, align 8
  %269 = or i64 %268, %267
  store i64 %269, i64* %27, align 8
  %270 = load i32, i32* %17, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %17, align 4
  %272 = load i32, i32* %29, align 4
  store i32 %272, i32* %16, align 4
  br label %273

273:                                              ; preds = %243
  %274 = load i32, i32* %28, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %28, align 4
  br label %208

276:                                              ; preds = %208
  %277 = load i32, i32* %15, align 4
  %278 = sext i32 %277 to i64
  %279 = add i64 %278, 8
  %280 = load i32, i32* %14, align 4
  %281 = sext i32 %280 to i64
  %282 = icmp ule i64 %279, %281
  br i1 %282, label %283, label %293

283:                                              ; preds = %276
  %284 = load i8*, i8** %8, align 8
  %285 = load i32, i32* %15, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i8, i8* %284, i64 %286
  %288 = call i32 (i8*, ...) @memcpy(i8* %287, i64* %27, i64 8)
  %289 = load i32, i32* %15, align 4
  %290 = sext i32 %289 to i64
  %291 = add i64 %290, 8
  %292 = trunc i64 %291 to i32
  store i32 %292, i32* %15, align 4
  br label %304

293:                                              ; preds = %276
  br label %294

294:                                              ; preds = %293, %119, %101
  %295 = load i8*, i8** %8, align 8
  %296 = getelementptr inbounds i8, i8* %295, i64 0
  store i8 1, i8* %296, align 1
  %297 = load i8*, i8** %8, align 8
  %298 = getelementptr inbounds i8, i8* %297, i64 1
  %299 = load i8*, i8** %6, align 8
  %300 = load i32, i32* %14, align 4
  %301 = sub nsw i32 %300, 1
  %302 = call i32 (i8*, ...) @memcpy(i8* %298, i8* %299, i32 %301)
  %303 = load i32, i32* %14, align 4
  store i32 %303, i32* %5, align 4
  br label %309

304:                                              ; preds = %283
  br label %53

305:                                              ; preds = %53
  %306 = load i8*, i8** %8, align 8
  %307 = getelementptr inbounds i8, i8* %306, i64 0
  store i8 0, i8* %307, align 1
  %308 = load i32, i32* %15, align 4
  store i32 %308, i32* %5, align 4
  br label %309

309:                                              ; preds = %305, %294
  %310 = load i32, i32* %5, align 4
  ret i32 %310
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @perror(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @safeInt64Add(i32, i32) #2

declare dso_local i32 @BUILDIN_CLZL(i64) #2

declare dso_local i64 @INT64MASK(i8 signext) #2

declare dso_local i32 @memcpy(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
