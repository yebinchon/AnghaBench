; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_viddc.c_Vdp1ReadTexture.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_viddc.c_Vdp1ReadTexture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, float, float }
%struct.TYPE_11__ = type { i64, i64, i64, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.TYPE_9__ = type { i32, i32 }

@cur_spr = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@cached_spr = common dso_local global i32 0, align 4
@cache = common dso_local global %struct.TYPE_11__* null, align 8
@cur_addr = common dso_local global i32 0, align 4
@QACR0 = common dso_local global i32 0, align 4
@QACR1 = common dso_local global i32 0, align 4
@Vdp2Regs = common dso_local global %struct.TYPE_12__* null, align 8
@Vdp1Ram = common dso_local global i32 0, align 4
@vdp1cor = common dso_local global i32 0, align 4
@vdp1cog = common dso_local global i32 0, align 4
@vdp1cob = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unimplemented sprite color mode: %X\0A\00", align 1
@PVR_TA_PM2_USIZE_MASK = common dso_local global i32 0, align 4
@PVR_TA_PM2_VSIZE_MASK = common dso_local global i32 0, align 4
@PVR_TA_PM2_USIZE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid texture U size\00", align 1
@PVR_TA_PM2_VSIZE_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Invalid texture V size\00", align 1
@PVR_TXRFMT_NONTWIDDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_9__*)* @Vdp1ReadTexture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Vdp1ReadTexture(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = shl i32 %44, 3
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %6, align 8
  store i32 0, i32* %9, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 64
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %12, align 4
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_spr, i32 0, i32 0), align 8
  %54 = call i32 @power_of_two(i64 %53)
  store i32 %54, i32* %14, align 4
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_spr, i32 0, i32 1), align 8
  %56 = call i32 @power_of_two(i64 %55)
  store i32 %56, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %57

57:                                               ; preds = %97, %2
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @cached_spr, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %100

61:                                               ; preds = %57
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cache, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %96

70:                                               ; preds = %61
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cache, align 8
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_spr, i32 0, i32 0), align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %95

79:                                               ; preds = %70
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cache, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_spr, i32 0, i32 1), align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %79
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cache, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %11, align 4
  br label %819

95:                                               ; preds = %79, %70
  br label %96

96:                                               ; preds = %95, %61
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %13, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %13, align 4
  br label %57

100:                                              ; preds = %57
  %101 = load i32, i32* @cur_addr, align 4
  store i32 %101, i32* %11, align 4
  store i32 4, i32* @QACR0, align 4
  store i32 4, i32* @QACR1, align 4
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = ashr i32 %104, 3
  %106 = and i32 %105, 7
  switch i32 %106, label %777 [
    i32 0, label %107
    i32 1, label %219
    i32 2, label %352
    i32 3, label %465
    i32 4, label %578
    i32 5, label %689
  ]

107:                                              ; preds = %100
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %17, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Vdp2Regs, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 112
  %115 = shl i32 %114, 4
  %116 = sext i32 %115 to i64
  store i64 %116, i64* %18, align 8
  store i32 0, i32* %19, align 4
  br label %117

117:                                              ; preds = %215, %107
  %118 = load i32, i32* %19, align 4
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_spr, i32 0, i32 1), align 8
  %121 = icmp slt i64 %119, %120
  br i1 %121, label %122, label %218

122:                                              ; preds = %117
  %123 = load i32, i32* @cur_addr, align 4
  %124 = and i32 %123, 67108832
  %125 = or i32 -536870912, %124
  %126 = zext i32 %125 to i64
  %127 = inttoptr i64 %126 to i32*
  store i32* %127, i32** %10, align 8
  store i32 0, i32* %20, align 4
  br label %128

128:                                              ; preds = %202, %122
  %129 = load i32, i32* %20, align 4
  %130 = sext i32 %129 to i64
  %131 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_spr, i32 0, i32 0), align 8
  %132 = icmp slt i64 %130, %131
  br i1 %132, label %133, label %205

133:                                              ; preds = %128
  %134 = load i32, i32* @Vdp1Ram, align 4
  %135 = load i64, i64* %6, align 8
  %136 = and i64 %135, 524287
  %137 = call i32 @T1ReadByte(i32 %134, i64 %136)
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  %139 = and i32 %138, 15
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %133
  %142 = load i32, i32* %12, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %141
  store i32 0, i32* %8, align 4
  br label %160

145:                                              ; preds = %141, %133
  %146 = load i32, i32* %7, align 4
  %147 = and i32 %146, 15
  %148 = sext i32 %147 to i64
  %149 = load i64, i64* %17, align 8
  %150 = or i64 %148, %149
  %151 = load i64, i64* %18, align 8
  %152 = add nsw i64 %150, %151
  %153 = trunc i64 %152 to i32
  %154 = call i32 @Vdp2ColorRamGetColor(i32 %153)
  store i32 %154, i32* %16, align 4
  %155 = load i32, i32* %16, align 4
  %156 = load i32, i32* @vdp1cor, align 4
  %157 = load i32, i32* @vdp1cog, align 4
  %158 = load i32, i32* @vdp1cob, align 4
  %159 = call i32 @COLOR_ADD(i32 %155, i32 %156, i32 %157, i32 %158)
  store i32 %159, i32* %8, align 4
  br label %160

160:                                              ; preds = %145, %144
  %161 = load i32, i32* %7, align 4
  %162 = ashr i32 %161, 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %160
  %165 = load i32, i32* %12, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %164
  store i32 0, i32* %7, align 4
  br label %183

168:                                              ; preds = %164, %160
  %169 = load i32, i32* %7, align 4
  %170 = ashr i32 %169, 4
  %171 = sext i32 %170 to i64
  %172 = load i64, i64* %17, align 8
  %173 = or i64 %171, %172
  %174 = load i64, i64* %18, align 8
  %175 = add nsw i64 %173, %174
  %176 = trunc i64 %175 to i32
  %177 = call i32 @Vdp2ColorRamGetColor(i32 %176)
  store i32 %177, i32* %16, align 4
  %178 = load i32, i32* %16, align 4
  %179 = load i32, i32* @vdp1cor, align 4
  %180 = load i32, i32* @vdp1cog, align 4
  %181 = load i32, i32* @vdp1cob, align 4
  %182 = call i32 @COLOR_ADD(i32 %178, i32 %179, i32 %180, i32 %181)
  store i32 %182, i32* %7, align 4
  br label %183

