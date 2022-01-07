; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_antic.c_ANTIC_UpdateArtifacting.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_antic.c_ANTIC_UpdateArtifacting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ANTIC_UpdateArtifacting.art_colour_table = internal constant [4 x [8 x i32]] [[8 x i32] [i32 136, i32 20, i32 136, i32 20, i32 143, i32 31, i32 187, i32 95], [8 x i32] [i32 20, i32 136, i32 20, i32 136, i32 31, i32 143, i32 95, i32 187], [8 x i32] [i32 214, i32 70, i32 214, i32 70, i32 223, i32 74, i32 79, i32 172], [8 x i32] [i32 70, i32 214, i32 70, i32 214, i32 74, i32 223, i32 172, i32 79]], align 16
@ANTIC_artif_mode = common dso_local global i32 0, align 4
@draw_antic_2 = common dso_local global i32 0, align 4
@draw_antic_table = common dso_local global i32** null, align 8
@draw_antic_f = common dso_local global i32 0, align 4
@ANTIC_artif_new = common dso_local global i64 0, align 8
@ANTIC_UpdateArtifacting.new_art_colour_table = internal global [4 x [2 x i8*]] [[2 x i8*] [i8* inttoptr (i64 16448 to i8*), i8* inttoptr (i64 32896 to i8*)], [2 x i8*] [i8* inttoptr (i64 32896 to i8*), i8* inttoptr (i64 16448 to i8*)], [2 x i8*] [i8* inttoptr (i64 32896 to i8*), i8* inttoptr (i64 53456 to i8*)], [2 x i8*] [i8* inttoptr (i64 53456 to i8*), i8* inttoptr (i64 32896 to i8*)]], align 16
@draw_antic_2_artif_new = common dso_local global i32 0, align 4
@draw_antic_f_artif_new = common dso_local global i32 0, align 4
@art_colour1_new = common dso_local global i8* null, align 8
@art_colour2_new = common dso_local global i8* null, align 8
@draw_antic_2_artif = common dso_local global i32 0, align 4
@draw_antic_f_artif = common dso_local global i32 0, align 4
@ANTIC_cl = common dso_local global i32* null, align 8
@C_PF1 = common dso_local global i64 0, align 8
@art_normal_colpf1_save = common dso_local global i32 0, align 4
@art_reverse_colpf1_save = common dso_local global i32 0, align 4
@C_PF2 = common dso_local global i64 0, align 8
@art_normal_colpf2_save = common dso_local global i32 0, align 4
@art_reverse_colpf2_save = common dso_local global i32 0, align 4
@art_bkmask_normal = common dso_local global i64* null, align 8
@art_lummask_normal = common dso_local global i64* null, align 8
@art_bkmask_reverse = common dso_local global i64* null, align 8
@art_lummask_reverse = common dso_local global i64* null, align 8
@GTIA_COLPF2 = common dso_local global i32 0, align 4
@art_lookup_normal = common dso_local global i64 0, align 8
@art_lookup_reverse = common dso_local global i64 0, align 8
@ART_BLUE = common dso_local global i32 0, align 4
@ART_BRIGHT_BROWN = common dso_local global i32 0, align 4
@ART_BROWN = common dso_local global i32 0, align 4
@ART_DARK_BLUE = common dso_local global i32 0, align 4
@ART_GREEN = common dso_local global i32 0, align 4
@ART_RED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ANTIC_UpdateArtifacting() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @ANTIC_artif_mode, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %0
  %10 = load i32, i32* @draw_antic_2, align 4
  %11 = load i32**, i32*** @draw_antic_table, align 8
  %12 = getelementptr inbounds i32*, i32** %11, i64 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 3
  store i32 %10, i32* %14, align 4
  %15 = load i32**, i32*** @draw_antic_table, align 8
  %16 = getelementptr inbounds i32*, i32** %15, i64 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  store i32 %10, i32* %18, align 4
  %19 = load i32, i32* @draw_antic_f, align 4
  %20 = load i32**, i32*** @draw_antic_table, align 8
  %21 = getelementptr inbounds i32*, i32** %20, i64 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 15
  store i32 %19, i32* %23, align 4
  br label %312

24:                                               ; preds = %0
  %25 = load i64, i64* @ANTIC_artif_new, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %54

