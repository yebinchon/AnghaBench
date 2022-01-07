; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_scsp_set_b.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_scsp_set_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 (i32, i32, i32)* }

@.str = private unnamed_addr constant [24 x i8] c"scsp : reg %.2X = %.2X\0A\00", align 1
@scsp_ccr = common dso_local global i32* null, align 8
@scsp = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@M68K = common dso_local global %struct.TYPE_4__* null, align 8
@SoundRam = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @scsp_set_b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsp_set_b(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 1032
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 1053
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, 63
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @SCSPLOG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %12, %9, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32*, i32** @scsp_ccr, align 8
  %20 = load i32, i32* %3, align 4
  %21 = xor i32 %20, 3
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  store i32 %18, i32* %23, align 4
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, 63
  switch i32 %25, label %270 [
    i32 0, label %26
    i32 1, label %60
    i32 2, label %63
    i32 3, label %70
    i32 7, label %80
    i32 8, label %83
    i32 18, label %88
    i32 19, label %94
    i32 20, label %100
    i32 21, label %113
    i32 22, label %119
    i32 23, label %133
    i32 24, label %139
    i32 25, label %142
    i32 26, label %145
    i32 27, label %148
    i32 28, label %151
    i32 29, label %154
    i32 30, label %157
    i32 31, label %188
    i32 33, label %217
    i32 34, label %224
    i32 35, label %230
    i32 37, label %235
    i32 39, label %237
    i32 41, label %239
    i32 42, label %241
    i32 43, label %247
    i32 45, label %252
    i32 46, label %259
    i32 47, label %265
  ]

26:                                               ; preds = %17
  %27 = load i32, i32* %4, align 4
  %28 = ashr i32 %27, 1
  %29 = and i32 %28, 1
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 0), align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 0), align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @M68K, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %34, align 8
  %36 = load i32, i32* @SoundRam, align 4
  %37 = call i32 %35(i32 0, i32 524288, i32 %36)
  br label %59

38:                                               ; preds = %26
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @M68K, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %40, align 8
  %42 = load i32, i32* @SoundRam, align 4
  %43 = call i32 %41(i32 0, i32 262144, i32 %42)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @M68K, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %45, align 8
  %47 = load i32, i32* @SoundRam, align 4
  %48 = call i32 %46(i32 262144, i32 524288, i32 %47)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @M68K, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %50, align 8
  %52 = load i32, i32* @SoundRam, align 4
  %53 = call i32 %51(i32 524288, i32 786432, i32 %52)
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @M68K, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %55, align 8
  %57 = load i32, i32* @SoundRam, align 4
  %58 = call i32 %56(i32 786432, i32 1048576, i32 %57)
  br label %59

59:                                               ; preds = %38, %32
  br label %270

60:                                               ; preds = %17
  %61 = load i32, i32* %4, align 4
  %62 = and i32 %61, 15
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 1), align 4
  br label %270

63:                                               ; preds = %17
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 2), align 4
  %65 = and i32 %64, 1
  %66 = load i32, i32* %4, align 4
  %67 = and i32 %66, 1
  %68 = shl i32 %67, 1
  %69 = add nsw i32 %65, %68
  store i32 %69, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 2), align 4
  br label %270

70:                                               ; preds = %17
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 2), align 4
  %72 = and i32 %71, 2
  %73 = load i32, i32* %4, align 4
  %74 = ashr i32 %73, 7
  %75 = and i32 %74, 1
  %76 = add nsw i32 %72, %75
  store i32 %76, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 2), align 4
  %77 = load i32, i32* %4, align 4
  %78 = and i32 %77, 127
  %79 = mul nsw i32 %78, 8192
  store i32 %79, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 3), align 4
  br label %270

80:                                               ; preds = %17
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @scsp_midi_out_send(i32 %81)
  br label %270

83:                                               ; preds = %17
  %84 = load i32, i32* %4, align 4
  %85 = ashr i32 %84, 3
  %86 = and i32 %85, 31
  store i32 %86, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 4), align 4
  %87 = call i32 (...) @scsp_update_monitor()
  br label %270

88:                                               ; preds = %17
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 5), align 4
  %90 = and i32 %89, 459006
  %91 = load i32, i32* %4, align 4
  %92 = shl i32 %91, 8
  %93 = add nsw i32 %90, %92
  store i32 %93, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 5), align 4
  br label %270