183:                                              ; preds = %168, %167
  %184 = load i64, i64* %6, align 8
  %185 = add nsw i64 %184, 1
  store i64 %185, i64* %6, align 8
  %186 = load i32, i32* %7, align 4
  %187 = load i32, i32* %8, align 4
  %188 = shl i32 %187, 16
  %189 = or i32 %186, %188
  %190 = load i32*, i32** %10, align 8
  %191 = load i32, i32* %9, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %9, align 4
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  store i32 %189, i32* %194, align 4
  %195 = load i32, i32* %9, align 4
  %196 = icmp eq i32 %195, 8
  br i1 %196, label %197, label %201

197:                                              ; preds = %183
  %198 = load i32*, i32** %10, align 8
  call void asm sideeffect "pref @$0", "r,~{dirflag},~{fpsr},~{flags}"(i32* %198) #2, !srcloc !2
  store i32 0, i32* %9, align 4
  %199 = load i32*, i32** %10, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 8
  store i32* %200, i32** %10, align 8
  br label %201

201:                                              ; preds = %197, %183
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %20, align 4
  %204 = add nsw i32 %203, 2
  store i32 %204, i32* %20, align 4
  br label %128

205:                                              ; preds = %128
  %206 = load i32, i32* %9, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %205
  %209 = load i32*, i32** %10, align 8
  call void asm sideeffect "pref @$0", "r,~{dirflag},~{fpsr},~{flags}"(i32* %209) #2, !srcloc !3
  store i32 0, i32* %9, align 4
  br label %210

210:                                              ; preds = %208, %205
  %211 = load i32, i32* %14, align 4
  %212 = mul nsw i32 %211, 2
  %213 = load i32, i32* @cur_addr, align 4
  %214 = add nsw i32 %213, %212
  store i32 %214, i32* @cur_addr, align 4
  br label %215

215:                                              ; preds = %210
  %216 = load i32, i32* %19, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %19, align 4
  br label %117

218:                                              ; preds = %117
  br label %784

219:                                              ; preds = %100
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = mul nsw i64 %222, 8
  store i64 %223, i64* %22, align 8
  store i32 0, i32* %23, align 4
  br label %224

224:                                              ; preds = %348, %219
  %225 = load i32, i32* %23, align 4
  %226 = sext i32 %225 to i64
  %227 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_spr, i32 0, i32 1), align 8
  %228 = icmp slt i64 %226, %227
  br i1 %228, label %229, label %351

229:                                              ; preds = %224
  %230 = load i32, i32* @cur_addr, align 4
  %231 = and i32 %230, 67108832
  %232 = or i32 -536870912, %231
  %233 = zext i32 %232 to i64
  %234 = inttoptr i64 %233 to i32*
  store i32* %234, i32** %10, align 8
  store i32 0, i32* %24, align 4
  br label %235

235:                                              ; preds = %335, %229
  %236 = load i32, i32* %24, align 4
  %237 = sext i32 %236 to i64
  %238 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_spr, i32 0, i32 0), align 8
  %239 = icmp slt i64 %237, %238
  br i1 %239, label %240, label %338

240:                                              ; preds = %235
  %241 = load i32, i32* @Vdp1Ram, align 4
  %242 = load i64, i64* %6, align 8
  %243 = and i64 %242, 524287
  %244 = call i32 @T1ReadByte(i32 %241, i64 %243)
  store i32 %244, i32* %7, align 4
  %245 = load i32, i32* %7, align 4
  %246 = and i32 %245, 15
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %252

248:                                              ; preds = %240
  %249 = load i32, i32* %12, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %252, label %251

251:                                              ; preds = %248
  store i32 0, i32* %8, align 4
  br label %280

252:                                              ; preds = %248, %240
  %253 = load i32, i32* @Vdp1Ram, align 4
  %254 = load i32, i32* %7, align 4
  %255 = and i32 %254, 15
  %256 = mul nsw i32 %255, 2
  %257 = sext i32 %256 to i64
  %258 = load i64, i64* %22, align 8
  %259 = add nsw i64 %257, %258
  %260 = and i64 %259, 524287
  %261 = call i32 @T1ReadWord(i32 %253, i64 %260)
  store i32 %261, i32* %21, align 4
  %262 = load i32, i32* %21, align 4
  %263 = and i32 %262, 32768
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %272

265:                                              ; preds = %252
  %266 = load i32, i32* %21, align 4
  %267 = call i32 @SAT2YAB1(i32 %266)
  %268 = load i32, i32* @vdp1cor, align 4
  %269 = load i32, i32* @vdp1cog, align 4
  %270 = load i32, i32* @vdp1cob, align 4
  %271 = call i32 @COLOR_ADD(i32 %267, i32 %268, i32 %269, i32 %270)
  store i32 %271, i32* %8, align 4
  br label %279

272:                                              ; preds = %252
  %273 = load i32, i32* %21, align 4
  %274 = call i32 @Vdp2ColorRamGetColor(i32 %273)
  %275 = load i32, i32* @vdp1cor, align 4
  %276 = load i32, i32* @vdp1cog, align 4
  %277 = load i32, i32* @vdp1cob, align 4
  %278 = call i32 @COLOR_ADD(i32 %274, i32 %275, i32 %276, i32 %277)
  store i32 %278, i32* %8, align 4
  br label %279

279:                                              ; preds = %272, %265
  br label %280

280:                                              ; preds = %279, %251
  %281 = load i32, i32* %7, align 4
  %282 = ashr i32 %281, 4
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %280
  %285 = load i32, i32* %12, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %288, label %287

287:                                              ; preds = %284
  store i32 0, i32* %7, align 4
  br label %316

288:                                              ; preds = %284, %280
  %289 = load i32, i32* @Vdp1Ram, align 4
  %290 = load i32, i32* %7, align 4
  %291 = ashr i32 %290, 4
  %292 = mul nsw i32 %291, 2
  %293 = sext i32 %292 to i64
  %294 = load i64, i64* %22, align 8
  %295 = add nsw i64 %293, %294
  %296 = and i64 %295, 524287
  %297 = call i32 @T1ReadWord(i32 %289, i64 %296)
  store i32 %297, i32* %21, align 4
  %298 = load i32, i32* %21, align 4
  %299 = and i32 %298, 32768
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %308

301:                                              ; preds = %288
  %302 = load i32, i32* %21, align 4
  %303 = call i32 @SAT2YAB1(i32 %302)
  %304 = load i32, i32* @vdp1cor, align 4
  %305 = load i32, i32* @vdp1cog, align 4
  %306 = load i32, i32* @vdp1cob, align 4
  %307 = call i32 @COLOR_ADD(i32 %303, i32 %304, i32 %305, i32 %306)
  store i32 %307, i32* %7, align 4
  br label %315