27:                                               ; preds = %24
  %28 = load i32, i32* @draw_antic_2_artif_new, align 4
  %29 = load i32**, i32*** @draw_antic_table, align 8
  %30 = getelementptr inbounds i32*, i32** %29, i64 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  store i32 %28, i32* %32, align 4
  %33 = load i32**, i32*** @draw_antic_table, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  store i32 %28, i32* %36, align 4
  %37 = load i32, i32* @draw_antic_f_artif_new, align 4
  %38 = load i32**, i32*** @draw_antic_table, align 8
  %39 = getelementptr inbounds i32*, i32** %38, i64 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 15
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* @ANTIC_artif_mode, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [4 x [2 x i8*]], [4 x [2 x i8*]]* @ANTIC_UpdateArtifacting.new_art_colour_table, i64 0, i64 %44
  %46 = getelementptr inbounds [2 x i8*], [2 x i8*]* %45, i64 0, i64 0
  %47 = load i8*, i8** %46, align 16
  store i8* %47, i8** @art_colour1_new, align 8
  %48 = load i32, i32* @ANTIC_artif_mode, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [4 x [2 x i8*]], [4 x [2 x i8*]]* @ANTIC_UpdateArtifacting.new_art_colour_table, i64 0, i64 %50
  %52 = getelementptr inbounds [2 x i8*], [2 x i8*]* %51, i64 0, i64 1
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** @art_colour2_new, align 8
  br label %69

54:                                               ; preds = %24
  %55 = load i32, i32* @draw_antic_2_artif, align 4
  %56 = load i32**, i32*** @draw_antic_table, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  store i32 %55, i32* %59, align 4
  %60 = load i32**, i32*** @draw_antic_table, align 8
  %61 = getelementptr inbounds i32*, i32** %60, i64 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  store i32 %55, i32* %63, align 4
  %64 = load i32, i32* @draw_antic_f_artif, align 4
  %65 = load i32**, i32*** @draw_antic_table, align 8
  %66 = getelementptr inbounds i32*, i32** %65, i64 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 15
  store i32 %64, i32* %68, align 4
  br label %69

69:                                               ; preds = %54, %27
  %70 = load i32, i32* @ANTIC_artif_mode, align 4
  %71 = icmp sle i32 %70, 4
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i32, i32* @ANTIC_artif_mode, align 4
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [4 x [8 x i32]], [4 x [8 x i32]]* @ANTIC_UpdateArtifacting.art_colour_table, i64 0, i64 %75
  %77 = getelementptr inbounds [8 x i32], [8 x i32]* %76, i64 0, i64 0
  br label %79

78:                                               ; preds = %69
  br label %79

79:                                               ; preds = %78, %72
  %80 = phi i32* [ %77, %72 ], [ getelementptr inbounds ([4 x [8 x i32]], [4 x [8 x i32]]* @ANTIC_UpdateArtifacting.art_colour_table, i64 0, i64 2, i64 0), %78 ]
  store i32* %80, i32** %4, align 8
  %81 = load i32*, i32** @ANTIC_cl, align 8
  %82 = load i64, i64* @C_PF1, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, 3855
  store i32 %85, i32* @art_normal_colpf1_save, align 4
  store i32 %85, i32* @art_reverse_colpf1_save, align 4
  %86 = load i32*, i32** @ANTIC_cl, align 8
  %87 = load i64, i64* @C_PF2, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* @art_normal_colpf2_save, align 4
  store i32 %89, i32* @art_reverse_colpf2_save, align 4
  %90 = load i32*, i32** @ANTIC_cl, align 8
  %91 = load i64, i64* @C_PF2, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, 240
  %95 = load i32*, i32** @ANTIC_cl, align 8
  %96 = load i64, i64* @C_PF1, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 15
  %100 = or i32 %94, %99
  store i32 %100, i32* %6, align 4
  store i32 0, i32* %1, align 4
  br label %101

101:                                              ; preds = %309, %79
  %102 = load i32, i32* %1, align 4
  %103 = icmp sle i32 %102, 255
  br i1 %103, label %104, label %312

