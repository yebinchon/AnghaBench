; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_antic.c_draw_partial_scanline.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_antic.c_draw_partial_scanline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@left_border_chars = common dso_local global i32 0, align 4
@right_border_start = common dso_local global i32 0, align 4
@LCHOP = common dso_local global i32 0, align 4
@RCHOP = common dso_local global i32 0, align 4
@chars_displayed = common dso_local global i32* null, align 8
@md = common dso_local global i64 0, align 8
@NORMAL1 = common dso_local global i64 0, align 8
@SCROLL1 = common dso_local global i64 0, align 8
@NORMAL2 = common dso_local global i64 0, align 8
@SCROLL2 = common dso_local global i64 0, align 8
@anticmode = common dso_local global i32 0, align 4
@ANTIC_DMACTL = common dso_local global i32 0, align 4
@left_border_start = common dso_local global i32 0, align 4
@x_min = common dso_local global i32* null, align 8
@scrn_ptr = common dso_local global i32* null, align 8
@need_load = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@right_border_end = common dso_local global i32 0, align 4
@antic_memory = common dso_local global i64 0, align 8
@ANTIC_margin = common dso_local global i64 0, align 8
@ch_offset = common dso_local global i64* null, align 8
@GTIA_pm_scanline = common dso_local global i32* null, align 8
@scanlines_to_curses_display = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @draw_partial_scanline(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [4 x i32], align 16
  %14 = alloca [16 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %24 = load i32, i32* @left_border_chars, align 4
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @right_border_start, align 4
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @LCHOP, align 4
  %27 = mul nsw i32 %26, 4
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @LCHOP, align 4
  %29 = mul nsw i32 %28, 4
  %30 = load i32, i32* @left_border_chars, align 4
  %31 = mul nsw i32 %30, 4
  %32 = add nsw i32 %29, %31
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* @RCHOP, align 4
  %34 = sub nsw i32 48, %33
  %35 = mul nsw i32 %34, 4
  store i32 %35, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %36 = load i32*, i32** @chars_displayed, align 8
  %37 = load i64, i64* @md, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %12, align 4
  %40 = load i64, i64* @md, align 8
  %41 = load i64, i64* @NORMAL1, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %2
  %44 = load i64, i64* @md, align 8
  %45 = load i64, i64* @SCROLL1, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43, %2
  %48 = load i32, i32* %12, align 4
  %49 = mul nsw i32 %48, 2
  store i32 %49, i32* %12, align 4
  br label %62

50:                                               ; preds = %43
  %51 = load i64, i64* @md, align 8
  %52 = load i64, i64* @NORMAL2, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i64, i64* @md, align 8
  %56 = load i64, i64* @SCROLL2, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54, %50
  %59 = load i32, i32* %12, align 4
  %60 = mul nsw i32 %59, 4
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %58, %54
  br label %62

62:                                               ; preds = %61, %47
  %63 = load i32, i32* @anticmode, align 4
  %64 = icmp slt i32 %63, 2
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* @ANTIC_DMACTL, align 4
  %67 = and i32 %66, 3
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65, %62
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %8, align 4
  store i32 1, i32* %10, align 4
  br label %71

71:                                               ; preds = %69, %65
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %71
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %81, %77
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %87, %83
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %93, %89
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp sge i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %406

100:                                              ; preds = %95
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %153

104:                                              ; preds = %100
  %105 = load i32, i32* %3, align 4
  %106 = and i32 %105, -4
  store i32 %106, i32* %15, align 4
  %107 = load i32, i32* %3, align 4
  %108 = load i32, i32* %15, align 4
  %109 = sub nsw i32 %107, %108
  store i32 %109, i32* %16, align 4
  %110 = load i32, i32* %15, align 4
  store i32 %110, i32* @left_border_start, align 4
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* %7, align 4
  %114 = sub nsw i32 %112, %113
  %115 = sdiv i32 %114, 4
  %116 = sub nsw i32 %111, %115
  store i32 %116, i32* @left_border_chars, align 4
  %117 = load i32, i32* %3, align 4
  %118 = load i32*, i32** @x_min, align 8
  %119 = load i64, i64* @md, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = icmp sgt i32 %117, %121
  br i1 %122, label %123, label %152

123:                                              ; preds = %104
  %124 = load i32, i32* %3, align 4
  %125 = load i32*, i32** @x_min, align 8
  %126 = load i64, i64* @md, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = sub nsw i32 %124, %128
  %130 = sdiv i32 %129, 4
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %3, align 4
  %132 = load i32*, i32** @x_min, align 8
  %133 = load i64, i64* @md, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = sub nsw i32 %131, %135
  %137 = and i32 %136, 3
  %138 = load i32, i32* %16, align 4
  %139 = icmp sgt i32 %137, %138
  br i1 %139, label %140, label %151

140:                                              ; preds = %123
  %141 = load i32, i32* %3, align 4
  %142 = load i32*, i32** @x_min, align 8
  %143 = load i64, i64* @md, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = sub nsw i32 %141, %145
  %147 = and i32 %146, 3
  store i32 %147, i32* %16, align 4
  %148 = load i32, i32* %3, align 4
  %149 = load i32, i32* %16, align 4
  %150 = sub nsw i32 %148, %149
  store i32 %150, i32* %15, align 4
  br label %151

151:                                              ; preds = %140, %123
  br label %152

152:                                              ; preds = %151, %104
  br label %183

153:                                              ; preds = %100
  %154 = load i32, i32* %3, align 4
  %155 = load i32, i32* %6, align 4
  %156 = icmp sge i32 %154, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %153
  %158 = load i32, i32* %3, align 4
  %159 = and i32 %158, -4
  store i32 %159, i32* %15, align 4
  %160 = load i32, i32* %3, align 4
  %161 = load i32, i32* %15, align 4
  %162 = sub nsw i32 %160, %161
  store i32 %162, i32* %16, align 4
  %163 = load i32, i32* %15, align 4
  store i32 %163, i32* @right_border_start, align 4
  store i32 1, i32* %10, align 4
  br label %182

164:                                              ; preds = %153
  %165 = load i32, i32* %3, align 4
  %166 = load i32*, i32** @x_min, align 8
  %167 = load i64, i64* @md, align 8
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = sub nsw i32 %165, %169
  %171 = and i32 %170, 3
  store i32 %171, i32* %16, align 4
  %172 = load i32, i32* %3, align 4
  %173 = load i32, i32* %16, align 4
  %174 = sub nsw i32 %172, %173
  store i32 %174, i32* %15, align 4
  %175 = load i32, i32* %15, align 4
  %176 = load i32*, i32** @x_min, align 8
  %177 = load i64, i64* @md, align 8
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = sub nsw i32 %175, %179
  %181 = sdiv i32 %180, 4
  store i32 %181, i32* %11, align 4
  store i32 0, i32* @left_border_chars, align 4
  br label %182

182:                                              ; preds = %164, %157
  br label %183

183:                                              ; preds = %182, %152
  %184 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %185 = load i32*, i32** @scrn_ptr, align 8
  %186 = load i32, i32* %15, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %16, align 4
  %190 = sext i32 %189 to i64
  %191 = mul i64 %190, 4
  %192 = trunc i64 %191 to i32
  %193 = call i32 @memcpy(i32* %184, i32* %188, i32 %192)
  %194 = load i32, i32* %4, align 4
  %195 = load i32, i32* %8, align 4
  %196 = icmp sle i32 %194, %195
  br i1 %196, label %197, label %204

197:                                              ; preds = %183
  %198 = load i32, i32* %4, align 4
  %199 = add nsw i32 %198, 3
  %200 = sdiv i32 %199, 4
  %201 = load i32, i32* %15, align 4
  %202 = sdiv i32 %201, 4
  %203 = sub nsw i32 %200, %202
  store i32 %203, i32* @left_border_chars, align 4
  store i32 1, i32* %10, align 4
  br label %228

204:                                              ; preds = %183
  %205 = load i64, i64* @need_load, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %204
  %208 = call i32 (...) @antic_load()
  %209 = load i64, i64* @FALSE, align 8
  store i64 %209, i64* @need_load, align 8
  br label %210

210:                                              ; preds = %207, %204
  %211 = load i32, i32* %4, align 4
  %212 = load i32, i32* %6, align 4
  %213 = icmp sgt i32 %211, %212
  br i1 %213, label %214, label %218

214:                                              ; preds = %210
  %215 = load i32, i32* %4, align 4
  %216 = add nsw i32 %215, 3
  %217 = and i32 %216, -4
  store i32 %217, i32* @right_border_end, align 4
  br label %227

218:                                              ; preds = %210
  %219 = load i32, i32* %4, align 4
  %220 = load i32*, i32** @x_min, align 8
  %221 = load i64, i64* @md, align 8
  %222 = getelementptr inbounds i32, i32* %220, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = sub nsw i32 %219, %223
  %225 = add nsw i32 %224, 3
  %226 = sdiv i32 %225, 4
  store i32 %226, i32* %12, align 4
  br label %227

227:                                              ; preds = %218, %214
  br label %228

228:                                              ; preds = %227, %197
  %229 = load i32, i32* %10, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %228
  store i32 0, i32* %19, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %20, align 4
  br label %307

232:                                              ; preds = %228
  %233 = load i64, i64* @md, align 8
  %234 = load i64, i64* @NORMAL1, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %240, label %236

236:                                              ; preds = %232
  %237 = load i64, i64* @md, align 8
  %238 = load i64, i64* @SCROLL1, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %265

240:                                              ; preds = %236, %232
  %241 = load i32, i32* %11, align 4
  %242 = and i32 %241, -2
  store i32 %242, i32* %22, align 4
  %243 = load i32, i32* %11, align 4
  %244 = load i32, i32* %22, align 4
  %245 = sub nsw i32 %243, %244
  %246 = mul nsw i32 %245, 4
  store i32 %246, i32* %18, align 4
  %247 = load i32*, i32** @x_min, align 8
  %248 = load i64, i64* @md, align 8
  %249 = getelementptr inbounds i32, i32* %247, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* %22, align 4
  %252 = mul nsw i32 %251, 4
  %253 = add nsw i32 %250, %252
  store i32 %253, i32* %17, align 4
  %254 = load i32, i32* %12, align 4
  %255 = add nsw i32 %254, 1
  %256 = and i32 %255, -2
  store i32 %256, i32* %23, align 4
  %257 = load i32, i32* %23, align 4
  %258 = load i32, i32* %22, align 4
  %259 = sub nsw i32 %257, %258
  %260 = sdiv i32 %259, 2
  store i32 %260, i32* %19, align 4
  %261 = load i32, i32* %22, align 4
  %262 = mul nsw i32 %261, 4
  store i32 %262, i32* %21, align 4
  %263 = load i32, i32* %22, align 4
  %264 = sdiv i32 %263, 2
  store i32 %264, i32* %20, align 4
  br label %306

265:                                              ; preds = %236
  %266 = load i64, i64* @md, align 8
  %267 = load i64, i64* @NORMAL2, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %273, label %269

269:                                              ; preds = %265
  %270 = load i64, i64* @md, align 8
  %271 = load i64, i64* @SCROLL2, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %298

273:                                              ; preds = %269, %265
  %274 = load i32, i32* %11, align 4
  %275 = and i32 %274, -4
  store i32 %275, i32* %22, align 4
  %276 = load i32, i32* %11, align 4
  %277 = load i32, i32* %22, align 4
  %278 = sub nsw i32 %276, %277
  %279 = mul nsw i32 %278, 4
  store i32 %279, i32* %18, align 4
  %280 = load i32*, i32** @x_min, align 8
  %281 = load i64, i64* @md, align 8
  %282 = getelementptr inbounds i32, i32* %280, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* %22, align 4
  %285 = mul nsw i32 %284, 4
  %286 = add nsw i32 %283, %285
  store i32 %286, i32* %17, align 4
  %287 = load i32, i32* %12, align 4
  %288 = add nsw i32 %287, 3
  %289 = and i32 %288, -4
  store i32 %289, i32* %23, align 4
  %290 = load i32, i32* %23, align 4
  %291 = load i32, i32* %22, align 4
  %292 = sub nsw i32 %290, %291
  %293 = sdiv i32 %292, 4
  store i32 %293, i32* %19, align 4
  %294 = load i32, i32* %22, align 4
  %295 = mul nsw i32 %294, 4
  store i32 %295, i32* %21, align 4
  %296 = load i32, i32* %22, align 4
  %297 = sdiv i32 %296, 4
  store i32 %297, i32* %20, align 4
  br label %305

298:                                              ; preds = %269
  %299 = load i32, i32* %12, align 4
  %300 = load i32, i32* %11, align 4
  %301 = sub nsw i32 %299, %300
  store i32 %301, i32* %19, align 4
  %302 = load i32, i32* %11, align 4
  %303 = mul nsw i32 %302, 4
  store i32 %303, i32* %21, align 4
  %304 = load i32, i32* %11, align 4
  store i32 %304, i32* %20, align 4
  br label %305

305:                                              ; preds = %298, %273
  br label %306

306:                                              ; preds = %305, %240
  br label %307

307:                                              ; preds = %306, %231
  %308 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %309 = load i32*, i32** @scrn_ptr, align 8
  %310 = load i32, i32* %17, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %309, i64 %311
  %313 = load i32, i32* %18, align 4
  %314 = sext i32 %313 to i64
  %315 = mul i64 %314, 4
  %316 = trunc i64 %315 to i32
  %317 = call i32 @memcpy(i32* %308, i32* %312, i32 %316)
  %318 = load i32, i32* %10, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %345

320:                                              ; preds = %307
  %321 = load i32, i32* @anticmode, align 4
  %322 = icmp slt i32 %321, 2
  br i1 %322, label %331, label %323

323:                                              ; preds = %320
  %324 = load i32, i32* @ANTIC_DMACTL, align 4
  %325 = and i32 %324, 3
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %331, label %327

327:                                              ; preds = %323
  %328 = load i32, i32* %4, align 4
  %329 = load i32, i32* %8, align 4
  %330 = icmp sle i32 %328, %329
  br i1 %330, label %331, label %336

331:                                              ; preds = %327, %323, %320
  %332 = load i32, i32* @left_border_start, align 4
  %333 = load i32, i32* @left_border_chars, align 4
  %334 = mul nsw i32 %333, 4
  %335 = add nsw i32 %332, %334
  store i32 %335, i32* @right_border_end, align 4
  br label %343

336:                                              ; preds = %327
  %337 = load i32, i32* %3, align 4
  %338 = load i32, i32* %6, align 4
  %339 = icmp sge i32 %337, %338
  br i1 %339, label %340, label %342

340:                                              ; preds = %336
  %341 = load i32, i32* @right_border_start, align 4
  store i32 %341, i32* @left_border_start, align 4
  br label %342

342:                                              ; preds = %340, %336
  br label %343

343:                                              ; preds = %342, %331
  %344 = call i32 (...) @draw_antic_0_ptr()
  br label %378

345:                                              ; preds = %307
  %346 = load i32, i32* %19, align 4
  %347 = load i64, i64* @antic_memory, align 8
  %348 = load i64, i64* @ANTIC_margin, align 8
  %349 = add nsw i64 %347, %348
  %350 = load i64*, i64** @ch_offset, align 8
  %351 = load i64, i64* @md, align 8
  %352 = getelementptr inbounds i64, i64* %350, i64 %351
  %353 = load i64, i64* %352, align 8
  %354 = add nsw i64 %349, %353
  %355 = load i32, i32* %20, align 4
  %356 = sext i32 %355 to i64
  %357 = add nsw i64 %354, %356
  %358 = load i32*, i32** @scrn_ptr, align 8
  %359 = load i32*, i32** @x_min, align 8
  %360 = load i64, i64* @md, align 8
  %361 = getelementptr inbounds i32, i32* %359, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32, i32* %358, i64 %363
  %365 = load i32, i32* %21, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32, i32* %364, i64 %366
  %368 = load i32*, i32** @GTIA_pm_scanline, align 8
  %369 = load i32*, i32** @x_min, align 8
  %370 = load i64, i64* @md, align 8
  %371 = getelementptr inbounds i32, i32* %369, i64 %370
  %372 = load i32, i32* %371, align 4
  %373 = load i32, i32* %21, align 4
  %374 = add nsw i32 %372, %373
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i32, i32* %368, i64 %375
  %377 = call i32 @draw_antic_ptr(i32 %346, i64 %357, i32* %367, i32* %376)
  br label %378

378:                                              ; preds = %345, %343
  %379 = load i32*, i32** @scrn_ptr, align 8
  %380 = load i32, i32* %17, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %379, i64 %381
  %383 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %384 = load i32, i32* %18, align 4
  %385 = sext i32 %384 to i64
  %386 = mul i64 %385, 4
  %387 = trunc i64 %386 to i32
  %388 = call i32 @memcpy(i32* %382, i32* %383, i32 %387)
  %389 = load i32*, i32** @scrn_ptr, align 8
  %390 = load i32, i32* %15, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i32, i32* %389, i64 %391
  %393 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %394 = load i32, i32* %16, align 4
  %395 = sext i32 %394 to i64
  %396 = mul i64 %395, 4
  %397 = trunc i64 %396 to i32
  %398 = call i32 @memcpy(i32* %392, i32* %393, i32 %397)
  %399 = load i32, i32* %5, align 4
  store i32 %399, i32* @left_border_chars, align 4
  %400 = load i32, i32* %6, align 4
  store i32 %400, i32* @right_border_start, align 4
  %401 = load i32, i32* @LCHOP, align 4
  %402 = mul nsw i32 %401, 4
  store i32 %402, i32* @left_border_start, align 4
  %403 = load i32, i32* @RCHOP, align 4
  %404 = sub nsw i32 48, %403
  %405 = mul nsw i32 %404, 4
  store i32 %405, i32* @right_border_end, align 4
  br label %406

406:                                              ; preds = %378, %99
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @antic_load(...) #1

declare dso_local i32 @draw_antic_0_ptr(...) #1

declare dso_local i32 @draw_antic_ptr(i32, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