308:                                              ; preds = %288
  %309 = load i32, i32* %21, align 4
  %310 = call i32 @Vdp2ColorRamGetColor(i32 %309)
  %311 = load i32, i32* @vdp1cor, align 4
  %312 = load i32, i32* @vdp1cog, align 4
  %313 = load i32, i32* @vdp1cob, align 4
  %314 = call i32 @COLOR_ADD(i32 %310, i32 %311, i32 %312, i32 %313)
  store i32 %314, i32* %7, align 4
  br label %315

315:                                              ; preds = %308, %301
  br label %316

316:                                              ; preds = %315, %287
  %317 = load i64, i64* %6, align 8
  %318 = add nsw i64 %317, 1
  store i64 %318, i64* %6, align 8
  %319 = load i32, i32* %7, align 4
  %320 = load i32, i32* %8, align 4
  %321 = shl i32 %320, 16
  %322 = or i32 %319, %321
  %323 = load i32*, i32** %10, align 8
  %324 = load i32, i32* %9, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %9, align 4
  %326 = sext i32 %324 to i64
  %327 = getelementptr inbounds i32, i32* %323, i64 %326
  store i32 %322, i32* %327, align 4
  %328 = load i32, i32* %9, align 4
  %329 = icmp eq i32 %328, 8
  br i1 %329, label %330, label %334

330:                                              ; preds = %316
  %331 = load i32*, i32** %10, align 8
  call void asm sideeffect "pref @$0", "r,~{dirflag},~{fpsr},~{flags}"(i32* %331) #2, !srcloc !4
  store i32 0, i32* %9, align 4
  %332 = load i32*, i32** %10, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 8
  store i32* %333, i32** %10, align 8
  br label %334

334:                                              ; preds = %330, %316
  br label %335

335:                                              ; preds = %334
  %336 = load i32, i32* %24, align 4
  %337 = add nsw i32 %336, 2
  store i32 %337, i32* %24, align 4
  br label %235

338:                                              ; preds = %235
  %339 = load i32, i32* %9, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %343

341:                                              ; preds = %338
  %342 = load i32*, i32** %10, align 8
  call void asm sideeffect "pref @$0", "r,~{dirflag},~{fpsr},~{flags}"(i32* %342) #2, !srcloc !5
  store i32 0, i32* %9, align 4
  br label %343

343:                                              ; preds = %341, %338
  %344 = load i32, i32* %14, align 4
  %345 = mul nsw i32 %344, 2
  %346 = load i32, i32* @cur_addr, align 4
  %347 = add nsw i32 %346, %345
  store i32 %347, i32* @cur_addr, align 4
  br label %348

348:                                              ; preds = %343
  %349 = load i32, i32* %23, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %23, align 4
  br label %224

351:                                              ; preds = %224
  br label %784

352:                                              ; preds = %100
  %353 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %354 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %353, i32 0, i32 2
  %355 = load i64, i64* %354, align 8
  store i64 %355, i64* %27, align 8
  %356 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Vdp2Regs, align 8
  %357 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = and i32 %358, 112
  %360 = shl i32 %359, 4
  %361 = sext i32 %360 to i64
  store i64 %361, i64* %28, align 8
  store i32 0, i32* %25, align 4
  br label %362

362:                                              ; preds = %461, %352
  %363 = load i32, i32* %25, align 4
  %364 = sext i32 %363 to i64
  %365 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_spr, i32 0, i32 1), align 8
  %366 = icmp slt i64 %364, %365
  br i1 %366, label %367, label %464

367:                                              ; preds = %362
  %368 = load i32, i32* @cur_addr, align 4
  %369 = and i32 %368, 67108832
  %370 = or i32 -536870912, %369
  %371 = zext i32 %370 to i64
  %372 = inttoptr i64 %371 to i32*
  store i32* %372, i32** %10, align 8
  store i32 0, i32* %26, align 4
  br label %373

373:                                              ; preds = %448, %367
  %374 = load i32, i32* %26, align 4
  %375 = sext i32 %374 to i64
  %376 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_spr, i32 0, i32 0), align 8
  %377 = icmp slt i64 %375, %376
  br i1 %377, label %378, label %451

378:                                              ; preds = %373
  %379 = load i32, i32* @Vdp1Ram, align 4
  %380 = load i64, i64* %6, align 8
  %381 = and i64 %380, 524287
  %382 = call i32 @T1ReadByte(i32 %379, i64 %381)
  %383 = and i32 %382, 63
  store i32 %383, i32* %7, align 4
  %384 = load i32, i32* @Vdp1Ram, align 4
  %385 = load i64, i64* %6, align 8
  %386 = add nsw i64 %385, 1
  %387 = and i64 %386, 524287
  %388 = call i32 @T1ReadByte(i32 %384, i64 %387)
  %389 = and i32 %388, 63
  store i32 %389, i32* %8, align 4
  %390 = load i64, i64* %6, align 8
  %391 = add nsw i64 %390, 2
  store i64 %391, i64* %6, align 8
  %392 = load i32, i32* %7, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %397, label %394

394:                                              ; preds = %378
  %395 = load i32, i32* %12, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %411

397:                                              ; preds = %394, %378
  %398 = load i32, i32* %7, align 4
  %399 = sext i32 %398 to i64
  %400 = load i64, i64* %27, align 8
  %401 = or i64 %399, %400
  %402 = load i64, i64* %28, align 8
  %403 = add nsw i64 %401, %402
  %404 = trunc i64 %403 to i32
  %405 = call i32 @Vdp2ColorRamGetColor(i32 %404)
  store i32 %405, i32* %29, align 4
  %406 = load i32, i32* %29, align 4
  %407 = load i32, i32* @vdp1cor, align 4
  %408 = load i32, i32* @vdp1cog, align 4
  %409 = load i32, i32* @vdp1cob, align 4
  %410 = call i32 @COLOR_ADD(i32 %406, i32 %407, i32 %408, i32 %409)
  store i32 %410, i32* %7, align 4
  br label %411

411:                                              ; preds = %397, %394
  %412 = load i32, i32* %8, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %417, label %414

414:                                              ; preds = %411
  %415 = load i32, i32* %12, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %431

417:                                              ; preds = %414, %411
  %418 = load i32, i32* %8, align 4
  %419 = sext i32 %418 to i64
  %420 = load i64, i64* %27, align 8
  %421 = or i64 %419, %420
  %422 = load i64, i64* %28, align 8
  %423 = add nsw i64 %421, %422
  %424 = trunc i64 %423 to i32
  %425 = call i32 @Vdp2ColorRamGetColor(i32 %424)
  store i32 %425, i32* %29, align 4
  %426 = load i32, i32* %29, align 4
  %427 = load i32, i32* @vdp1cor, align 4
  %428 = load i32, i32* @vdp1cog, align 4
  %429 = load i32, i32* @vdp1cob, align 4
  %430 = call i32 @COLOR_ADD(i32 %426, i32 %427, i32 %428, i32 %429)
  store i32 %430, i32* %8, align 4
  br label %431