104:                                              ; preds = %101
  %105 = load i64*, i64** @art_bkmask_normal, align 8
  %106 = load i32, i32* %1, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  store i64 0, i64* %108, align 8
  %109 = load i64*, i64** @art_lummask_normal, align 8
  %110 = load i32, i32* %1, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  store i64 0, i64* %112, align 8
  %113 = load i64*, i64** @art_bkmask_reverse, align 8
  %114 = load i32, i32* %1, align 4
  %115 = sub nsw i32 255, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %113, i64 %116
  store i64 0, i64* %117, align 8
  %118 = load i64*, i64** @art_lummask_reverse, align 8
  %119 = load i32, i32* %1, align 4
  %120 = sub nsw i32 255, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %118, i64 %121
  store i64 0, i64* %122, align 8
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %305, %104
  %124 = load i32, i32* %2, align 4
  %125 = icmp sle i32 %124, 3
  br i1 %125, label %126, label %308

126:                                              ; preds = %123
  %127 = load i32, i32* %1, align 4
  %128 = load i32, i32* %2, align 4
  %129 = shl i32 %127, %128
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* %5, align 4
  %131 = and i32 %130, 32
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %191, label %133

133:                                              ; preds = %126
  %134 = load i32, i32* %5, align 4
  %135 = and i32 %134, 248
  %136 = icmp eq i32 %135, 80
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  store i32 1, i32* %3, align 4
  br label %190

138:                                              ; preds = %133
  %139 = load i32, i32* %5, align 4
  %140 = and i32 %139, 248
  %141 = icmp eq i32 %140, 216
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  store i32 3, i32* %3, align 4
  br label %189

143:                                              ; preds = %138
  %144 = load i32, i32* @GTIA_COLPF2, align 4
  %145 = load i64, i64* @art_lookup_normal, align 8
  %146 = inttoptr i64 %145 to i32*
  %147 = load i32, i32* %1, align 4
  %148 = shl i32 %147, 2
  %149 = load i32, i32* %2, align 4
  %150 = add nsw i32 %148, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %146, i64 %151
  store i32 %144, i32* %152, align 4
  %153 = load i32, i32* %6, align 4
  %154 = load i64, i64* @art_lookup_reverse, align 8
  %155 = inttoptr i64 %154 to i32*
  %156 = load i32, i32* %1, align 4
  %157 = sub nsw i32 255, %156
  %158 = shl i32 %157, 2
  %159 = load i32, i32* %2, align 4
  %160 = add nsw i32 %158, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %155, i64 %161
  store i32 %153, i32* %162, align 4
  %163 = load i64*, i64** @art_bkmask_normal, align 8
  %164 = bitcast i64* %163 to i32*
  %165 = load i32, i32* %1, align 4
  %166 = shl i32 %165, 2
  %167 = load i32, i32* %2, align 4
  %168 = add nsw i32 %166, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %164, i64 %169
  store i32 255, i32* %170, align 4
  %171 = load i64*, i64** @art_lummask_reverse, align 8
  %172 = bitcast i64* %171 to i32*
  %173 = load i32, i32* %1, align 4
  %174 = sub nsw i32 255, %173
  %175 = shl i32 %174, 2
  %176 = load i32, i32* %2, align 4
  %177 = add nsw i32 %175, %176
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %172, i64 %178
  store i32 15, i32* %179, align 4
  %180 = load i64*, i64** @art_bkmask_reverse, align 8
  %181 = bitcast i64* %180 to i32*
  %182 = load i32, i32* %1, align 4
  %183 = sub nsw i32 255, %182
  %184 = shl i32 %183, 2
  %185 = load i32, i32* %2, align 4
  %186 = add nsw i32 %184, %185
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %181, i64 %187
  store i32 240, i32* %188, align 4
  br label %305

189:                                              ; preds = %142
  br label %190

190:                                              ; preds = %189, %137
  br label %234

191:                                              ; preds = %126
  %192 = load i32, i32* %5, align 4
  %193 = and i32 %192, 64
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %214

195:                                              ; preds = %191
  %196 = load i32, i32* %5, align 4
  %197 = and i32 %196, 16
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %195
  br label %260

200:                                              ; preds = %195
  %201 = load i32, i32* %5, align 4
  %202 = and i32 %201, 128
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %200
  %205 = load i32, i32* %5, align 4
  %206 = and i32 %205, 8
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %204
  store i32 4, i32* %3, align 4
  br label %210

209:                                              ; preds = %204
  br label %260

210:                                              ; preds = %208
  br label %212

211:                                              ; preds = %200
  store i32 7, i32* %3, align 4
  br label %212

212:                                              ; preds = %211, %210
  br label %213

213:                                              ; preds = %212
  br label %233

