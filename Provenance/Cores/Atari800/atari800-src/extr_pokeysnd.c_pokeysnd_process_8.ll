; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pokeysnd.c_pokeysnd_process_8.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pokeysnd.c_pokeysnd_process_8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@Samp_n_cnt = common dso_local global i32* null, align 8
@Outvol = common dso_local global i32* null, align 8
@pokeysnd_AUDV = common dso_local global i32* null, align 8
@POKEYSND_SAMP_MIN = common dso_local global i32 0, align 4
@Num_pokeys = common dso_local global i32 0, align 4
@POKEY_SAMPLE = common dso_local global i32 0, align 4
@Div_n_cnt = common dso_local global i64* null, align 8
@POKEY_CHAN1 = common dso_local global i32 0, align 4
@POKEY_CHAN2 = common dso_local global i32 0, align 4
@POKEY_CHAN3 = common dso_local global i32 0, align 4
@POKEY_CHAN4 = common dso_local global i32 0, align 4
@P4 = common dso_local global i64 0, align 8
@POKEY_POLY4_SIZE = common dso_local global i64 0, align 8
@P5 = common dso_local global i64 0, align 8
@POKEY_POLY5_SIZE = common dso_local global i64 0, align 8
@P9 = common dso_local global i64 0, align 8
@POKEY_POLY9_SIZE = common dso_local global i64 0, align 8
@P17 = common dso_local global i64 0, align 8
@POKEY_POLY17_SIZE = common dso_local global i64 0, align 8
@Div_n_max = common dso_local global i64* null, align 8
@POKEY_AUDC = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@POKEY_VOL_ONLY = common dso_local global i32 0, align 4
@POKEY_NOTPOLY5 = common dso_local global i32 0, align 4
@bit5 = common dso_local global i64* null, align 8
@POKEY_PURETONE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@POKEY_POLY4 = common dso_local global i32 0, align 4
@bit4 = common dso_local global i32* null, align 8
@POKEY_AUDCTL = common dso_local global i32* null, align 8
@POKEY_POLY9 = common dso_local global i32 0, align 4
@POKEY_poly9_lookup = common dso_local global i32* null, align 8
@POKEY_poly17_lookup = common dso_local global i64* null, align 8
@POKEY_CH1_FILTER = common dso_local global i32 0, align 4
@POKEY_CH2_FILTER = common dso_local global i32 0, align 4
@Samp_n_max = common dso_local global i32 0, align 4
@ANTIC_CPU_CLOCK = common dso_local global i8* null, align 8
@POKEYSND_SAMPBUF_MAX = common dso_local global i64 0, align 8
@POKEYSND_SAMP_MAX = common dso_local global i32 0, align 4
@POKEYSND_sampbuf_cnt = common dso_local global i32* null, align 8
@POKEYSND_sampbuf_last = common dso_local global i8* null, align 8
@POKEYSND_sampbuf_ptr = common dso_local global i64 0, align 8
@POKEYSND_sampbuf_rptr = common dso_local global i64 0, align 8
@POKEYSND_sampbuf_val = common dso_local global i64* null, align 8
@POKEYSND_sampout = common dso_local global i64 0, align 8
@POKEYSND_stereo_enabled = common dso_local global i64 0, align 8
@g_Sound = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@last_val = common dso_local global i32 0, align 4
@last_val2 = common dso_local global i32 0, align 4
@sampbuf_cnt2 = common dso_local global i32* null, align 8
@sampbuf_last2 = common dso_local global i8* null, align 8
@sampbuf_ptr2 = common dso_local global i64 0, align 8
@sampbuf_rptr2 = common dso_local global i64 0, align 8
@sampbuf_val2 = common dso_local global i64* null, align 8
@sampout2 = common dso_local global i64 0, align 8
@speaker = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @pokeysnd_process_8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pokeysnd_process_8(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %5, align 8
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %6, align 4
  %21 = load i32*, i32** @Samp_n_cnt, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  store i32* %23, i32** %8, align 8
  %24 = load i32*, i32** @Outvol, align 8
  store i32* %24, i32** %12, align 8
  %25 = load i32*, i32** @pokeysnd_AUDV, align 8
  store i32* %25, i32** %16, align 8
  %26 = load i32, i32* @POKEYSND_SAMP_MIN, align 4
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* @Num_pokeys, align 4
  store i32 %27, i32* %15, align 4
  br label %28

28:                                               ; preds = %79, %2
  %29 = load i32*, i32** %12, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %12, align 8
  %31 = load i32, i32* %29, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i32*, i32** %16, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %33, %28
  %39 = load i32*, i32** %16, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %16, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %12, align 8
  %43 = load i32, i32* %41, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load i32*, i32** %16, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %45, %38
  %51 = load i32*, i32** %16, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %16, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %12, align 8
  %55 = load i32, i32* %53, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load i32*, i32** %16, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %57, %50
  %63 = load i32*, i32** %16, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %16, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %12, align 8
  %67 = load i32, i32* %65, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load i32*, i32** %16, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %69, %62
  %75 = load i32*, i32** %16, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %16, align 8
  %77 = load i32, i32* %15, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %15, align 4
  br label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %15, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %28, label %82

82:                                               ; preds = %79
  br label %83

83:                                               ; preds = %438, %82
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %439

86:                                               ; preds = %83
  %87 = load i32, i32* @POKEY_SAMPLE, align 4
  store i32 %87, i32* %10, align 4
  %88 = load i32*, i32** %8, align 8
  %89 = call i64 @READ_U32(i32* %88)
  store i64 %89, i64* %9, align 8
  %90 = load i64*, i64** @Div_n_cnt, align 8
  store i64* %90, i64** %7, align 8
  store i32 0, i32* %15, align 4
  br label %91

91:                                               ; preds = %150, %86
  %92 = load i64*, i64** %7, align 8
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %9, align 8
  %95 = icmp ule i64 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load i64*, i64** %7, align 8
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %9, align 8
  %99 = load i32, i32* @POKEY_CHAN1, align 4
  %100 = load i32, i32* %15, align 4
  %101 = shl i32 %100, 2
  %102 = add nsw i32 %99, %101
  store i32 %102, i32* %10, align 4
  br label %103

103:                                              ; preds = %96, %91
  %104 = load i64*, i64** %7, align 8
  %105 = getelementptr inbounds i64, i64* %104, i32 1
  store i64* %105, i64** %7, align 8
  %106 = load i64*, i64** %7, align 8
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %9, align 8
  %109 = icmp ule i64 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %103
  %111 = load i64*, i64** %7, align 8
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %9, align 8
  %113 = load i32, i32* @POKEY_CHAN2, align 4
  %114 = load i32, i32* %15, align 4
  %115 = shl i32 %114, 2
  %116 = add nsw i32 %113, %115
  store i32 %116, i32* %10, align 4
  br label %117

117:                                              ; preds = %110, %103
  %118 = load i64*, i64** %7, align 8
  %119 = getelementptr inbounds i64, i64* %118, i32 1
  store i64* %119, i64** %7, align 8
  %120 = load i64*, i64** %7, align 8
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %9, align 8
  %123 = icmp ule i64 %121, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %117
  %125 = load i64*, i64** %7, align 8
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %9, align 8
  %127 = load i32, i32* @POKEY_CHAN3, align 4
  %128 = load i32, i32* %15, align 4
  %129 = shl i32 %128, 2
  %130 = add nsw i32 %127, %129
  store i32 %130, i32* %10, align 4
  br label %131

131:                                              ; preds = %124, %117
  %132 = load i64*, i64** %7, align 8
  %133 = getelementptr inbounds i64, i64* %132, i32 1
  store i64* %133, i64** %7, align 8
  %134 = load i64*, i64** %7, align 8
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %9, align 8
  %137 = icmp ule i64 %135, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %131
  %139 = load i64*, i64** %7, align 8
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %9, align 8
  %141 = load i32, i32* @POKEY_CHAN4, align 4
  %142 = load i32, i32* %15, align 4
  %143 = shl i32 %142, 2
  %144 = add nsw i32 %141, %143
  store i32 %144, i32* %10, align 4
  br label %145

145:                                              ; preds = %138, %131
  %146 = load i64*, i64** %7, align 8
  %147 = getelementptr inbounds i64, i64* %146, i32 1
  store i64* %147, i64** %7, align 8
  %148 = load i32, i32* %15, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %15, align 4
  br label %150

150:                                              ; preds = %145
  %151 = load i32, i32* %15, align 4
  %152 = load i32, i32* @Num_pokeys, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %91, label %154

154:                                              ; preds = %150
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* @POKEY_SAMPLE, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %427

158:                                              ; preds = %154
  %159 = load i32, i32* @Num_pokeys, align 4
  store i32 %159, i32* %15, align 4
  br label %160

160:                                              ; preds = %187, %158
  %161 = load i64*, i64** %7, align 8
  %162 = getelementptr inbounds i64, i64* %161, i32 -1
  store i64* %162, i64** %7, align 8
  %163 = load i64, i64* %9, align 8
  %164 = load i64*, i64** %7, align 8
  %165 = load i64, i64* %164, align 8
  %166 = sub i64 %165, %163
  store i64 %166, i64* %164, align 8
  %167 = load i64*, i64** %7, align 8
  %168 = getelementptr inbounds i64, i64* %167, i32 -1
  store i64* %168, i64** %7, align 8
  %169 = load i64, i64* %9, align 8
  %170 = load i64*, i64** %7, align 8
  %171 = load i64, i64* %170, align 8
  %172 = sub i64 %171, %169
  store i64 %172, i64* %170, align 8
  %173 = load i64*, i64** %7, align 8
  %174 = getelementptr inbounds i64, i64* %173, i32 -1
  store i64* %174, i64** %7, align 8
  %175 = load i64, i64* %9, align 8
  %176 = load i64*, i64** %7, align 8
  %177 = load i64, i64* %176, align 8
  %178 = sub i64 %177, %175
  store i64 %178, i64* %176, align 8
  %179 = load i64*, i64** %7, align 8
  %180 = getelementptr inbounds i64, i64* %179, i32 -1
  store i64* %180, i64** %7, align 8
  %181 = load i64, i64* %9, align 8
  %182 = load i64*, i64** %7, align 8
  %183 = load i64, i64* %182, align 8
  %184 = sub i64 %183, %181
  store i64 %184, i64* %182, align 8
  %185 = load i32, i32* %15, align 4
  %186 = add nsw i32 %185, -1
  store i32 %186, i32* %15, align 4
  br label %187

187:                                              ; preds = %160
  %188 = load i32, i32* %15, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %160, label %190

190:                                              ; preds = %187
  %191 = load i32*, i32** %8, align 8
  %192 = load i32*, i32** %8, align 8
  %193 = call i64 @READ_U32(i32* %192)
  %194 = load i64, i64* %9, align 8
  %195 = sub i64 %193, %194
  %196 = call i32 @WRITE_U32(i32* %191, i64 %195)
  %197 = load i64, i64* @P4, align 8
  %198 = load i64, i64* %9, align 8
  %199 = add i64 %197, %198
  %200 = load i64, i64* @POKEY_POLY4_SIZE, align 8
  %201 = urem i64 %199, %200
  store i64 %201, i64* @P4, align 8
  %202 = load i64, i64* @P5, align 8
  %203 = load i64, i64* %9, align 8
  %204 = add i64 %202, %203
  %205 = load i64, i64* @POKEY_POLY5_SIZE, align 8
  %206 = urem i64 %204, %205
  store i64 %206, i64* @P5, align 8
  %207 = load i64, i64* @P9, align 8
  %208 = load i64, i64* %9, align 8
  %209 = add i64 %207, %208
  %210 = load i64, i64* @POKEY_POLY9_SIZE, align 8
  %211 = urem i64 %209, %210
  store i64 %211, i64* @P9, align 8
  %212 = load i64, i64* @P17, align 8
  %213 = load i64, i64* %9, align 8
  %214 = add i64 %212, %213
  %215 = load i64, i64* @POKEY_POLY17_SIZE, align 8
  %216 = urem i64 %214, %215
  store i64 %216, i64* @P17, align 8
  %217 = load i64*, i64** @Div_n_max, align 8
  %218 = load i32, i32* %10, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i64, i64* %217, i64 %219
  %221 = load i64, i64* %220, align 8
  %222 = load i64*, i64** @Div_n_cnt, align 8
  %223 = load i32, i32* %10, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i64, i64* %222, i64 %224
  %226 = load i64, i64* %225, align 8
  %227 = add i64 %226, %221
  store i64 %227, i64* %225, align 8
  %228 = load i32*, i32** @POKEY_AUDC, align 8
  %229 = load i32, i32* %10, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  store i32 %232, i32* %13, align 4
  %233 = load i32*, i32** @Outvol, align 8
  %234 = load i32, i32* %10, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  store i32* %236, i32** %12, align 8
  %237 = load i32, i32* @FALSE, align 4
  store i32 %237, i32* %14, align 4
  %238 = load i32, i32* %13, align 4
  %239 = load i32, i32* @POKEY_VOL_ONLY, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %322, label %242

242:                                              ; preds = %190
  %243 = load i32, i32* %13, align 4
  %244 = load i32, i32* @POKEY_NOTPOLY5, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %253, label %247

247:                                              ; preds = %242
  %248 = load i64*, i64** @bit5, align 8
  %249 = load i64, i64* @P5, align 8
  %250 = getelementptr inbounds i64, i64* %248, i64 %249
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %321

253:                                              ; preds = %247, %242
  %254 = load i32, i32* %13, align 4
  %255 = load i32, i32* @POKEY_PURETONE, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %253
  %259 = load i32, i32* @TRUE, align 4
  store i32 %259, i32* %14, align 4
  br label %320

260:                                              ; preds = %253
  %261 = load i32, i32* %13, align 4
  %262 = load i32, i32* @POKEY_POLY4, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %277

265:                                              ; preds = %260
  %266 = load i32*, i32** @bit4, align 8
  %267 = load i64, i64* @P4, align 8
  %268 = getelementptr inbounds i32, i32* %266, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = load i32*, i32** %12, align 8
  %271 = load i32, i32* %270, align 4
  %272 = icmp ne i32 %271, 0
  %273 = xor i1 %272, true
  %274 = zext i1 %273 to i32
  %275 = icmp eq i32 %269, %274
  %276 = zext i1 %275 to i32
  store i32 %276, i32* %14, align 4
  br label %319

277:                                              ; preds = %260
  %278 = load i32*, i32** @POKEY_AUDCTL, align 8
  %279 = load i32, i32* %10, align 4
  %280 = ashr i32 %279, 2
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %278, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* @POKEY_POLY9, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %300

287:                                              ; preds = %277
  %288 = load i32*, i32** @POKEY_poly9_lookup, align 8
  %289 = load i64, i64* @P9, align 8
  %290 = getelementptr inbounds i32, i32* %288, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = and i32 %291, 1
  %293 = load i32*, i32** %12, align 8
  %294 = load i32, i32* %293, align 4
  %295 = icmp ne i32 %294, 0
  %296 = xor i1 %295, true
  %297 = zext i1 %296 to i32
  %298 = icmp eq i32 %292, %297
  %299 = zext i1 %298 to i32
  store i32 %299, i32* %14, align 4
  br label %318

300:                                              ; preds = %277
  %301 = load i64*, i64** @POKEY_poly17_lookup, align 8
  %302 = load i64, i64* @P17, align 8
  %303 = lshr i64 %302, 3
  %304 = getelementptr inbounds i64, i64* %301, i64 %303
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* @P17, align 8
  %307 = and i64 %306, 7
  %308 = lshr i64 %305, %307
  %309 = and i64 %308, 1
  %310 = load i32*, i32** %12, align 8
  %311 = load i32, i32* %310, align 4
  %312 = icmp ne i32 %311, 0
  %313 = xor i1 %312, true
  %314 = zext i1 %313 to i32
  %315 = sext i32 %314 to i64
  %316 = icmp eq i64 %309, %315
  %317 = zext i1 %316 to i32
  store i32 %317, i32* %14, align 4
  br label %318

318:                                              ; preds = %300, %287
  br label %319

319:                                              ; preds = %318, %265
  br label %320

320:                                              ; preds = %319, %258
  br label %321

321:                                              ; preds = %320, %247
  br label %322

322:                                              ; preds = %321, %190
  %323 = load i32*, i32** @POKEY_AUDCTL, align 8
  %324 = load i32, i32* %10, align 4
  %325 = ashr i32 %324, 2
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %323, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* @POKEY_CH1_FILTER, align 4
  %330 = and i32 %328, %329
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %361

332:                                              ; preds = %322
  %333 = load i32, i32* %10, align 4
  %334 = and i32 %333, 3
  %335 = load i32, i32* @POKEY_CHAN3, align 4
  %336 = icmp eq i32 %334, %335
  br i1 %336, label %337, label %360

337:                                              ; preds = %332
  %338 = load i32*, i32** @Outvol, align 8
  %339 = load i32, i32* %10, align 4
  %340 = and i32 %339, 253
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %338, i64 %341
  %343 = load i32, i32* %342, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %359

345:                                              ; preds = %337
  %346 = load i32*, i32** @Outvol, align 8
  %347 = load i32, i32* %10, align 4
  %348 = and i32 %347, 253
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %346, i64 %349
  store i32 0, i32* %350, align 4
  %351 = load i32*, i32** @pokeysnd_AUDV, align 8
  %352 = load i32, i32* %10, align 4
  %353 = and i32 %352, 253
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %351, i64 %354
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* %11, align 4
  %358 = sub nsw i32 %357, %356
  store i32 %358, i32* %11, align 4
  br label %359

359:                                              ; preds = %345, %337
  br label %360

360:                                              ; preds = %359, %332
  br label %361

361:                                              ; preds = %360, %322
  %362 = load i32*, i32** @POKEY_AUDCTL, align 8
  %363 = load i32, i32* %10, align 4
  %364 = ashr i32 %363, 2
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %362, i64 %365
  %367 = load i32, i32* %366, align 4
  %368 = load i32, i32* @POKEY_CH2_FILTER, align 4
  %369 = and i32 %367, %368
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %400

371:                                              ; preds = %361
  %372 = load i32, i32* %10, align 4
  %373 = and i32 %372, 3
  %374 = load i32, i32* @POKEY_CHAN4, align 4
  %375 = icmp eq i32 %373, %374
  br i1 %375, label %376, label %399

376:                                              ; preds = %371
  %377 = load i32*, i32** @Outvol, align 8
  %378 = load i32, i32* %10, align 4
  %379 = and i32 %378, 253
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %377, i64 %380
  %382 = load i32, i32* %381, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %398

384:                                              ; preds = %376
  %385 = load i32*, i32** @Outvol, align 8
  %386 = load i32, i32* %10, align 4
  %387 = and i32 %386, 253
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i32, i32* %385, i64 %388
  store i32 0, i32* %389, align 4
  %390 = load i32*, i32** @pokeysnd_AUDV, align 8
  %391 = load i32, i32* %10, align 4
  %392 = and i32 %391, 253
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32, i32* %390, i64 %393
  %395 = load i32, i32* %394, align 4
  %396 = load i32, i32* %11, align 4
  %397 = sub nsw i32 %396, %395
  store i32 %397, i32* %11, align 4
  br label %398

398:                                              ; preds = %384, %376
  br label %399

399:                                              ; preds = %398, %371
  br label %400

400:                                              ; preds = %399, %361
  %401 = load i32, i32* %14, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %426

403:                                              ; preds = %400
  %404 = load i32*, i32** %12, align 8
  %405 = load i32, i32* %404, align 4
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %416

407:                                              ; preds = %403
  %408 = load i32*, i32** @pokeysnd_AUDV, align 8
  %409 = load i32, i32* %10, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i32, i32* %408, i64 %410
  %412 = load i32, i32* %411, align 4
  %413 = load i32, i32* %11, align 4
  %414 = sub nsw i32 %413, %412
  store i32 %414, i32* %11, align 4
  %415 = load i32*, i32** %12, align 8
  store i32 0, i32* %415, align 4
  br label %425

416:                                              ; preds = %403
  %417 = load i32*, i32** %12, align 8
  store i32 1, i32* %417, align 4
  %418 = load i32*, i32** @pokeysnd_AUDV, align 8
  %419 = load i32, i32* %10, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32, i32* %418, i64 %420
  %422 = load i32, i32* %421, align 4
  %423 = load i32, i32* %11, align 4
  %424 = add nsw i32 %423, %422
  store i32 %424, i32* %11, align 4
  br label %425

425:                                              ; preds = %416, %407
  br label %426

426:                                              ; preds = %425, %400
  br label %438

427:                                              ; preds = %154
  %428 = load i32, i32* %11, align 4
  store i32 %428, i32* %17, align 4
  %429 = load i32, i32* %17, align 4
  %430 = load i32*, i32** %5, align 8
  %431 = getelementptr inbounds i32, i32* %430, i32 1
  store i32* %431, i32** %5, align 8
  store i32 %429, i32* %430, align 4
  %432 = load i32, i32* @Samp_n_max, align 4
  %433 = load i32*, i32** @Samp_n_cnt, align 8
  %434 = load i32, i32* %433, align 4
  %435 = add nsw i32 %434, %432
  store i32 %435, i32* %433, align 4
  %436 = load i32, i32* %6, align 4
  %437 = add nsw i32 %436, -1
  store i32 %437, i32* %6, align 4
  br label %438

438:                                              ; preds = %427, %426
  br label %83

439:                                              ; preds = %83
  ret void
}

declare dso_local i64 @READ_U32(i32*) #1

declare dso_local i32 @WRITE_U32(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
