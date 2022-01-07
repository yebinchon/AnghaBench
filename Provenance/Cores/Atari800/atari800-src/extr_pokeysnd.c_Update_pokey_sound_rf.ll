; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pokeysnd.c_Update_pokey_sound_rf.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pokeysnd.c_Update_pokey_sound_rf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@POKEY_CHAN1 = common dso_local global i32 0, align 4
@POKEY_AUDCTL = common dso_local global i32* null, align 8
@POKEY_CH1_CH2 = common dso_local global i32 0, align 4
@POKEY_CHAN2 = common dso_local global i32 0, align 4
@POKEY_VOLUME_MASK = common dso_local global i32 0, align 4
@pokeysnd_AUDV = common dso_local global i32* null, align 8
@POKEY_CHAN3 = common dso_local global i32 0, align 4
@POKEY_CH3_CH4 = common dso_local global i32 0, align 4
@POKEY_CHAN4 = common dso_local global i32 0, align 4
@POKEY_CH1_179 = common dso_local global i32 0, align 4
@POKEY_AUDF = common dso_local global i32* null, align 8
@POKEY_Base_mult = common dso_local global i32* null, align 8
@Div_n_max = common dso_local global i32* null, align 8
@Div_n_cnt = common dso_local global i32* null, align 8
@POKEY_CH3_179 = common dso_local global i32 0, align 4
@POKEY_AUDC = common dso_local global i32* null, align 8
@POKEY_VOL_ONLY = common dso_local global i32 0, align 4
@BIENIAS_FIX = common dso_local global i32 0, align 4
@Samp_n_max = common dso_local global i32 0, align 4
@Outvol = common dso_local global i32* null, align 8
@POKEY_CH1_FILTER = common dso_local global i32 0, align 4
@POKEY_CH2_FILTER = common dso_local global i32 0, align 4
@ANTIC_CPU_CLOCK = common dso_local global i32 0, align 4
@POKEYSND_SAMPBUF_MAX = common dso_local global i64 0, align 8
@POKEYSND_samp_freq = common dso_local global i32 0, align 4
@POKEYSND_sampbuf_AUDV = common dso_local global i32* null, align 8
@POKEYSND_sampbuf_cnt = common dso_local global i32* null, align 8
@POKEYSND_sampbuf_last = common dso_local global i32 0, align 4
@POKEYSND_sampbuf_lastval = common dso_local global i32 0, align 4
@POKEYSND_sampbuf_ptr = common dso_local global i64 0, align 8
@POKEYSND_sampbuf_rptr = common dso_local global i64 0, align 8
@POKEYSND_sampbuf_val = common dso_local global i32* null, align 8
@POKEYSND_stereo_enabled = common dso_local global i64 0, align 8
@g_Sound = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@sampbuf_cnt2 = common dso_local global i32* null, align 8
@sampbuf_last2 = common dso_local global i32 0, align 4
@sampbuf_lastval2 = common dso_local global i32 0, align 4
@sampbuf_ptr2 = common dso_local global i64 0, align 8
@sampbuf_rptr2 = common dso_local global i64 0, align 8
@sampbuf_val2 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @Update_pokey_sound_rf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Update_pokey_sound_rf(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = shl i32 %13, 2
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 15
  switch i32 %16, label %114 [
    i32 131, label %17
    i32 136, label %34
    i32 130, label %48
    i32 135, label %51
    i32 129, label %65
    i32 134, label %82
    i32 128, label %96
    i32 133, label %99
    i32 132, label %113
  ]

17:                                               ; preds = %4
  %18 = load i32, i32* @POKEY_CHAN1, align 4
  %19 = shl i32 1, %18
  store i32 %19, i32* %11, align 4
  %20 = load i32*, i32** @POKEY_AUDCTL, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @POKEY_CH1_CH2, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = load i32, i32* @POKEY_CHAN2, align 4
  %30 = shl i32 1, %29
  %31 = load i32, i32* %11, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %28, %17
  br label %115

34:                                               ; preds = %4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @POKEY_VOLUME_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* %8, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load i32*, i32** @pokeysnd_AUDV, align 8
  %41 = load i32, i32* @POKEY_CHAN1, align 4
  %42 = load i32, i32* %12, align 4
  %43 = add nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %40, i64 %44
  store i32 %39, i32* %45, align 4
  %46 = load i32, i32* @POKEY_CHAN1, align 4
  %47 = shl i32 1, %46
  store i32 %47, i32* %11, align 4
  br label %115

48:                                               ; preds = %4
  %49 = load i32, i32* @POKEY_CHAN2, align 4
  %50 = shl i32 1, %49
  store i32 %50, i32* %11, align 4
  br label %115

51:                                               ; preds = %4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @POKEY_VOLUME_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* %8, align 4
  %56 = mul nsw i32 %54, %55
  %57 = load i32*, i32** @pokeysnd_AUDV, align 8
  %58 = load i32, i32* @POKEY_CHAN2, align 4
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %57, i64 %61
  store i32 %56, i32* %62, align 4
  %63 = load i32, i32* @POKEY_CHAN2, align 4
  %64 = shl i32 1, %63
  store i32 %64, i32* %11, align 4
  br label %115

65:                                               ; preds = %4
  %66 = load i32, i32* @POKEY_CHAN3, align 4
  %67 = shl i32 1, %66
  store i32 %67, i32* %11, align 4
  %68 = load i32*, i32** @POKEY_AUDCTL, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @POKEY_CH3_CH4, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %65
  %77 = load i32, i32* @POKEY_CHAN4, align 4
  %78 = shl i32 1, %77
  %79 = load i32, i32* %11, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %11, align 4
  br label %81

81:                                               ; preds = %76, %65
  br label %115

82:                                               ; preds = %4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @POKEY_VOLUME_MASK, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* %8, align 4
  %87 = mul nsw i32 %85, %86
  %88 = load i32*, i32** @pokeysnd_AUDV, align 8
  %89 = load i32, i32* @POKEY_CHAN3, align 4
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %88, i64 %92
  store i32 %87, i32* %93, align 4
  %94 = load i32, i32* @POKEY_CHAN3, align 4
  %95 = shl i32 1, %94
  store i32 %95, i32* %11, align 4
  br label %115

96:                                               ; preds = %4
  %97 = load i32, i32* @POKEY_CHAN4, align 4
  %98 = shl i32 1, %97
  store i32 %98, i32* %11, align 4
  br label %115

99:                                               ; preds = %4
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @POKEY_VOLUME_MASK, align 4
  %102 = and i32 %100, %101
  %103 = load i32, i32* %8, align 4
  %104 = mul nsw i32 %102, %103
  %105 = load i32*, i32** @pokeysnd_AUDV, align 8
  %106 = load i32, i32* @POKEY_CHAN4, align 4
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %105, i64 %109
  store i32 %104, i32* %110, align 4
  %111 = load i32, i32* @POKEY_CHAN4, align 4
  %112 = shl i32 1, %111
  store i32 %112, i32* %11, align 4
  br label %115

113:                                              ; preds = %4
  store i32 15, i32* %11, align 4
  br label %115

114:                                              ; preds = %4
  store i32 0, i32* %11, align 4
  br label %115

115:                                              ; preds = %114, %113, %99, %96, %82, %81, %51, %48, %34, %33
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* @POKEY_CHAN1, align 4
  %118 = shl i32 1, %117
  %119 = and i32 %116, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %191

121:                                              ; preds = %115
  %122 = load i32*, i32** @POKEY_AUDCTL, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @POKEY_CH1_179, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %121
  %131 = load i32*, i32** @POKEY_AUDF, align 8
  %132 = load i32, i32* @POKEY_CHAN1, align 4
  %133 = load i32, i32* %12, align 4
  %134 = add nsw i32 %132, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %131, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 4
  store i32 %138, i32* %9, align 4
  br label %154

139:                                              ; preds = %121
  %140 = load i32*, i32** @POKEY_AUDF, align 8
  %141 = load i32, i32* @POKEY_CHAN1, align 4
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %141, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %140, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 1
  %148 = load i32*, i32** @POKEY_Base_mult, align 8
  %149 = load i32, i32* %7, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = mul nsw i32 %147, %152
  store i32 %153, i32* %9, align 4
  br label %154

154:                                              ; preds = %139, %130
  %155 = load i32, i32* %9, align 4
  %156 = load i32*, i32** @Div_n_max, align 8
  %157 = load i32, i32* @POKEY_CHAN1, align 4
  %158 = load i32, i32* %12, align 4
  %159 = add nsw i32 %157, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %156, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %155, %162
  br i1 %163, label %164, label %190

164:                                              ; preds = %154
  %165 = load i32, i32* %9, align 4
  %166 = load i32*, i32** @Div_n_max, align 8
  %167 = load i32, i32* @POKEY_CHAN1, align 4
  %168 = load i32, i32* %12, align 4
  %169 = add nsw i32 %167, %168
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %166, i64 %170
  store i32 %165, i32* %171, align 4
  %172 = load i32*, i32** @Div_n_cnt, align 8
  %173 = load i32, i32* @POKEY_CHAN1, align 4
  %174 = load i32, i32* %12, align 4
  %175 = add nsw i32 %173, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %172, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %9, align 4
  %180 = icmp sgt i32 %178, %179
  br i1 %180, label %181, label %189

181:                                              ; preds = %164
  %182 = load i32, i32* %9, align 4
  %183 = load i32*, i32** @Div_n_cnt, align 8
  %184 = load i32, i32* @POKEY_CHAN1, align 4
  %185 = load i32, i32* %12, align 4
  %186 = add nsw i32 %184, %185
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %183, i64 %187
  store i32 %182, i32* %188, align 4
  br label %189

189:                                              ; preds = %181, %164
  br label %190

190:                                              ; preds = %189, %154
  br label %191

191:                                              ; preds = %190, %115
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* @POKEY_CHAN2, align 4
  %194 = shl i32 1, %193
  %195 = and i32 %192, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %310

197:                                              ; preds = %191
  %198 = load i32*, i32** @POKEY_AUDCTL, align 8
  %199 = load i32, i32* %7, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @POKEY_CH1_CH2, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %258

206:                                              ; preds = %197
  %207 = load i32*, i32** @POKEY_AUDCTL, align 8
  %208 = load i32, i32* %7, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @POKEY_CH1_179, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %233

215:                                              ; preds = %206
  %216 = load i32*, i32** @POKEY_AUDF, align 8
  %217 = load i32, i32* @POKEY_CHAN2, align 4
  %218 = load i32, i32* %12, align 4
  %219 = add nsw i32 %217, %218
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %216, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = mul nsw i32 %222, 256
  %224 = load i32*, i32** @POKEY_AUDF, align 8
  %225 = load i32, i32* @POKEY_CHAN1, align 4
  %226 = load i32, i32* %12, align 4
  %227 = add nsw i32 %225, %226
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %224, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = add nsw i32 %223, %230
  %232 = add nsw i32 %231, 7
  store i32 %232, i32* %9, align 4
  br label %257

233:                                              ; preds = %206
  %234 = load i32*, i32** @POKEY_AUDF, align 8
  %235 = load i32, i32* @POKEY_CHAN2, align 4
  %236 = load i32, i32* %12, align 4
  %237 = add nsw i32 %235, %236
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %234, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = mul nsw i32 %240, 256
  %242 = load i32*, i32** @POKEY_AUDF, align 8
  %243 = load i32, i32* @POKEY_CHAN1, align 4
  %244 = load i32, i32* %12, align 4
  %245 = add nsw i32 %243, %244
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %242, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = add nsw i32 %241, %248
  %250 = add nsw i32 %249, 1
  %251 = load i32*, i32** @POKEY_Base_mult, align 8
  %252 = load i32, i32* %7, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = mul nsw i32 %250, %255
  store i32 %256, i32* %9, align 4
  br label %257

257:                                              ; preds = %233, %215
  br label %273

258:                                              ; preds = %197
  %259 = load i32*, i32** @POKEY_AUDF, align 8
  %260 = load i32, i32* @POKEY_CHAN2, align 4
  %261 = load i32, i32* %12, align 4
  %262 = add nsw i32 %260, %261
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %259, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = add nsw i32 %265, 1
  %267 = load i32*, i32** @POKEY_Base_mult, align 8
  %268 = load i32, i32* %7, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = mul nsw i32 %266, %271
  store i32 %272, i32* %9, align 4
  br label %273

273:                                              ; preds = %258, %257
  %274 = load i32, i32* %9, align 4
  %275 = load i32*, i32** @Div_n_max, align 8
  %276 = load i32, i32* @POKEY_CHAN2, align 4
  %277 = load i32, i32* %12, align 4
  %278 = add nsw i32 %276, %277
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %275, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = icmp ne i32 %274, %281
  br i1 %282, label %283, label %309

283:                                              ; preds = %273
  %284 = load i32, i32* %9, align 4
  %285 = load i32*, i32** @Div_n_max, align 8
  %286 = load i32, i32* @POKEY_CHAN2, align 4
  %287 = load i32, i32* %12, align 4
  %288 = add nsw i32 %286, %287
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %285, i64 %289
  store i32 %284, i32* %290, align 4
  %291 = load i32*, i32** @Div_n_cnt, align 8
  %292 = load i32, i32* @POKEY_CHAN2, align 4
  %293 = load i32, i32* %12, align 4
  %294 = add nsw i32 %292, %293
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %291, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* %9, align 4
  %299 = icmp sgt i32 %297, %298
  br i1 %299, label %300, label %308

300:                                              ; preds = %283
  %301 = load i32, i32* %9, align 4
  %302 = load i32*, i32** @Div_n_cnt, align 8
  %303 = load i32, i32* @POKEY_CHAN2, align 4
  %304 = load i32, i32* %12, align 4
  %305 = add nsw i32 %303, %304
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %302, i64 %306
  store i32 %301, i32* %307, align 4
  br label %308

308:                                              ; preds = %300, %283
  br label %309

309:                                              ; preds = %308, %273
  br label %310

310:                                              ; preds = %309, %191
  %311 = load i32, i32* %11, align 4
  %312 = load i32, i32* @POKEY_CHAN3, align 4
  %313 = shl i32 1, %312
  %314 = and i32 %311, %313
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %386

316:                                              ; preds = %310
  %317 = load i32*, i32** @POKEY_AUDCTL, align 8
  %318 = load i32, i32* %7, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %317, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* @POKEY_CH3_179, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %334

325:                                              ; preds = %316
  %326 = load i32*, i32** @POKEY_AUDF, align 8
  %327 = load i32, i32* @POKEY_CHAN3, align 4
  %328 = load i32, i32* %12, align 4
  %329 = add nsw i32 %327, %328
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %326, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = add nsw i32 %332, 4
  store i32 %333, i32* %9, align 4
  br label %349

334:                                              ; preds = %316
  %335 = load i32*, i32** @POKEY_AUDF, align 8
  %336 = load i32, i32* @POKEY_CHAN3, align 4
  %337 = load i32, i32* %12, align 4
  %338 = add nsw i32 %336, %337
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %335, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = add nsw i32 %341, 1
  %343 = load i32*, i32** @POKEY_Base_mult, align 8
  %344 = load i32, i32* %7, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %343, i64 %345
  %347 = load i32, i32* %346, align 4
  %348 = mul nsw i32 %342, %347
  store i32 %348, i32* %9, align 4
  br label %349

349:                                              ; preds = %334, %325
  %350 = load i32, i32* %9, align 4
  %351 = load i32*, i32** @Div_n_max, align 8
  %352 = load i32, i32* @POKEY_CHAN3, align 4
  %353 = load i32, i32* %12, align 4
  %354 = add nsw i32 %352, %353
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32, i32* %351, i64 %355
  %357 = load i32, i32* %356, align 4
  %358 = icmp ne i32 %350, %357
  br i1 %358, label %359, label %385

359:                                              ; preds = %349
  %360 = load i32, i32* %9, align 4
  %361 = load i32*, i32** @Div_n_max, align 8
  %362 = load i32, i32* @POKEY_CHAN3, align 4
  %363 = load i32, i32* %12, align 4
  %364 = add nsw i32 %362, %363
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %361, i64 %365
  store i32 %360, i32* %366, align 4
  %367 = load i32*, i32** @Div_n_cnt, align 8
  %368 = load i32, i32* @POKEY_CHAN3, align 4
  %369 = load i32, i32* %12, align 4
  %370 = add nsw i32 %368, %369
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i32, i32* %367, i64 %371
  %373 = load i32, i32* %372, align 4
  %374 = load i32, i32* %9, align 4
  %375 = icmp sgt i32 %373, %374
  br i1 %375, label %376, label %384

376:                                              ; preds = %359
  %377 = load i32, i32* %9, align 4
  %378 = load i32*, i32** @Div_n_cnt, align 8
  %379 = load i32, i32* @POKEY_CHAN3, align 4
  %380 = load i32, i32* %12, align 4
  %381 = add nsw i32 %379, %380
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i32, i32* %378, i64 %382
  store i32 %377, i32* %383, align 4
  br label %384

384:                                              ; preds = %376, %359
  br label %385

385:                                              ; preds = %384, %349
  br label %386

386:                                              ; preds = %385, %310
  %387 = load i32, i32* %11, align 4
  %388 = load i32, i32* @POKEY_CHAN4, align 4
  %389 = shl i32 1, %388
  %390 = and i32 %387, %389
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %505

392:                                              ; preds = %386
  %393 = load i32*, i32** @POKEY_AUDCTL, align 8
  %394 = load i32, i32* %7, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i32, i32* %393, i64 %395
  %397 = load i32, i32* %396, align 4
  %398 = load i32, i32* @POKEY_CH3_CH4, align 4
  %399 = and i32 %397, %398
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %453

401:                                              ; preds = %392
  %402 = load i32*, i32** @POKEY_AUDCTL, align 8
  %403 = load i32, i32* %7, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i32, i32* %402, i64 %404
  %406 = load i32, i32* %405, align 4
  %407 = load i32, i32* @POKEY_CH3_179, align 4
  %408 = and i32 %406, %407
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %428

410:                                              ; preds = %401
  %411 = load i32*, i32** @POKEY_AUDF, align 8
  %412 = load i32, i32* @POKEY_CHAN4, align 4
  %413 = load i32, i32* %12, align 4
  %414 = add nsw i32 %412, %413
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i32, i32* %411, i64 %415
  %417 = load i32, i32* %416, align 4
  %418 = mul nsw i32 %417, 256
  %419 = load i32*, i32** @POKEY_AUDF, align 8
  %420 = load i32, i32* @POKEY_CHAN3, align 4
  %421 = load i32, i32* %12, align 4
  %422 = add nsw i32 %420, %421
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i32, i32* %419, i64 %423
  %425 = load i32, i32* %424, align 4
  %426 = add nsw i32 %418, %425
  %427 = add nsw i32 %426, 7
  store i32 %427, i32* %9, align 4
  br label %452

428:                                              ; preds = %401
  %429 = load i32*, i32** @POKEY_AUDF, align 8
  %430 = load i32, i32* @POKEY_CHAN4, align 4
  %431 = load i32, i32* %12, align 4
  %432 = add nsw i32 %430, %431
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i32, i32* %429, i64 %433
  %435 = load i32, i32* %434, align 4
  %436 = mul nsw i32 %435, 256
  %437 = load i32*, i32** @POKEY_AUDF, align 8
  %438 = load i32, i32* @POKEY_CHAN3, align 4
  %439 = load i32, i32* %12, align 4
  %440 = add nsw i32 %438, %439
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i32, i32* %437, i64 %441
  %443 = load i32, i32* %442, align 4
  %444 = add nsw i32 %436, %443
  %445 = add nsw i32 %444, 1
  %446 = load i32*, i32** @POKEY_Base_mult, align 8
  %447 = load i32, i32* %7, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i32, i32* %446, i64 %448
  %450 = load i32, i32* %449, align 4
  %451 = mul nsw i32 %445, %450
  store i32 %451, i32* %9, align 4
  br label %452

452:                                              ; preds = %428, %410
  br label %468

453:                                              ; preds = %392
  %454 = load i32*, i32** @POKEY_AUDF, align 8
  %455 = load i32, i32* @POKEY_CHAN4, align 4
  %456 = load i32, i32* %12, align 4
  %457 = add nsw i32 %455, %456
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i32, i32* %454, i64 %458
  %460 = load i32, i32* %459, align 4
  %461 = add nsw i32 %460, 1
  %462 = load i32*, i32** @POKEY_Base_mult, align 8
  %463 = load i32, i32* %7, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds i32, i32* %462, i64 %464
  %466 = load i32, i32* %465, align 4
  %467 = mul nsw i32 %461, %466
  store i32 %467, i32* %9, align 4
  br label %468

468:                                              ; preds = %453, %452
  %469 = load i32, i32* %9, align 4
  %470 = load i32*, i32** @Div_n_max, align 8
  %471 = load i32, i32* @POKEY_CHAN4, align 4
  %472 = load i32, i32* %12, align 4
  %473 = add nsw i32 %471, %472
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i32, i32* %470, i64 %474
  %476 = load i32, i32* %475, align 4
  %477 = icmp ne i32 %469, %476
  br i1 %477, label %478, label %504

478:                                              ; preds = %468
  %479 = load i32, i32* %9, align 4
  %480 = load i32*, i32** @Div_n_max, align 8
  %481 = load i32, i32* @POKEY_CHAN4, align 4
  %482 = load i32, i32* %12, align 4
  %483 = add nsw i32 %481, %482
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds i32, i32* %480, i64 %484
  store i32 %479, i32* %485, align 4
  %486 = load i32*, i32** @Div_n_cnt, align 8
  %487 = load i32, i32* @POKEY_CHAN4, align 4
  %488 = load i32, i32* %12, align 4
  %489 = add nsw i32 %487, %488
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i32, i32* %486, i64 %490
  %492 = load i32, i32* %491, align 4
  %493 = load i32, i32* %9, align 4
  %494 = icmp sgt i32 %492, %493
  br i1 %494, label %495, label %503

495:                                              ; preds = %478
  %496 = load i32, i32* %9, align 4
  %497 = load i32*, i32** @Div_n_cnt, align 8
  %498 = load i32, i32* @POKEY_CHAN4, align 4
  %499 = load i32, i32* %12, align 4
  %500 = add nsw i32 %498, %499
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds i32, i32* %497, i64 %501
  store i32 %496, i32* %502, align 4
  br label %503

503:                                              ; preds = %495, %478
  br label %504

504:                                              ; preds = %503, %468
  br label %505

505:                                              ; preds = %504, %386
  %506 = load i32, i32* @POKEY_CHAN1, align 4
  store i32 %506, i32* %10, align 4
  br label %507

507:                                              ; preds = %623, %505
  %508 = load i32, i32* %10, align 4
  %509 = load i32, i32* @POKEY_CHAN4, align 4
  %510 = icmp sle i32 %508, %509
  br i1 %510, label %511, label %626

511:                                              ; preds = %507
  %512 = load i32, i32* %11, align 4
  %513 = load i32, i32* %10, align 4
  %514 = shl i32 1, %513
  %515 = and i32 %512, %514
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %517, label %622

517:                                              ; preds = %511
  %518 = load i32*, i32** @POKEY_AUDC, align 8
  %519 = load i32, i32* %10, align 4
  %520 = load i32, i32* %12, align 4
  %521 = add nsw i32 %519, %520
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds i32, i32* %518, i64 %522
  %524 = load i32, i32* %523, align 4
  %525 = load i32, i32* @POKEY_VOL_ONLY, align 4
  %526 = and i32 %524, %525
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %553, label %528

528:                                              ; preds = %517
  %529 = load i32*, i32** @POKEY_AUDC, align 8
  %530 = load i32, i32* %10, align 4
  %531 = load i32, i32* %12, align 4
  %532 = add nsw i32 %530, %531
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds i32, i32* %529, i64 %533
  %535 = load i32, i32* %534, align 4
  %536 = load i32, i32* @POKEY_VOLUME_MASK, align 4
  %537 = and i32 %535, %536
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %553, label %539

539:                                              ; preds = %528
  %540 = load i32, i32* @BIENIAS_FIX, align 4
  %541 = icmp ne i32 %540, 0
  br i1 %541, label %621, label %542

542:                                              ; preds = %539
  %543 = load i32*, i32** @Div_n_max, align 8
  %544 = load i32, i32* %10, align 4
  %545 = load i32, i32* %12, align 4
  %546 = add nsw i32 %544, %545
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds i32, i32* %543, i64 %547
  %549 = load i32, i32* %548, align 4
  %550 = load i32, i32* @Samp_n_max, align 4
  %551 = ashr i32 %550, 8
  %552 = icmp slt i32 %549, %551
  br i1 %552, label %553, label %621

553:                                              ; preds = %542, %528, %517
  %554 = load i32*, i32** @Outvol, align 8
  %555 = load i32, i32* %10, align 4
  %556 = load i32, i32* %12, align 4
  %557 = add nsw i32 %555, %556
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds i32, i32* %554, i64 %558
  store i32 1, i32* %559, align 4
  %560 = load i32, i32* %10, align 4
  %561 = load i32, i32* @POKEY_CHAN3, align 4
  %562 = icmp eq i32 %560, %561
  br i1 %562, label %563, label %572

563:                                              ; preds = %553
  %564 = load i32*, i32** @POKEY_AUDCTL, align 8
  %565 = load i32, i32* %7, align 4
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds i32, i32* %564, i64 %566
  %568 = load i32, i32* %567, align 4
  %569 = load i32, i32* @POKEY_CH1_FILTER, align 4
  %570 = and i32 %568, %569
  %571 = icmp ne i32 %570, 0
  br i1 %571, label %572, label %607

572:                                              ; preds = %563, %553
  %573 = load i32, i32* %10, align 4
  %574 = load i32, i32* @POKEY_CHAN4, align 4
  %575 = icmp eq i32 %573, %574
  br i1 %575, label %576, label %585

576:                                              ; preds = %572
  %577 = load i32*, i32** @POKEY_AUDCTL, align 8
  %578 = load i32, i32* %7, align 4
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds i32, i32* %577, i64 %579
  %581 = load i32, i32* %580, align 4
  %582 = load i32, i32* @POKEY_CH2_FILTER, align 4
  %583 = and i32 %581, %582
  %584 = icmp ne i32 %583, 0
  br i1 %584, label %585, label %607

585:                                              ; preds = %576, %572
  %586 = load i32, i32* %10, align 4
  %587 = load i32, i32* @POKEY_CHAN1, align 4
  %588 = icmp eq i32 %586, %587
  br i1 %588, label %607, label %589

589:                                              ; preds = %585
  %590 = load i32, i32* %10, align 4
  %591 = load i32, i32* @POKEY_CHAN2, align 4
  %592 = icmp eq i32 %590, %591
  br i1 %592, label %607, label %593

593:                                              ; preds = %589
  %594 = load i32, i32* @BIENIAS_FIX, align 4
  %595 = icmp ne i32 %594, 0
  br i1 %595, label %620, label %596

596:                                              ; preds = %593
  %597 = load i32*, i32** @Div_n_max, align 8
  %598 = load i32, i32* %10, align 4
  %599 = load i32, i32* %12, align 4
  %600 = add nsw i32 %598, %599
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds i32, i32* %597, i64 %601
  %603 = load i32, i32* %602, align 4
  %604 = load i32, i32* @Samp_n_max, align 4
  %605 = ashr i32 %604, 8
  %606 = icmp slt i32 %603, %605
  br i1 %606, label %607, label %620

607:                                              ; preds = %596, %589, %585, %576, %563
  %608 = load i32*, i32** @Div_n_max, align 8
  %609 = load i32, i32* %10, align 4
  %610 = load i32, i32* %12, align 4
  %611 = add nsw i32 %609, %610
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds i32, i32* %608, i64 %612
  store i32 2147483647, i32* %613, align 4
  %614 = load i32*, i32** @Div_n_cnt, align 8
  %615 = load i32, i32* %10, align 4
  %616 = load i32, i32* %12, align 4
  %617 = add nsw i32 %615, %616
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds i32, i32* %614, i64 %618
  store i32 2147483647, i32* %619, align 4
  br label %620

620:                                              ; preds = %607, %596, %593
  br label %621

621:                                              ; preds = %620, %542, %539
  br label %622

622:                                              ; preds = %621, %511
  br label %623

623:                                              ; preds = %622
  %624 = load i32, i32* %10, align 4
  %625 = add nsw i32 %624, 1
  store i32 %625, i32* %10, align 4
  br label %507

626:                                              ; preds = %507
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