431:                                              ; preds = %417, %414
  %432 = load i32, i32* %7, align 4
  %433 = load i32, i32* %8, align 4
  %434 = shl i32 %433, 16
  %435 = or i32 %432, %434
  %436 = load i32*, i32** %10, align 8
  %437 = load i32, i32* %9, align 4
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* %9, align 4
  %439 = sext i32 %437 to i64
  %440 = getelementptr inbounds i32, i32* %436, i64 %439
  store i32 %435, i32* %440, align 4
  %441 = load i32, i32* %9, align 4
  %442 = icmp eq i32 %441, 8
  br i1 %442, label %443, label %447

443:                                              ; preds = %431
  %444 = load i32*, i32** %10, align 8
  call void asm sideeffect "pref @$0", "r,~{dirflag},~{fpsr},~{flags}"(i32* %444) #2, !srcloc !6
  store i32 0, i32* %9, align 4
  %445 = load i32*, i32** %10, align 8
  %446 = getelementptr inbounds i32, i32* %445, i64 8
  store i32* %446, i32** %10, align 8
  br label %447

447:                                              ; preds = %443, %431
  br label %448

448:                                              ; preds = %447
  %449 = load i32, i32* %26, align 4
  %450 = add nsw i32 %449, 2
  store i32 %450, i32* %26, align 4
  br label %373

451:                                              ; preds = %373
  %452 = load i32, i32* %9, align 4
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %454, label %456

454:                                              ; preds = %451
  %455 = load i32*, i32** %10, align 8
  call void asm sideeffect "pref @$0", "r,~{dirflag},~{fpsr},~{flags}"(i32* %455) #2, !srcloc !7
  store i32 0, i32* %9, align 4
  br label %456

456:                                              ; preds = %454, %451
  %457 = load i32, i32* %14, align 4
  %458 = mul nsw i32 %457, 2
  %459 = load i32, i32* @cur_addr, align 4
  %460 = add nsw i32 %459, %458
  store i32 %460, i32* @cur_addr, align 4
  br label %461

461:                                              ; preds = %456
  %462 = load i32, i32* %25, align 4
  %463 = add nsw i32 %462, 1
  store i32 %463, i32* %25, align 4
  br label %362

464:                                              ; preds = %362
  br label %784

465:                                              ; preds = %100
  %466 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %467 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %466, i32 0, i32 2
  %468 = load i64, i64* %467, align 8
  store i64 %468, i64* %32, align 8
  %469 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Vdp2Regs, align 8
  %470 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %469, i32 0, i32 0
  %471 = load i32, i32* %470, align 4
  %472 = and i32 %471, 112
  %473 = shl i32 %472, 4
  %474 = sext i32 %473 to i64
  store i64 %474, i64* %33, align 8
  store i32 0, i32* %30, align 4
  br label %475

475:                                              ; preds = %574, %465
  %476 = load i32, i32* %30, align 4
  %477 = sext i32 %476 to i64
  %478 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_spr, i32 0, i32 1), align 8
  %479 = icmp slt i64 %477, %478
  br i1 %479, label %480, label %577

480:                                              ; preds = %475
  %481 = load i32, i32* @cur_addr, align 4
  %482 = and i32 %481, 67108832
  %483 = or i32 -536870912, %482
  %484 = zext i32 %483 to i64
  %485 = inttoptr i64 %484 to i32*
  store i32* %485, i32** %10, align 8
  store i32 0, i32* %31, align 4
  br label %486

486:                                              ; preds = %561, %480
  %487 = load i32, i32* %31, align 4
  %488 = sext i32 %487 to i64
  %489 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_spr, i32 0, i32 0), align 8
  %490 = icmp slt i64 %488, %489
  br i1 %490, label %491, label %564

491:                                              ; preds = %486
  %492 = load i32, i32* @Vdp1Ram, align 4
  %493 = load i64, i64* %6, align 8
  %494 = and i64 %493, 524287
  %495 = call i32 @T1ReadByte(i32 %492, i64 %494)
  %496 = and i32 %495, 127
  store i32 %496, i32* %7, align 4
  %497 = load i32, i32* @Vdp1Ram, align 4
  %498 = load i64, i64* %6, align 8
  %499 = add nsw i64 %498, 1
  %500 = and i64 %499, 524287
  %501 = call i32 @T1ReadByte(i32 %497, i64 %500)
  %502 = and i32 %501, 127
  store i32 %502, i32* %8, align 4
  %503 = load i64, i64* %6, align 8
  %504 = add nsw i64 %503, 2
  store i64 %504, i64* %6, align 8
  %505 = load i32, i32* %7, align 4
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %510, label %507

507:                                              ; preds = %491
  %508 = load i32, i32* %12, align 4
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %510, label %524

510:                                              ; preds = %507, %491
  %511 = load i32, i32* %7, align 4
  %512 = sext i32 %511 to i64
  %513 = load i64, i64* %32, align 8
  %514 = or i64 %512, %513
  %515 = load i64, i64* %33, align 8
  %516 = add nsw i64 %514, %515
  %517 = trunc i64 %516 to i32
  %518 = call i32 @Vdp2ColorRamGetColor(i32 %517)
  store i32 %518, i32* %34, align 4
  %519 = load i32, i32* %34, align 4
  %520 = load i32, i32* @vdp1cor, align 4
  %521 = load i32, i32* @vdp1cog, align 4
  %522 = load i32, i32* @vdp1cob, align 4
  %523 = call i32 @COLOR_ADD(i32 %519, i32 %520, i32 %521, i32 %522)
  store i32 %523, i32* %7, align 4
  br label %524

524:                                              ; preds = %510, %507
  %525 = load i32, i32* %8, align 4
  %526 = icmp ne i32 %525, 0
  br i1 %526, label %530, label %527

527:                                              ; preds = %524
  %528 = load i32, i32* %12, align 4
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %544

530:                                              ; preds = %527, %524
  %531 = load i32, i32* %8, align 4
  %532 = sext i32 %531 to i64
  %533 = load i64, i64* %32, align 8
  %534 = or i64 %532, %533
  %535 = load i64, i64* %33, align 8
  %536 = add nsw i64 %534, %535
  %537 = trunc i64 %536 to i32
  %538 = call i32 @Vdp2ColorRamGetColor(i32 %537)
  store i32 %538, i32* %34, align 4
  %539 = load i32, i32* %34, align 4
  %540 = load i32, i32* @vdp1cor, align 4
  %541 = load i32, i32* @vdp1cog, align 4
  %542 = load i32, i32* @vdp1cob, align 4
  %543 = call i32 @COLOR_ADD(i32 %539, i32 %540, i32 %541, i32 %542)
  store i32 %543, i32* %8, align 4
  br label %544