214:                                              ; preds = %191
  %215 = load i32, i32* %5, align 4
  %216 = and i32 %215, 16
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %231

218:                                              ; preds = %214
  %219 = load i32, i32* %5, align 4
  %220 = and i32 %219, 8
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %218
  %223 = load i32, i32* %5, align 4
  %224 = and i32 %223, 128
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %222
  store i32 4, i32* %3, align 4
  br label %228

227:                                              ; preds = %222
  br label %260

228:                                              ; preds = %226
  br label %230

229:                                              ; preds = %218
  store i32 6, i32* %3, align 4
  br label %230

230:                                              ; preds = %229, %228
  br label %232

231:                                              ; preds = %214
  store i32 0, i32* %3, align 4
  br label %232

232:                                              ; preds = %231, %230
  br label %233

233:                                              ; preds = %232, %213
  br label %234

234:                                              ; preds = %233, %190
  %235 = load i32*, i32** %4, align 8
  %236 = load i32, i32* %2, align 4
  %237 = and i32 %236, 1
  %238 = load i32, i32* %3, align 4
  %239 = xor i32 %237, %238
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %235, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = load i64, i64* @art_lookup_normal, align 8
  %244 = inttoptr i64 %243 to i32*
  %245 = load i32, i32* %1, align 4
  %246 = shl i32 %245, 2
  %247 = load i32, i32* %2, align 4
  %248 = add nsw i32 %246, %247
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %244, i64 %249
  store i32 %242, i32* %250, align 4
  %251 = load i64, i64* @art_lookup_reverse, align 8
  %252 = inttoptr i64 %251 to i32*
  %253 = load i32, i32* %1, align 4
  %254 = sub nsw i32 255, %253
  %255 = shl i32 %254, 2
  %256 = load i32, i32* %2, align 4
  %257 = add nsw i32 %255, %256
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %252, i64 %258
  store i32 %242, i32* %259, align 4
  br label %305

260:                                              ; preds = %227, %209, %199
  %261 = load i32, i32* %6, align 4
  %262 = load i64, i64* @art_lookup_normal, align 8
  %263 = inttoptr i64 %262 to i32*
  %264 = load i32, i32* %1, align 4
  %265 = shl i32 %264, 2
  %266 = load i32, i32* %2, align 4
  %267 = add nsw i32 %265, %266
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %263, i64 %268
  store i32 %261, i32* %269, align 4
  %270 = load i32, i32* @GTIA_COLPF2, align 4
  %271 = load i64, i64* @art_lookup_reverse, align 8
  %272 = inttoptr i64 %271 to i32*
  %273 = load i32, i32* %1, align 4
  %274 = sub nsw i32 255, %273
  %275 = shl i32 %274, 2
  %276 = load i32, i32* %2, align 4
  %277 = add nsw i32 %275, %276
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %272, i64 %278
  store i32 %270, i32* %279, align 4
  %280 = load i64*, i64** @art_bkmask_reverse, align 8
  %281 = bitcast i64* %280 to i32*
  %282 = load i32, i32* %1, align 4
  %283 = sub nsw i32 255, %282
  %284 = shl i32 %283, 2
  %285 = load i32, i32* %2, align 4
  %286 = add nsw i32 %284, %285
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %281, i64 %287
  store i32 255, i32* %288, align 4
  %289 = load i64*, i64** @art_lummask_normal, align 8
  %290 = bitcast i64* %289 to i32*
  %291 = load i32, i32* %1, align 4
  %292 = shl i32 %291, 2
  %293 = load i32, i32* %2, align 4
  %294 = add nsw i32 %292, %293
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %290, i64 %295
  store i32 15, i32* %296, align 4
  %297 = load i64*, i64** @art_bkmask_normal, align 8
  %298 = bitcast i64* %297 to i32*
  %299 = load i32, i32* %1, align 4
  %300 = shl i32 %299, 2
  %301 = load i32, i32* %2, align 4
  %302 = add nsw i32 %300, %301
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %298, i64 %303
  store i32 240, i32* %304, align 4
  br label %305

305:                                              ; preds = %260, %234, %143
  %306 = load i32, i32* %2, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %2, align 4
  br label %123

308:                                              ; preds = %123
  br label %309

309:                                              ; preds = %308
  %310 = load i32, i32* %1, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %1, align 4
  br label %101

312:                                              ; preds = %9, %101
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