94:                                               ; preds = %17
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 5), align 4
  %96 = and i32 %95, 524032
  %97 = load i32, i32* %4, align 4
  %98 = and i32 %97, 254
  %99 = add nsw i32 %96, %98
  store i32 %99, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 5), align 4
  br label %270

100:                                              ; preds = %17
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 5), align 4
  %102 = and i32 %101, 65534
  %103 = load i32, i32* %4, align 4
  %104 = and i32 %103, 112
  %105 = shl i32 %104, 12
  %106 = add nsw i32 %102, %105
  store i32 %106, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 5), align 4
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 6), align 4
  %108 = and i32 %107, 254
  %109 = load i32, i32* %4, align 4
  %110 = and i32 %109, 15
  %111 = shl i32 %110, 8
  %112 = add nsw i32 %108, %111
  store i32 %112, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 6), align 4
  br label %270

113:                                              ; preds = %17
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 6), align 4
  %115 = and i32 %114, 3840
  %116 = load i32, i32* %4, align 4
  %117 = and i32 %116, 254
  %118 = add nsw i32 %115, %117
  store i32 %118, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 6), align 4
  br label %270

119:                                              ; preds = %17
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 7), align 4
  %121 = and i32 %120, 254
  %122 = load i32, i32* %4, align 4
  %123 = and i32 %122, 15
  %124 = shl i32 %123, 8
  %125 = add nsw i32 %121, %124
  store i32 %125, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 7), align 4
  %126 = load i32, i32* %4, align 4
  %127 = and i32 %126, 240
  store i32 %127, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 8), align 4
  %128 = and i32 %127, 16
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %119
  %131 = call i32 (...) @scsp_dma()
  br label %132

132:                                              ; preds = %130, %119
  br label %270

133:                                              ; preds = %17
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 7), align 4
  %135 = and i32 %134, 3840
  %136 = load i32, i32* %4, align 4
  %137 = and i32 %136, 254
  %138 = add nsw i32 %135, %137
  store i32 %138, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 7), align 4
  br label %270

139:                                              ; preds = %17
  %140 = load i32, i32* %4, align 4
  %141 = and i32 %140, 7
  store i32 %141, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 9), align 4
  br label %270

142:                                              ; preds = %17
  %143 = load i32, i32* %4, align 4
  %144 = shl i32 %143, 8
  store i32 %144, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 10), align 4
  br label %270

145:                                              ; preds = %17
  %146 = load i32, i32* %4, align 4
  %147 = and i32 %146, 7
  store i32 %147, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 11), align 4
  br label %270

148:                                              ; preds = %17
  %149 = load i32, i32* %4, align 4
  %150 = shl i32 %149, 8
  store i32 %150, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 12), align 4
  br label %270

151:                                              ; preds = %17
  %152 = load i32, i32* %4, align 4
  %153 = and i32 %152, 7
  store i32 %153, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 13), align 4
  br label %270

154:                                              ; preds = %17
  %155 = load i32, i32* %4, align 4
  %156 = shl i32 %155, 8
  store i32 %156, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 14), align 4
  br label %270

157:                                              ; preds = %17
  %158 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 15), align 4
  %159 = and i32 %158, 255
  %160 = load i32, i32* %4, align 4
  %161 = shl i32 %160, 8
  %162 = add nsw i32 %159, %161
  store i32 %162, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 15), align 4
  store i32 0, i32* %5, align 4
  br label %163

163:                                              ; preds = %184, %157
  %164 = load i32, i32* %5, align 4
  %165 = icmp slt i32 %164, 3
  br i1 %165, label %166, label %187

166:                                              ; preds = %163
  %167 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 15), align 4
  %168 = load i32, i32* %5, align 4
  %169 = shl i32 1, %168
  %170 = and i32 %167, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %183

172:                                              ; preds = %166
  %173 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 16), align 4
  %174 = load i32, i32* %5, align 4
  %175 = shl i32 1, %174
  %176 = and i32 %173, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %172
  %179 = load i32, i32* %5, align 4
  %180 = add nsw i32 %179, 8
  %181 = shl i32 1, %180
  %182 = call i32 @scsp_trigger_sound_interrupt(i32 %181)
  br label %183

183:                                              ; preds = %178, %172, %166
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %5, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %5, align 4
  br label %163

187:                                              ; preds = %163
  br label %270