544:                                              ; preds = %530, %527
  %545 = load i32, i32* %7, align 4
  %546 = load i32, i32* %8, align 4
  %547 = shl i32 %546, 16
  %548 = or i32 %545, %547
  %549 = load i32*, i32** %10, align 8
  %550 = load i32, i32* %9, align 4
  %551 = add nsw i32 %550, 1
  store i32 %551, i32* %9, align 4
  %552 = sext i32 %550 to i64
  %553 = getelementptr inbounds i32, i32* %549, i64 %552
  store i32 %548, i32* %553, align 4
  %554 = load i32, i32* %9, align 4
  %555 = icmp eq i32 %554, 8
  br i1 %555, label %556, label %560

556:                                              ; preds = %544
  %557 = load i32*, i32** %10, align 8
  call void asm sideeffect "pref @$0", "r,~{dirflag},~{fpsr},~{flags}"(i32* %557) #2, !srcloc !8
  store i32 0, i32* %9, align 4
  %558 = load i32*, i32** %10, align 8
  %559 = getelementptr inbounds i32, i32* %558, i64 8
  store i32* %559, i32** %10, align 8
  br label %560

560:                                              ; preds = %556, %544
  br label %561

561:                                              ; preds = %560
  %562 = load i32, i32* %31, align 4
  %563 = add nsw i32 %562, 2
  store i32 %563, i32* %31, align 4
  br label %486

564:                                              ; preds = %486
  %565 = load i32, i32* %9, align 4
  %566 = icmp ne i32 %565, 0
  br i1 %566, label %567, label %569

567:                                              ; preds = %564
  %568 = load i32*, i32** %10, align 8
  call void asm sideeffect "pref @$0", "r,~{dirflag},~{fpsr},~{flags}"(i32* %568) #2, !srcloc !9
  store i32 0, i32* %9, align 4
  br label %569

569:                                              ; preds = %567, %564
  %570 = load i32, i32* %14, align 4
  %571 = mul nsw i32 %570, 2
  %572 = load i32, i32* @cur_addr, align 4
  %573 = add nsw i32 %572, %571
  store i32 %573, i32* @cur_addr, align 4
  br label %574

574:                                              ; preds = %569
  %575 = load i32, i32* %30, align 4
  %576 = add nsw i32 %575, 1
  store i32 %576, i32* %30, align 4
  br label %475

577:                                              ; preds = %475
  br label %784

578:                                              ; preds = %100
  %579 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %580 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %579, i32 0, i32 2
  %581 = load i64, i64* %580, align 8
  store i64 %581, i64* %37, align 8
  %582 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Vdp2Regs, align 8
  %583 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %582, i32 0, i32 0
  %584 = load i32, i32* %583, align 4
  %585 = and i32 %584, 112
  %586 = shl i32 %585, 4
  %587 = sext i32 %586 to i64
  store i64 %587, i64* %38, align 8
  store i32 0, i32* %35, align 4
  br label %588

588:                                              ; preds = %685, %578
  %589 = load i32, i32* %35, align 4
  %590 = sext i32 %589 to i64
  %591 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_spr, i32 0, i32 1), align 8
  %592 = icmp slt i64 %590, %591
  br i1 %592, label %593, label %688

593:                                              ; preds = %588
  %594 = load i32, i32* @cur_addr, align 4
  %595 = and i32 %594, 67108832
  %596 = or i32 -536870912, %595
  %597 = zext i32 %596 to i64
  %598 = inttoptr i64 %597 to i32*
  store i32* %598, i32** %10, align 8
  store i32 0, i32* %36, align 4
  br label %599

599:                                              ; preds = %672, %593
  %600 = load i32, i32* %36, align 4
  %601 = sext i32 %600 to i64
  %602 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_spr, i32 0, i32 0), align 8
  %603 = icmp slt i64 %601, %602
  br i1 %603, label %604, label %675

604:                                              ; preds = %599
  %605 = load i32, i32* @Vdp1Ram, align 4
  %606 = load i64, i64* %6, align 8
  %607 = and i64 %606, 524287
  %608 = call i32 @T1ReadByte(i32 %605, i64 %607)
  store i32 %608, i32* %7, align 4
  %609 = load i32, i32* @Vdp1Ram, align 4
  %610 = load i64, i64* %6, align 8
  %611 = add nsw i64 %610, 1
  %612 = and i64 %611, 524287
  %613 = call i32 @T1ReadByte(i32 %609, i64 %612)
  store i32 %613, i32* %8, align 4
  %614 = load i64, i64* %6, align 8
  %615 = add nsw i64 %614, 2
  store i64 %615, i64* %6, align 8
  %616 = load i32, i32* %7, align 4
  %617 = icmp ne i32 %616, 0
  br i1 %617, label %621, label %618

618:                                              ; preds = %604
  %619 = load i32, i32* %12, align 4
  %620 = icmp ne i32 %619, 0
  br i1 %620, label %621, label %635

621:                                              ; preds = %618, %604
  %622 = load i32, i32* %7, align 4
  %623 = sext i32 %622 to i64
  %624 = load i64, i64* %37, align 8
  %625 = or i64 %623, %624
  %626 = load i64, i64* %38, align 8
  %627 = add nsw i64 %625, %626
  %628 = trunc i64 %627 to i32
  %629 = call i32 @Vdp2ColorRamGetColor(i32 %628)
  store i32 %629, i32* %39, align 4
  %630 = load i32, i32* %39, align 4
  %631 = load i32, i32* @vdp1cor, align 4
  %632 = load i32, i32* @vdp1cog, align 4
  %633 = load i32, i32* @vdp1cob, align 4
  %634 = call i32 @COLOR_ADD(i32 %630, i32 %631, i32 %632, i32 %633)
  store i32 %634, i32* %7, align 4
  br label %635

635:                                              ; preds = %621, %618
  %636 = load i32, i32* %8, align 4
  %637 = icmp ne i32 %636, 0
  br i1 %637, label %641, label %638

638:                                              ; preds = %635
  %639 = load i32, i32* %12, align 4
  %640 = icmp ne i32 %639, 0
  br i1 %640, label %641, label %655

