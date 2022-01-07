; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_utfconv.c_utf8_encodestr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_utfconv.c_utf8_encodestr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UTF_REVERSE_ENDIAN = common dso_local global i32 0, align 4
@UTF_NO_NULL_TERM = common dso_local global i32 0, align 4
@UTF_DECOMPOSED = common dso_local global i32 0, align 4
@UTF_SFM_CONVERSIONS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UCS_ALT_NULL = common dso_local global i8 0, align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4
@SP_HIGH_FIRST = common dso_local global i8 0, align 1
@SP_HIGH_LAST = common dso_local global i8 0, align 1
@SP_LOW_FIRST = common dso_local global i8 0, align 1
@SP_LOW_LAST = common dso_local global i8 0, align 1
@SP_HALF_SHIFT = common dso_local global i8 0, align 1
@SP_HALF_BASE = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utf8_encodestr(i8* %0, i64 %1, i32* %2, i64* %3, i64 %4, i8 signext %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8, align 1
  %18 = alloca i8*, align 8
  %19 = alloca [8 x i8], align 1
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8, align 1
  %28 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64 %4, i64* %12, align 8
  store i8 %5, i8* %13, align 1
  store i32 %6, i32* %14, align 4
  store i8* null, i8** %18, align 8
  store i32 0, i32* %20, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* @UTF_REVERSE_ENDIAN, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %22, align 4
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* @UTF_NO_NULL_TERM, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %23, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* @UTF_DECOMPOSED, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %24, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* @UTF_SFM_CONVERSIONS, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %43 = load i32*, i32** %10, align 8
  store i32* %43, i32** %15, align 8
  %44 = load i32*, i32** %15, align 8
  %45 = load i64, i64* %12, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32* %46, i32** %16, align 8
  %47 = load i32, i32* %23, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %7
  %50 = load i32*, i32** %16, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 -1
  store i32* %51, i32** %16, align 8
  br label %52

52:                                               ; preds = %49, %7
  %53 = load i64, i64* %9, align 8
  %54 = udiv i64 %53, 2
  store i64 %54, i64* %21, align 8
  br label %55

55:                                               ; preds = %315, %280, %237, %52
  %56 = load i64, i64* %21, align 8
  %57 = add i64 %56, -1
  store i64 %57, i64* %21, align 8
  %58 = icmp ugt i64 %56, 0
  br i1 %58, label %59, label %316

59:                                               ; preds = %55
  %60 = load i32, i32* %20, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i32, i32* %20, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %20, align 4
  %65 = load i8*, i8** %18, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %18, align 8
  %67 = load i8, i8* %65, align 1
  store i8 %67, i8* %17, align 1
  br label %104

68:                                               ; preds = %59
  %69 = load i32, i32* %22, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %8, align 8
  %74 = load i8, i8* %72, align 1
  %75 = call signext i8 @OSSwapInt16(i8 signext %74)
  %76 = sext i8 %75 to i32
  br label %82

77:                                               ; preds = %68
  %78 = load i8*, i8** %8, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %8, align 8
  %80 = load i8, i8* %78, align 1
  %81 = sext i8 %80 to i32
  br label %82

82:                                               ; preds = %77, %71
  %83 = phi i32 [ %76, %71 ], [ %81, %77 ]
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %17, align 1
  %85 = load i32, i32* %24, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %103

87:                                               ; preds = %82
  %88 = load i8, i8* %17, align 1
  %89 = call i64 @unicode_decomposeable(i8 signext %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %87
  %92 = load i8, i8* %17, align 1
  %93 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %94 = call i32 @unicode_decompose(i8 signext %92, i8* %93)
  %95 = sub nsw i32 %94, 1
  store i32 %95, i32* %20, align 4
  %96 = load i32, i32* %20, align 4
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %21, align 8
  %99 = add i64 %98, %97
  store i64 %99, i64* %21, align 8
  %100 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %101 = load i8, i8* %100, align 1
  store i8 %101, i8* %17, align 1
  %102 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 1
  store i8* %102, i8** %18, align 8
  br label %103

103:                                              ; preds = %91, %87, %82
  br label %104

104:                                              ; preds = %103, %62
  %105 = load i8, i8* %17, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 47
  br i1 %107, label %108, label %116

108:                                              ; preds = %104
  %109 = load i8, i8* %13, align 1
  %110 = icmp ne i8 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load i8, i8* %13, align 1
  store i8 %112, i8* %17, align 1
  br label %115

113:                                              ; preds = %108
  store i8 95, i8* %17, align 1
  %114 = load i32, i32* @EINVAL, align 4
  store i32 %114, i32* %26, align 4
  br label %115

115:                                              ; preds = %113, %111
  br label %123

116:                                              ; preds = %104
  %117 = load i8, i8* %17, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = load i8, i8* @UCS_ALT_NULL, align 1
  store i8 %121, i8* %17, align 1
  br label %122

122:                                              ; preds = %120, %116
  br label %123

123:                                              ; preds = %122, %115
  %124 = load i8, i8* %17, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp slt i32 %125, 128
  br i1 %126, label %127, label %138

127:                                              ; preds = %123
  %128 = load i32*, i32** %10, align 8
  %129 = load i32*, i32** %16, align 8
  %130 = icmp uge i32* %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %132, i32* %26, align 4
  br label %316

133:                                              ; preds = %127
  %134 = load i8, i8* %17, align 1
  %135 = sext i8 %134 to i32
  %136 = load i32*, i32** %10, align 8
  %137 = getelementptr inbounds i32, i32* %136, i32 1
  store i32* %137, i32** %10, align 8
  store i32 %135, i32* %136, align 4
  br label %315

138:                                              ; preds = %123
  %139 = load i8, i8* %17, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp slt i32 %140, 2048
  br i1 %141, label %142, label %162

142:                                              ; preds = %138
  %143 = load i32*, i32** %10, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  %145 = load i32*, i32** %16, align 8
  %146 = icmp uge i32* %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %142
  %148 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %148, i32* %26, align 4
  br label %316

149:                                              ; preds = %142
  %150 = load i8, i8* %17, align 1
  %151 = sext i8 %150 to i32
  %152 = ashr i32 %151, 6
  %153 = or i32 192, %152
  %154 = load i32*, i32** %10, align 8
  %155 = getelementptr inbounds i32, i32* %154, i32 1
  store i32* %155, i32** %10, align 8
  store i32 %153, i32* %154, align 4
  %156 = load i8, i8* %17, align 1
  %157 = sext i8 %156 to i32
  %158 = and i32 63, %157
  %159 = or i32 128, %158
  %160 = load i32*, i32** %10, align 8
  %161 = getelementptr inbounds i32, i32* %160, i32 1
  store i32* %161, i32** %10, align 8
  store i32 %159, i32* %160, align 4
  br label %314

162:                                              ; preds = %138
  %163 = load i8, i8* %17, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %164, 65534
  br i1 %165, label %170, label %166

166:                                              ; preds = %162
  %167 = load i8, i8* %17, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp eq i32 %168, 65535
  br i1 %169, label %170, label %172

170:                                              ; preds = %166, %162
  %171 = load i32, i32* @EINVAL, align 4
  store i32 %171, i32* %26, align 4
  br label %316

172:                                              ; preds = %166
  %173 = load i8, i8* %17, align 1
  %174 = sext i8 %173 to i32
  %175 = load i8, i8* @SP_HIGH_FIRST, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp sge i32 %174, %176
  br i1 %177, label %178, label %265

178:                                              ; preds = %172
  %179 = load i8, i8* %17, align 1
  %180 = sext i8 %179 to i32
  %181 = load i8, i8* @SP_HIGH_LAST, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp sle i32 %180, %182
  br i1 %183, label %184, label %265

184:                                              ; preds = %178
  %185 = load i64, i64* %21, align 8
  %186 = icmp ugt i64 %185, 0
  br i1 %186, label %187, label %265

187:                                              ; preds = %184
  %188 = load i32, i32* %22, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %187
  %191 = load i8*, i8** %8, align 8
  %192 = load i8, i8* %191, align 1
  %193 = call signext i8 @OSSwapInt16(i8 signext %192)
  %194 = sext i8 %193 to i32
  br label %199

195:                                              ; preds = %187
  %196 = load i8*, i8** %8, align 8
  %197 = load i8, i8* %196, align 1
  %198 = sext i8 %197 to i32
  br label %199

199:                                              ; preds = %195, %190
  %200 = phi i32 [ %194, %190 ], [ %198, %195 ]
  %201 = trunc i32 %200 to i8
  store i8 %201, i8* %27, align 1
  %202 = load i8, i8* %27, align 1
  %203 = sext i8 %202 to i32
  %204 = load i8, i8* @SP_LOW_FIRST, align 1
  %205 = sext i8 %204 to i32
  %206 = icmp sge i32 %203, %205
  br i1 %206, label %207, label %264

207:                                              ; preds = %199
  %208 = load i8, i8* %27, align 1
  %209 = sext i8 %208 to i32
  %210 = load i8, i8* @SP_LOW_LAST, align 1
  %211 = sext i8 %210 to i32
  %212 = icmp sle i32 %209, %211
  br i1 %212, label %213, label %264

213:                                              ; preds = %207
  %214 = load i8, i8* %17, align 1
  %215 = sext i8 %214 to i32
  %216 = load i8, i8* @SP_HIGH_FIRST, align 1
  %217 = sext i8 %216 to i32
  %218 = sub nsw i32 %215, %217
  %219 = load i8, i8* @SP_HALF_SHIFT, align 1
  %220 = sext i8 %219 to i32
  %221 = shl i32 %218, %220
  %222 = load i8, i8* %27, align 1
  %223 = sext i8 %222 to i32
  %224 = load i8, i8* @SP_LOW_FIRST, align 1
  %225 = sext i8 %224 to i32
  %226 = sub nsw i32 %223, %225
  %227 = add nsw i32 %221, %226
  %228 = load i8, i8* @SP_HALF_BASE, align 1
  %229 = sext i8 %228 to i32
  %230 = add nsw i32 %227, %229
  store i32 %230, i32* %28, align 4
  %231 = load i32*, i32** %10, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 3
  %233 = load i32*, i32** %16, align 8
  %234 = icmp uge i32* %232, %233
  br i1 %234, label %235, label %237

235:                                              ; preds = %213
  %236 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %236, i32* %26, align 4
  br label %316

237:                                              ; preds = %213
  %238 = load i64, i64* %21, align 8
  %239 = add i64 %238, -1
  store i64 %239, i64* %21, align 8
  %240 = load i8*, i8** %8, align 8
  %241 = getelementptr inbounds i8, i8* %240, i32 1
  store i8* %241, i8** %8, align 8
  %242 = load i32, i32* %28, align 4
  %243 = ashr i32 %242, 18
  %244 = or i32 240, %243
  %245 = load i32*, i32** %10, align 8
  %246 = getelementptr inbounds i32, i32* %245, i32 1
  store i32* %246, i32** %10, align 8
  store i32 %244, i32* %245, align 4
  %247 = load i32, i32* %28, align 4
  %248 = ashr i32 %247, 12
  %249 = and i32 63, %248
  %250 = or i32 128, %249
  %251 = load i32*, i32** %10, align 8
  %252 = getelementptr inbounds i32, i32* %251, i32 1
  store i32* %252, i32** %10, align 8
  store i32 %250, i32* %251, align 4
  %253 = load i32, i32* %28, align 4
  %254 = ashr i32 %253, 6
  %255 = and i32 63, %254
  %256 = or i32 128, %255
  %257 = load i32*, i32** %10, align 8
  %258 = getelementptr inbounds i32, i32* %257, i32 1
  store i32* %258, i32** %10, align 8
  store i32 %256, i32* %257, align 4
  %259 = load i32, i32* %28, align 4
  %260 = and i32 63, %259
  %261 = or i32 128, %260
  %262 = load i32*, i32** %10, align 8
  %263 = getelementptr inbounds i32, i32* %262, i32 1
  store i32* %263, i32** %10, align 8
  store i32 %261, i32* %262, align 4
  br label %55

264:                                              ; preds = %207, %199
  br label %287

265:                                              ; preds = %184, %178, %172
  %266 = load i32, i32* %25, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %286

268:                                              ; preds = %265
  %269 = load i8, i8* %17, align 1
  %270 = call signext i8 @sfm_to_ucs(i8 signext %269)
  store i8 %270, i8* %17, align 1
  %271 = load i8, i8* %17, align 1
  %272 = sext i8 %271 to i32
  %273 = icmp slt i32 %272, 128
  br i1 %273, label %274, label %285

274:                                              ; preds = %268
  %275 = load i32*, i32** %10, align 8
  %276 = load i32*, i32** %16, align 8
  %277 = icmp uge i32* %275, %276
  br i1 %277, label %278, label %280

278:                                              ; preds = %274
  %279 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %279, i32* %26, align 4
  br label %316

280:                                              ; preds = %274
  %281 = load i8, i8* %17, align 1
  %282 = sext i8 %281 to i32
  %283 = load i32*, i32** %10, align 8
  %284 = getelementptr inbounds i32, i32* %283, i32 1
  store i32* %284, i32** %10, align 8
  store i32 %282, i32* %283, align 4
  br label %55

285:                                              ; preds = %268
  br label %286

286:                                              ; preds = %285, %265
  br label %287

287:                                              ; preds = %286, %264
  %288 = load i32*, i32** %10, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 2
  %290 = load i32*, i32** %16, align 8
  %291 = icmp uge i32* %289, %290
  br i1 %291, label %292, label %294

292:                                              ; preds = %287
  %293 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %293, i32* %26, align 4
  br label %316

294:                                              ; preds = %287
  %295 = load i8, i8* %17, align 1
  %296 = sext i8 %295 to i32
  %297 = ashr i32 %296, 12
  %298 = or i32 224, %297
  %299 = load i32*, i32** %10, align 8
  %300 = getelementptr inbounds i32, i32* %299, i32 1
  store i32* %300, i32** %10, align 8
  store i32 %298, i32* %299, align 4
  %301 = load i8, i8* %17, align 1
  %302 = sext i8 %301 to i32
  %303 = ashr i32 %302, 6
  %304 = and i32 63, %303
  %305 = or i32 128, %304
  %306 = load i32*, i32** %10, align 8
  %307 = getelementptr inbounds i32, i32* %306, i32 1
  store i32* %307, i32** %10, align 8
  store i32 %305, i32* %306, align 4
  %308 = load i8, i8* %17, align 1
  %309 = sext i8 %308 to i32
  %310 = and i32 63, %309
  %311 = or i32 128, %310
  %312 = load i32*, i32** %10, align 8
  %313 = getelementptr inbounds i32, i32* %312, i32 1
  store i32* %313, i32** %10, align 8
  store i32 %311, i32* %312, align 4
  br label %314

314:                                              ; preds = %294, %149
  br label %315

315:                                              ; preds = %314, %133
  br label %55

316:                                              ; preds = %292, %278, %235, %170, %147, %131, %55
  %317 = load i32*, i32** %10, align 8
  %318 = load i32*, i32** %15, align 8
  %319 = ptrtoint i32* %317 to i64
  %320 = ptrtoint i32* %318 to i64
  %321 = sub i64 %319, %320
  %322 = sdiv exact i64 %321, 4
  %323 = load i64*, i64** %11, align 8
  store i64 %322, i64* %323, align 8
  %324 = load i32, i32* %23, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %329

326:                                              ; preds = %316
  %327 = load i32*, i32** %10, align 8
  %328 = getelementptr inbounds i32, i32* %327, i32 1
  store i32* %328, i32** %10, align 8
  store i32 0, i32* %327, align 4
  br label %329

329:                                              ; preds = %326, %316
  %330 = load i32, i32* %26, align 4
  ret i32 %330
}

declare dso_local signext i8 @OSSwapInt16(i8 signext) #1

declare dso_local i64 @unicode_decomposeable(i8 signext) #1

declare dso_local i32 @unicode_decompose(i8 signext, i8*) #1

declare dso_local signext i8 @sfm_to_ucs(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