188:                                              ; preds = %17
  %189 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 15), align 4
  %190 = and i32 %189, 1792
  %191 = load i32, i32* %4, align 4
  %192 = add nsw i32 %190, %191
  store i32 %192, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 15), align 4
  store i32 0, i32* %6, align 4
  br label %193

193:                                              ; preds = %213, %188
  %194 = load i32, i32* %6, align 4
  %195 = icmp slt i32 %194, 8
  br i1 %195, label %196, label %216

196:                                              ; preds = %193
  %197 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 15), align 4
  %198 = load i32, i32* %6, align 4
  %199 = shl i32 1, %198
  %200 = and i32 %197, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %212

202:                                              ; preds = %196
  %203 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 16), align 4
  %204 = load i32, i32* %6, align 4
  %205 = shl i32 1, %204
  %206 = and i32 %203, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %202
  %209 = load i32, i32* %6, align 4
  %210 = shl i32 1, %209
  %211 = call i32 @scsp_trigger_sound_interrupt(i32 %210)
  br label %212

212:                                              ; preds = %208, %202, %196
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %6, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %6, align 4
  br label %193

216:                                              ; preds = %193
  br label %270

217:                                              ; preds = %17
  %218 = load i32, i32* %4, align 4
  %219 = and i32 %218, 32
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %217
  %222 = call i32 @scsp_sound_interrupt(i32 32)
  br label %223

223:                                              ; preds = %221, %217
  br label %270

224:                                              ; preds = %17
  %225 = load i32, i32* %4, align 4
  %226 = shl i32 %225, 8
  %227 = xor i32 %226, -1
  %228 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 16), align 4
  %229 = and i32 %228, %227
  store i32 %229, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 16), align 4
  br label %270

230:                                              ; preds = %17
  %231 = load i32, i32* %4, align 4
  %232 = xor i32 %231, -1
  %233 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 16), align 4
  %234 = and i32 %233, %232
  store i32 %234, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 16), align 4
  br label %270

235:                                              ; preds = %17
  %236 = load i32, i32* %4, align 4
  store i32 %236, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 17), align 4
  br label %270

237:                                              ; preds = %17
  %238 = load i32, i32* %4, align 4
  store i32 %238, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 18), align 4
  br label %270

239:                                              ; preds = %17
  %240 = load i32, i32* %4, align 4
  store i32 %240, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 19), align 4
  br label %270

241:                                              ; preds = %17
  %242 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 20), align 4
  %243 = and i32 %242, 255
  %244 = load i32, i32* %4, align 4
  %245 = shl i32 %244, 8
  %246 = add nsw i32 %243, %245
  store i32 %246, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 20), align 4
  br label %270

247:                                              ; preds = %17
  %248 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 20), align 4
  %249 = and i32 %248, 1792
  %250 = load i32, i32* %4, align 4
  %251 = add nsw i32 %249, %250
  store i32 %251, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 20), align 4
  br label %270

252:                                              ; preds = %17
  %253 = load i32, i32* %4, align 4
  %254 = and i32 %253, 32
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %252
  %257 = call i32 @scsp_main_interrupt(i32 32)
  br label %258

258:                                              ; preds = %256, %252
  br label %270

259:                                              ; preds = %17
  %260 = load i32, i32* %4, align 4
  %261 = shl i32 %260, 8
  %262 = xor i32 %261, -1
  %263 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 21), align 4
  %264 = and i32 %263, %262
  store i32 %264, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 21), align 4
  br label %270

265:                                              ; preds = %17
  %266 = load i32, i32* %4, align 4
  %267 = xor i32 %266, -1
  %268 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 21), align 4
  %269 = and i32 %268, %267
  store i32 %269, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scsp, i32 0, i32 21), align 4
  br label %270

270:                                              ; preds = %59, %60, %63, %70, %80, %83, %88, %94, %100, %113, %132, %133, %139, %142, %145, %148, %151, %154, %187, %216, %223, %224, %230, %235, %237, %239, %241, %247, %258, %259, %265, %17
  ret void
}

declare dso_local i32 @SCSPLOG(i8*, i32, i32) #1

declare dso_local i32 @scsp_midi_out_send(i32) #1

declare dso_local i32 @scsp_update_monitor(...) #1

declare dso_local i32 @scsp_dma(...) #1

declare dso_local i32 @scsp_trigger_sound_interrupt(i32) #1

declare dso_local i32 @scsp_sound_interrupt(i32) #1

declare dso_local i32 @scsp_main_interrupt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