641:                                              ; preds = %638, %635
  %642 = load i32, i32* %8, align 4
  %643 = sext i32 %642 to i64
  %644 = load i64, i64* %37, align 8
  %645 = or i64 %643, %644
  %646 = load i64, i64* %38, align 8
  %647 = add nsw i64 %645, %646
  %648 = trunc i64 %647 to i32
  %649 = call i32 @Vdp2ColorRamGetColor(i32 %648)
  store i32 %649, i32* %39, align 4
  %650 = load i32, i32* %39, align 4
  %651 = load i32, i32* @vdp1cor, align 4
  %652 = load i32, i32* @vdp1cog, align 4
  %653 = load i32, i32* @vdp1cob, align 4
  %654 = call i32 @COLOR_ADD(i32 %650, i32 %651, i32 %652, i32 %653)
  store i32 %654, i32* %8, align 4
  br label %655

655:                                              ; preds = %641, %638
  %656 = load i32, i32* %7, align 4
  %657 = load i32, i32* %8, align 4
  %658 = shl i32 %657, 16
  %659 = or i32 %656, %658
  %660 = load i32*, i32** %10, align 8
  %661 = load i32, i32* %9, align 4
  %662 = add nsw i32 %661, 1
  store i32 %662, i32* %9, align 4
  %663 = sext i32 %661 to i64
  %664 = getelementptr inbounds i32, i32* %660, i64 %663
  store i32 %659, i32* %664, align 4
  %665 = load i32, i32* %9, align 4
  %666 = icmp eq i32 %665, 8
  br i1 %666, label %667, label %671

667:                                              ; preds = %655
  %668 = load i32*, i32** %10, align 8
  call void asm sideeffect "pref @$0", "r,~{dirflag},~{fpsr},~{flags}"(i32* %668) #2, !srcloc !10
  store i32 0, i32* %9, align 4
  %669 = load i32*, i32** %10, align 8
  %670 = getelementptr inbounds i32, i32* %669, i64 8
  store i32* %670, i32** %10, align 8
  br label %671

671:                                              ; preds = %667, %655
  br label %672

672:                                              ; preds = %671
  %673 = load i32, i32* %36, align 4
  %674 = add nsw i32 %673, 2
  store i32 %674, i32* %36, align 4
  br label %599

675:                                              ; preds = %599
  %676 = load i32, i32* %9, align 4
  %677 = icmp ne i32 %676, 0
  br i1 %677, label %678, label %680

678:                                              ; preds = %675
  %679 = load i32*, i32** %10, align 8
  call void asm sideeffect "pref @$0", "r,~{dirflag},~{fpsr},~{flags}"(i32* %679) #2, !srcloc !11
  store i32 0, i32* %9, align 4
  br label %680

680:                                              ; preds = %678, %675
  %681 = load i32, i32* %14, align 4
  %682 = mul nsw i32 %681, 2
  %683 = load i32, i32* @cur_addr, align 4
  %684 = add nsw i32 %683, %682
  store i32 %684, i32* @cur_addr, align 4
  br label %685

685:                                              ; preds = %680
  %686 = load i32, i32* %35, align 4
  %687 = add nsw i32 %686, 1
  store i32 %687, i32* %35, align 4
  br label %588

688:                                              ; preds = %588
  br label %784

689:                                              ; preds = %100
  store i32 0, i32* %40, align 4
  br label %690

690:                                              ; preds = %773, %689
  %691 = load i32, i32* %40, align 4
  %692 = sext i32 %691 to i64
  %693 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_spr, i32 0, i32 1), align 8
  %694 = icmp slt i64 %692, %693
  br i1 %694, label %695, label %776

695:                                              ; preds = %690
  %696 = load i32, i32* @cur_addr, align 4
  %697 = and i32 %696, 67108832
  %698 = or i32 -536870912, %697
  %699 = zext i32 %698 to i64
  %700 = inttoptr i64 %699 to i32*
  store i32* %700, i32** %10, align 8
  store i32 0, i32* %41, align 4
  br label %701

701:                                              ; preds = %760, %695
  %702 = load i32, i32* %41, align 4
  %703 = sext i32 %702 to i64
  %704 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_spr, i32 0, i32 0), align 8
  %705 = icmp slt i64 %703, %704
  br i1 %705, label %706, label %763

706:                                              ; preds = %701
  %707 = load i32, i32* @Vdp1Ram, align 4
  %708 = load i64, i64* %6, align 8
  %709 = and i64 %708, 524287
  %710 = call i32 @T1ReadWord(i32 %707, i64 %709)
  store i32 %710, i32* %7, align 4
  %711 = load i32, i32* @Vdp1Ram, align 4
  %712 = load i64, i64* %6, align 8
  %713 = add nsw i64 %712, 2
  %714 = and i64 %713, 524287
  %715 = call i32 @T1ReadWord(i32 %711, i64 %714)
  store i32 %715, i32* %8, align 4
  %716 = load i64, i64* %6, align 8
  %717 = add nsw i64 %716, 4
  store i64 %717, i64* %6, align 8
  %718 = load i32, i32* %7, align 4
  %719 = icmp ne i32 %718, 0
  br i1 %719, label %723, label %720

720:                                              ; preds = %706
  %721 = load i32, i32* %12, align 4
  %722 = icmp ne i32 %721, 0
  br i1 %722, label %723, label %730

723:                                              ; preds = %720, %706
  %724 = load i32, i32* %7, align 4
  %725 = call i32 @SAT2YAB1(i32 %724)
  %726 = load i32, i32* @vdp1cor, align 4
  %727 = load i32, i32* @vdp1cog, align 4
  %728 = load i32, i32* @vdp1cob, align 4
  %729 = call i32 @COLOR_ADD(i32 %725, i32 %726, i32 %727, i32 %728)
  store i32 %729, i32* %7, align 4
  br label %730

730:                                              ; preds = %723, %720
  %731 = load i32, i32* %8, align 4
  %732 = icmp ne i32 %731, 0
  br i1 %732, label %736, label %733

733:                                              ; preds = %730
  %734 = load i32, i32* %12, align 4
  %735 = icmp ne i32 %734, 0
  br i1 %735, label %736, label %743

736:                                              ; preds = %733, %730
  %737 = load i32, i32* %8, align 4
  %738 = call i32 @SAT2YAB1(i32 %737)
  %739 = load i32, i32* @vdp1cor, align 4
  %740 = load i32, i32* @vdp1cog, align 4
  %741 = load i32, i32* @vdp1cob, align 4
  %742 = call i32 @COLOR_ADD(i32 %738, i32 %739, i32 %740, i32 %741)
  store i32 %742, i32* %8, align 4
  br label %743

