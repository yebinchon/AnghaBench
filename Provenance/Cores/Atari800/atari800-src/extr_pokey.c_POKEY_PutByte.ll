; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pokey.c_POKEY_PutByte.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pokey.c_POKEY_PutByte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POKEY_AUDC = common dso_local global i32* null, align 8
@POKEY_CHAN1 = common dso_local global i64 0, align 8
@SOUND_GAIN = common dso_local global i32 0, align 4
@POKEY_CHAN2 = common dso_local global i64 0, align 8
@POKEY_CHAN3 = common dso_local global i64 0, align 8
@POKEY_CHAN4 = common dso_local global i64 0, align 8
@POKEY_AUDCTL = common dso_local global i32* null, align 8
@POKEY_CLOCK_15 = common dso_local global i32 0, align 4
@POKEY_DIV_15 = common dso_local global i32 0, align 4
@POKEY_Base_mult = common dso_local global i32* null, align 8
@POKEY_DIV_64 = common dso_local global i32 0, align 4
@POKEY_AUDF = common dso_local global i32* null, align 8
@POKEY_CH1_CH2 = common dso_local global i32 0, align 4
@POKEY_CH3_CH4 = common dso_local global i32 0, align 4
@POKEY_IRQEN = common dso_local global i32 0, align 4
@POKEY_IRQST = common dso_local global i32 0, align 4
@PBI_IRQ = common dso_local global i32 0, align 4
@CPU_IRQ = common dso_local global i32 0, align 4
@POKEY_SKSTAT = common dso_local global i32 0, align 4
@POKEY_SKCTL = common dso_local global i32 0, align 4
@pot_scanline = common dso_local global i32 0, align 4
@SIO_SEROUT_INTERVAL = common dso_local global i32 0, align 4
@POKEY_DELAYED_SEROUT_IRQ = common dso_local global i32 0, align 4
@SIO_XMTDONE_INTERVAL = common dso_local global i32 0, align 4
@POKEY_DELAYED_XMTDONE_IRQ = common dso_local global i32 0, align 4
@POKEY_DivNMax = common dso_local global i32* null, align 8
@POKEY_DivNIRQ = common dso_local global i32* null, align 8
@POKEY_DELAYED_SERIN_IRQ = common dso_local global i32 0, align 4
@PC = common dso_local global i32 0, align 4
@POKEYSND_stereo_enabled = common dso_local global i64 0, align 8
@POKEY_CHIP2 = common dso_local global i64 0, align 8
@POKEY_OFFSET_POKEY2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @POKEY_PutByte(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, 15
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  switch i32 %7, label %270 [
    i32 142, label %8
    i32 141, label %16
    i32 140, label %24
    i32 139, label %32
    i32 138, label %40
    i32 137, label %76
    i32 136, label %105
    i32 135, label %117
    i32 134, label %146
    i32 133, label %158
    i32 129, label %177
    i32 132, label %180
    i32 131, label %186
    i32 128, label %229
    i32 130, label %254
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32*, i32** @POKEY_AUDC, align 8
  %11 = load i64, i64* @POKEY_CHAN1, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @SOUND_GAIN, align 4
  %15 = call i32 @POKEYSND_Update(i32 142, i32 %13, i32 0, i32 %14)
  br label %270

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32*, i32** @POKEY_AUDC, align 8
  %19 = load i64, i64* @POKEY_CHAN2, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @SOUND_GAIN, align 4
  %23 = call i32 @POKEYSND_Update(i32 141, i32 %21, i32 0, i32 %22)
  br label %270

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = load i32*, i32** @POKEY_AUDC, align 8
  %27 = load i64, i64* @POKEY_CHAN3, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @SOUND_GAIN, align 4
  %31 = call i32 @POKEYSND_Update(i32 140, i32 %29, i32 0, i32 %30)
  br label %270

32:                                               ; preds = %2
  %33 = load i32, i32* %4, align 4
  %34 = load i32*, i32** @POKEY_AUDC, align 8
  %35 = load i64, i64* @POKEY_CHAN4, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @SOUND_GAIN, align 4
  %39 = call i32 @POKEYSND_Update(i32 139, i32 %37, i32 0, i32 %38)
  br label %270

40:                                               ; preds = %2
  %41 = load i32, i32* %4, align 4
  %42 = load i32*, i32** @POKEY_AUDCTL, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @POKEY_CLOCK_15, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load i32, i32* @POKEY_DIV_15, align 4
  %50 = load i32*, i32** @POKEY_Base_mult, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 %49, i32* %51, align 4
  br label %56

52:                                               ; preds = %40
  %53 = load i32, i32* @POKEY_DIV_64, align 4
  %54 = load i32*, i32** @POKEY_Base_mult, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %52, %48
  %57 = load i64, i64* @POKEY_CHAN1, align 8
  %58 = trunc i64 %57 to i32
  %59 = shl i32 1, %58
  %60 = load i64, i64* @POKEY_CHAN2, align 8
  %61 = trunc i64 %60 to i32
  %62 = shl i32 1, %61
  %63 = or i32 %59, %62
  %64 = load i64, i64* @POKEY_CHAN3, align 8
  %65 = trunc i64 %64 to i32
  %66 = shl i32 1, %65
  %67 = or i32 %63, %66
  %68 = load i64, i64* @POKEY_CHAN4, align 8
  %69 = trunc i64 %68 to i32
  %70 = shl i32 1, %69
  %71 = or i32 %67, %70
  %72 = call i32 @Update_Counter(i32 %71)
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @SOUND_GAIN, align 4
  %75 = call i32 @POKEYSND_Update(i32 138, i32 %73, i32 0, i32 %74)
  br label %270

76:                                               ; preds = %2
  %77 = load i32, i32* %4, align 4
  %78 = load i32*, i32** @POKEY_AUDF, align 8
  %79 = load i64, i64* @POKEY_CHAN1, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32 %77, i32* %80, align 4
  %81 = load i32*, i32** @POKEY_AUDCTL, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @POKEY_CH1_CH2, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %76
  %88 = load i64, i64* @POKEY_CHAN2, align 8
  %89 = trunc i64 %88 to i32
  %90 = shl i32 1, %89
  %91 = load i64, i64* @POKEY_CHAN1, align 8
  %92 = trunc i64 %91 to i32
  %93 = shl i32 1, %92
  %94 = or i32 %90, %93
  br label %99

95:                                               ; preds = %76
  %96 = load i64, i64* @POKEY_CHAN1, align 8
  %97 = trunc i64 %96 to i32
  %98 = shl i32 1, %97
  br label %99

99:                                               ; preds = %95, %87
  %100 = phi i32 [ %94, %87 ], [ %98, %95 ]
  %101 = call i32 @Update_Counter(i32 %100)
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @SOUND_GAIN, align 4
  %104 = call i32 @POKEYSND_Update(i32 137, i32 %102, i32 0, i32 %103)
  br label %270

105:                                              ; preds = %2
  %106 = load i32, i32* %4, align 4
  %107 = load i32*, i32** @POKEY_AUDF, align 8
  %108 = load i64, i64* @POKEY_CHAN2, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  store i32 %106, i32* %109, align 4
  %110 = load i64, i64* @POKEY_CHAN2, align 8
  %111 = trunc i64 %110 to i32
  %112 = shl i32 1, %111
  %113 = call i32 @Update_Counter(i32 %112)
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @SOUND_GAIN, align 4
  %116 = call i32 @POKEYSND_Update(i32 136, i32 %114, i32 0, i32 %115)
  br label %270

117:                                              ; preds = %2
  %118 = load i32, i32* %4, align 4
  %119 = load i32*, i32** @POKEY_AUDF, align 8
  %120 = load i64, i64* @POKEY_CHAN3, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  store i32 %118, i32* %121, align 4
  %122 = load i32*, i32** @POKEY_AUDCTL, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @POKEY_CH3_CH4, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %117
  %129 = load i64, i64* @POKEY_CHAN4, align 8
  %130 = trunc i64 %129 to i32
  %131 = shl i32 1, %130
  %132 = load i64, i64* @POKEY_CHAN3, align 8
  %133 = trunc i64 %132 to i32
  %134 = shl i32 1, %133
  %135 = or i32 %131, %134
  br label %140

136:                                              ; preds = %117
  %137 = load i64, i64* @POKEY_CHAN3, align 8
  %138 = trunc i64 %137 to i32
  %139 = shl i32 1, %138
  br label %140

140:                                              ; preds = %136, %128
  %141 = phi i32 [ %135, %128 ], [ %139, %136 ]
  %142 = call i32 @Update_Counter(i32 %141)
  %143 = load i32, i32* %4, align 4
  %144 = load i32, i32* @SOUND_GAIN, align 4
  %145 = call i32 @POKEYSND_Update(i32 135, i32 %143, i32 0, i32 %144)
  br label %270

146:                                              ; preds = %2
  %147 = load i32, i32* %4, align 4
  %148 = load i32*, i32** @POKEY_AUDF, align 8
  %149 = load i64, i64* @POKEY_CHAN4, align 8
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  store i32 %147, i32* %150, align 4
  %151 = load i64, i64* @POKEY_CHAN4, align 8
  %152 = trunc i64 %151 to i32
  %153 = shl i32 1, %152
  %154 = call i32 @Update_Counter(i32 %153)
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* @SOUND_GAIN, align 4
  %157 = call i32 @POKEYSND_Update(i32 134, i32 %155, i32 0, i32 %156)
  br label %270

158:                                              ; preds = %2
  %159 = load i32, i32* %4, align 4
  store i32 %159, i32* @POKEY_IRQEN, align 4
  %160 = load i32, i32* %4, align 4
  %161 = xor i32 %160, -1
  %162 = and i32 %161, 247
  %163 = load i32, i32* @POKEY_IRQST, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* @POKEY_IRQST, align 4
  %165 = load i32, i32* @POKEY_IRQST, align 4
  %166 = xor i32 %165, -1
  %167 = load i32, i32* @POKEY_IRQEN, align 4
  %168 = and i32 %166, %167
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %158
  %171 = load i32, i32* @PBI_IRQ, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %170
  store i32 0, i32* @CPU_IRQ, align 4
  br label %176

174:                                              ; preds = %170, %158
  %175 = call i32 (...) @CPU_GenerateIRQ()
  br label %176

176:                                              ; preds = %174, %173
  br label %270

177:                                              ; preds = %2
  %178 = load i32, i32* @POKEY_SKSTAT, align 4
  %179 = or i32 %178, 224
  store i32 %179, i32* @POKEY_SKSTAT, align 4
  br label %270

180:                                              ; preds = %2
  %181 = load i32, i32* @POKEY_SKCTL, align 4
  %182 = and i32 %181, 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %180
  store i32 0, i32* @pot_scanline, align 4
  br label %185

185:                                              ; preds = %184, %180
  br label %270

186:                                              ; preds = %2
  %187 = load i32, i32* @POKEY_SKCTL, align 4
  %188 = and i32 %187, 112
  %189 = icmp eq i32 %188, 32
  br i1 %189, label %190, label %196

190:                                              ; preds = %186
  %191 = call i32 (...) @POKEY_siocheck()
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %190
  %194 = load i32, i32* %4, align 4
  %195 = call i32 @SIO_PutByte(i32 %194)
  br label %196

196:                                              ; preds = %193, %190, %186
  %197 = load i32, i32* @POKEY_SKCTL, align 4
  %198 = and i32 %197, 8
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %196
  %201 = load i32, i32* @SIO_SEROUT_INTERVAL, align 4
  store i32 %201, i32* @POKEY_DELAYED_SEROUT_IRQ, align 4
  %202 = load i32, i32* @POKEY_IRQST, align 4
  %203 = or i32 %202, 8
  store i32 %203, i32* @POKEY_IRQST, align 4
  %204 = load i32, i32* @SIO_XMTDONE_INTERVAL, align 4
  store i32 %204, i32* @POKEY_DELAYED_XMTDONE_IRQ, align 4
  br label %228

205:                                              ; preds = %196
  %206 = load i32*, i32** @POKEY_AUDF, align 8
  %207 = load i64, i64* @POKEY_CHAN3, align 8
  %208 = getelementptr inbounds i32, i32* %206, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = load i32*, i32** @POKEY_AUDF, align 8
  %211 = load i64, i64* @POKEY_CHAN4, align 8
  %212 = getelementptr inbounds i32, i32* %210, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = mul nsw i32 %213, 256
  %215 = add nsw i32 %209, %214
  %216 = mul nsw i32 156000, %215
  %217 = sdiv i32 %216, 895000
  store i32 %217, i32* @POKEY_DELAYED_SEROUT_IRQ, align 4
  %218 = load i32, i32* @POKEY_DELAYED_SEROUT_IRQ, align 4
  %219 = icmp sge i32 %218, 3
  br i1 %219, label %220, label %226

220:                                              ; preds = %205
  %221 = load i32, i32* @POKEY_IRQST, align 4
  %222 = or i32 %221, 8
  store i32 %222, i32* @POKEY_IRQST, align 4
  %223 = load i32, i32* @POKEY_DELAYED_SEROUT_IRQ, align 4
  %224 = mul nsw i32 2, %223
  %225 = sub nsw i32 %224, 2
  store i32 %225, i32* @POKEY_DELAYED_XMTDONE_IRQ, align 4
  br label %227

226:                                              ; preds = %205
  store i32 0, i32* @POKEY_DELAYED_SEROUT_IRQ, align 4
  store i32 0, i32* @POKEY_DELAYED_XMTDONE_IRQ, align 4
  br label %227

227:                                              ; preds = %226, %220
  br label %228

228:                                              ; preds = %227, %200
  br label %270

229:                                              ; preds = %2
  %230 = load i32*, i32** @POKEY_DivNMax, align 8
  %231 = load i64, i64* @POKEY_CHAN1, align 8
  %232 = getelementptr inbounds i32, i32* %230, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = load i32*, i32** @POKEY_DivNIRQ, align 8
  %235 = load i64, i64* @POKEY_CHAN1, align 8
  %236 = getelementptr inbounds i32, i32* %234, i64 %235
  store i32 %233, i32* %236, align 4
  %237 = load i32*, i32** @POKEY_DivNMax, align 8
  %238 = load i64, i64* @POKEY_CHAN2, align 8
  %239 = getelementptr inbounds i32, i32* %237, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = load i32*, i32** @POKEY_DivNIRQ, align 8
  %242 = load i64, i64* @POKEY_CHAN2, align 8
  %243 = getelementptr inbounds i32, i32* %241, i64 %242
  store i32 %240, i32* %243, align 4
  %244 = load i32*, i32** @POKEY_DivNMax, align 8
  %245 = load i64, i64* @POKEY_CHAN4, align 8
  %246 = getelementptr inbounds i32, i32* %244, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = load i32*, i32** @POKEY_DivNIRQ, align 8
  %249 = load i64, i64* @POKEY_CHAN4, align 8
  %250 = getelementptr inbounds i32, i32* %248, i64 %249
  store i32 %247, i32* %250, align 4
  %251 = load i32, i32* %4, align 4
  %252 = load i32, i32* @SOUND_GAIN, align 4
  %253 = call i32 @POKEYSND_Update(i32 128, i32 %251, i32 0, i32 %252)
  br label %270

254:                                              ; preds = %2
  %255 = load i32, i32* %4, align 4
  store i32 %255, i32* @POKEY_SKCTL, align 4
  %256 = load i32, i32* %4, align 4
  %257 = load i32, i32* @SOUND_GAIN, align 4
  %258 = call i32 @POKEYSND_Update(i32 130, i32 %256, i32 0, i32 %257)
  %259 = load i32, i32* %4, align 4
  %260 = and i32 %259, 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %254
  store i32 228, i32* @pot_scanline, align 4
  br label %263

263:                                              ; preds = %262, %254
  %264 = load i32, i32* %4, align 4
  %265 = and i32 %264, 3
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %263
  store i32 0, i32* @POKEY_DELAYED_SERIN_IRQ, align 4
  store i32 0, i32* @POKEY_DELAYED_SEROUT_IRQ, align 4
  store i32 0, i32* @POKEY_DELAYED_XMTDONE_IRQ, align 4
  %268 = call i32 (...) @CASSETTE_ResetPOKEY()
  br label %269

269:                                              ; preds = %267, %263
  br label %270

270:                                              ; preds = %2, %269, %229, %228, %185, %177, %176, %146, %140, %105, %99, %56, %32, %24, %16, %8
  ret void
}

declare dso_local i32 @POKEYSND_Update(i32, i32, i32, i32) #1

declare dso_local i32 @Update_Counter(i32) #1

declare dso_local i32 @CPU_GenerateIRQ(...) #1

declare dso_local i32 @POKEY_siocheck(...) #1

declare dso_local i32 @SIO_PutByte(i32) #1

declare dso_local i32 @CASSETTE_ResetPOKEY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