743:                                              ; preds = %736, %733
  %744 = load i32, i32* %7, align 4
  %745 = load i32, i32* %8, align 4
  %746 = shl i32 %745, 16
  %747 = or i32 %744, %746
  %748 = load i32*, i32** %10, align 8
  %749 = load i32, i32* %9, align 4
  %750 = add nsw i32 %749, 1
  store i32 %750, i32* %9, align 4
  %751 = sext i32 %749 to i64
  %752 = getelementptr inbounds i32, i32* %748, i64 %751
  store i32 %747, i32* %752, align 4
  %753 = load i32, i32* %9, align 4
  %754 = icmp eq i32 %753, 8
  br i1 %754, label %755, label %759

755:                                              ; preds = %743
  %756 = load i32*, i32** %10, align 8
  call void asm sideeffect "pref @$0", "r,~{dirflag},~{fpsr},~{flags}"(i32* %756) #2, !srcloc !12
  store i32 0, i32* %9, align 4
  %757 = load i32*, i32** %10, align 8
  %758 = getelementptr inbounds i32, i32* %757, i64 8
  store i32* %758, i32** %10, align 8
  br label %759

759:                                              ; preds = %755, %743
  br label %760

760:                                              ; preds = %759
  %761 = load i32, i32* %41, align 4
  %762 = add nsw i32 %761, 2
  store i32 %762, i32* %41, align 4
  br label %701

763:                                              ; preds = %701
  %764 = load i32, i32* %9, align 4
  %765 = icmp ne i32 %764, 0
  br i1 %765, label %766, label %768

766:                                              ; preds = %763
  %767 = load i32*, i32** %10, align 8
  call void asm sideeffect "pref @$0", "r,~{dirflag},~{fpsr},~{flags}"(i32* %767) #2, !srcloc !13
  store i32 0, i32* %9, align 4
  br label %768

768:                                              ; preds = %766, %763
  %769 = load i32, i32* %14, align 4
  %770 = mul nsw i32 %769, 2
  %771 = load i32, i32* @cur_addr, align 4
  %772 = add nsw i32 %771, %770
  store i32 %772, i32* @cur_addr, align 4
  br label %773

773:                                              ; preds = %768
  %774 = load i32, i32* %40, align 4
  %775 = add nsw i32 %774, 1
  store i32 %775, i32* %40, align 4
  br label %690

776:                                              ; preds = %690
  br label %784

777:                                              ; preds = %100
  %778 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %779 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %778, i32 0, i32 1
  %780 = load i32, i32* %779, align 4
  %781 = ashr i32 %780, 3
  %782 = and i32 %781, 7
  %783 = call i32 @VDP1LOG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %782)
  store i32 0, i32* %3, align 4
  br label %956

784:                                              ; preds = %776, %688, %577, %464, %351, %218
  %785 = load i32, i32* @cached_spr, align 4
  %786 = icmp slt i32 %785, 1023
  br i1 %786, label %787, label %818

787:                                              ; preds = %784
  %788 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %789 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %788, i32 0, i32 0
  %790 = load i32, i32* %789, align 8
  %791 = shl i32 %790, 3
  %792 = sext i32 %791 to i64
  %793 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cache, align 8
  %794 = load i32, i32* @cached_spr, align 4
  %795 = sext i32 %794 to i64
  %796 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %793, i64 %795
  %797 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %796, i32 0, i32 0
  store i64 %792, i64* %797, align 8
  %798 = load i32, i32* %11, align 4
  %799 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cache, align 8
  %800 = load i32, i32* @cached_spr, align 4
  %801 = sext i32 %800 to i64
  %802 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %799, i64 %801
  %803 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %802, i32 0, i32 3
  store i32 %798, i32* %803, align 8
  %804 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_spr, i32 0, i32 0), align 8
  %805 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cache, align 8
  %806 = load i32, i32* @cached_spr, align 4
  %807 = sext i32 %806 to i64
  %808 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %805, i64 %807
  %809 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %808, i32 0, i32 1
  store i64 %804, i64* %809, align 8
  %810 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_spr, i32 0, i32 1), align 8
  %811 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cache, align 8
  %812 = load i32, i32* @cached_spr, align 4
  %813 = sext i32 %812 to i64
  %814 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %811, i64 %813
  %815 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %814, i32 0, i32 2
  store i64 %810, i64* %815, align 8
  %816 = load i32, i32* @cached_spr, align 4
  %817 = add nsw i32 %816, 1
  store i32 %817, i32* @cached_spr, align 4
  br label %818

818:                                              ; preds = %787, %784
  br label %819

819:                                              ; preds = %818, %88
  %820 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_spr, i32 0, i32 0), align 8
  %821 = sitofp i64 %820 to float
  %822 = load i32, i32* %14, align 4
  %823 = sitofp i32 %822 to float
  %824 = fdiv float %821, %823
  store float %824, float* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_spr, i32 0, i32 2), align 8
  %825 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_spr, i32 0, i32 1), align 8
  %826 = sitofp i64 %825 to float
  %827 = load i32, i32* %15, align 4
  %828 = sitofp i32 %827 to float
  %829 = fdiv float %826, %828
  store float %829, float* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_spr, i32 0, i32 3), align 4
  %830 = load i32, i32* @PVR_TA_PM2_USIZE_MASK, align 4
  %831 = load i32, i32* @PVR_TA_PM2_VSIZE_MASK, align 4
  %832 = or i32 %830, %831
  %833 = xor i32 %832, -1
  %834 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %835 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %834, i32 0, i32 0
  %836 = load i32, i32* %835, align 4
  %837 = and i32 %836, %833
  store i32 %837, i32* %835, align 4
  %838 = load i32, i32* %14, align 4
  switch i32 %838, label %889 [
    i32 8, label %839
    i32 16, label %840
    i32 32, label %847
    i32 64, label %854
    i32 128, label %861
    i32 256, label %868
    i32 512, label %875
    i32 1024, label %882
  ]

839:                                              ; preds = %819
  br label %891

840:                                              ; preds = %819
  %841 = load i32, i32* @PVR_TA_PM2_USIZE_SHIFT, align 4
  %842 = shl i32 1, %841
  %843 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %844 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %843, i32 0, i32 0
  %845 = load i32, i32* %844, align 4
  %846 = or i32 %845, %842
  store i32 %846, i32* %844, align 4
  br label %891

847:                                              ; preds = %819
  %848 = load i32, i32* @PVR_TA_PM2_USIZE_SHIFT, align 4
  %849 = shl i32 2, %848
  %850 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %851 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %850, i32 0, i32 0
  %852 = load i32, i32* %851, align 4
  %853 = or i32 %852, %849
  store i32 %853, i32* %851, align 4
  br label %891

854:                                              ; preds = %819
  %855 = load i32, i32* @PVR_TA_PM2_USIZE_SHIFT, align 4
  %856 = shl i32 3, %855
  %857 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %858 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %857, i32 0, i32 0
  %859 = load i32, i32* %858, align 4
  %860 = or i32 %859, %856
  store i32 %860, i32* %858, align 4
  br label %891

861:                                              ; preds = %819
  %862 = load i32, i32* @PVR_TA_PM2_USIZE_SHIFT, align 4
  %863 = shl i32 4, %862
  %864 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %865 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %864, i32 0, i32 0
  %866 = load i32, i32* %865, align 4
  %867 = or i32 %866, %863
  store i32 %867, i32* %865, align 4
  br label %891

868:                                              ; preds = %819
  %869 = load i32, i32* @PVR_TA_PM2_USIZE_SHIFT, align 4
  %870 = shl i32 5, %869
  %871 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %872 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %871, i32 0, i32 0
  %873 = load i32, i32* %872, align 4
  %874 = or i32 %873, %870
  store i32 %874, i32* %872, align 4
  br label %891

875:                                              ; preds = %819
  %876 = load i32, i32* @PVR_TA_PM2_USIZE_SHIFT, align 4
  %877 = shl i32 6, %876
  %878 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %879 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %878, i32 0, i32 0
  %880 = load i32, i32* %879, align 4
  %881 = or i32 %880, %877
  store i32 %881, i32* %879, align 4
  br label %891

882:                                              ; preds = %819
  %883 = load i32, i32* @PVR_TA_PM2_USIZE_SHIFT, align 4
  %884 = shl i32 7, %883
  %885 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %886 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %885, i32 0, i32 0
  %887 = load i32, i32* %886, align 4
  %888 = or i32 %887, %884
  store i32 %888, i32* %886, align 4
  br label %891

889:                                              ; preds = %819
  %890 = call i32 @assert_msg(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %891

891:                                              ; preds = %889, %882, %875, %868, %861, %854, %847, %840, %839
  %892 = load i32, i32* %15, align 4
  switch i32 %892, label %943 [
    i32 8, label %893
    i32 16, label %894
    i32 32, label %901
    i32 64, label %908
    i32 128, label %915
    i32 256, label %922
    i32 512, label %929
    i32 1024, label %936
  ]

893:                                              ; preds = %891
  br label %945

894:                                              ; preds = %891
  %895 = load i32, i32* @PVR_TA_PM2_VSIZE_SHIFT, align 4
  %896 = shl i32 1, %895
  %897 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %898 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %897, i32 0, i32 0
  %899 = load i32, i32* %898, align 4
  %900 = or i32 %899, %896
  store i32 %900, i32* %898, align 4
  br label %945

901:                                              ; preds = %891
  %902 = load i32, i32* @PVR_TA_PM2_VSIZE_SHIFT, align 4
  %903 = shl i32 2, %902
  %904 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %905 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %904, i32 0, i32 0
  %906 = load i32, i32* %905, align 4
  %907 = or i32 %906, %903
  store i32 %907, i32* %905, align 4
  br label %945

908:                                              ; preds = %891
  %909 = load i32, i32* @PVR_TA_PM2_VSIZE_SHIFT, align 4
  %910 = shl i32 3, %909
  %911 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %912 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %911, i32 0, i32 0
  %913 = load i32, i32* %912, align 4
  %914 = or i32 %913, %910
  store i32 %914, i32* %912, align 4
  br label %945

915:                                              ; preds = %891
  %916 = load i32, i32* @PVR_TA_PM2_VSIZE_SHIFT, align 4
  %917 = shl i32 4, %916
  %918 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %919 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %918, i32 0, i32 0
  %920 = load i32, i32* %919, align 4
  %921 = or i32 %920, %917
  store i32 %921, i32* %919, align 4
  br label %945

922:                                              ; preds = %891
  %923 = load i32, i32* @PVR_TA_PM2_VSIZE_SHIFT, align 4
  %924 = shl i32 5, %923
  %925 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %926 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %925, i32 0, i32 0
  %927 = load i32, i32* %926, align 4
  %928 = or i32 %927, %924
  store i32 %928, i32* %926, align 4
  br label %945

929:                                              ; preds = %891
  %930 = load i32, i32* @PVR_TA_PM2_VSIZE_SHIFT, align 4
  %931 = shl i32 6, %930
  %932 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %933 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %932, i32 0, i32 0
  %934 = load i32, i32* %933, align 4
  %935 = or i32 %934, %931
  store i32 %935, i32* %933, align 4
  br label %945

936:                                              ; preds = %891
  %937 = load i32, i32* @PVR_TA_PM2_VSIZE_SHIFT, align 4
  %938 = shl i32 7, %937
  %939 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %940 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %939, i32 0, i32 0
  %941 = load i32, i32* %940, align 4
  %942 = or i32 %941, %938
  store i32 %942, i32* %940, align 4
  br label %945

943:                                              ; preds = %891
  %944 = call i32 @assert_msg(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %945

945:                                              ; preds = %943, %936, %929, %922, %915, %908, %901, %894, %893
  %946 = load i32, i32* %11, align 4
  %947 = and i32 %946, 16777208
  %948 = ashr i32 %947, 3
  %949 = load i32, i32* @PVR_TXRFMT_NONTWIDDLED, align 4
  %950 = or i32 %948, %949
  %951 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %952 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %951, i32 0, i32 1
  store i32 %950, i32* %952, align 4
  %953 = load i32, i32* @cur_addr, align 4
  %954 = and i32 %953, 67108832
  %955 = add nsw i32 %954, 32
  store i32 %955, i32* @cur_addr, align 4
  store i32 1, i32* %3, align 4
  br label %956

956:                                              ; preds = %945, %777
  %957 = load i32, i32* %3, align 4
  ret i32 %957
}

declare dso_local i32 @power_of_two(i64) #1

declare dso_local i32 @T1ReadByte(i32, i64) #1

declare dso_local i32 @Vdp2ColorRamGetColor(i32) #1

declare dso_local i32 @COLOR_ADD(i32, i32, i32, i32) #1

declare dso_local i32 @T1ReadWord(i32, i64) #1

declare dso_local i32 @SAT2YAB1(i32) #1

declare dso_local i32 @VDP1LOG(i8*, i32) #1

declare dso_local i32 @assert_msg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 3406}
!3 = !{i32 3616}
!4 = !{i32 5554}
!5 = !{i32 5764}
!6 = !{i32 7211}
!7 = !{i32 7421}
!8 = !{i32 8868}
!9 = !{i32 9078}
!10 = !{i32 10511}
!11 = !{i32 10721}
!12 = !{i32 11803}
!13 = !{i32 12013}
