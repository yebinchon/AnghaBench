; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/md/cart/extr_ssp16.c_pm_io.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/md/cart/extr_ssp16.c_pm_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32*, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i64, i64 }

@ssp = common dso_local global %struct.TYPE_5__* null, align 8
@SSP_PMC_SET = common dso_local global i32 0, align 4
@PC = common dso_local global i32* null, align 8
@EL_SVP = common dso_local global i32 0, align 4
@EL_ANOMALY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"ssp FIXME: tried to set PM%i (%c) with non-blind i/o %08x @ %04x\00", align 1
@rPMC = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"PM%i (%c) set to %08x @ %04x\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"ssp IRAM copy from %06x to %04x\00", align 1
@SSP_PMC_HAVE_ADDR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"ssp FIXME: PM%i (%c) with only addr set @ %04x\00", align 1
@rST = common dso_local global i32 0, align 4
@svp = common dso_local global %struct.TYPE_4__* null, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"ssp FIXME: mode %04x\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"ssp PM%i DRAM w [%06x] %04x (inc %i, ovrw %i)\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"ssp PM%i DRAM w [%06x] %04x (cell inc, ovrw %i) @ %04x\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"ssp FIXME: invalid IRAM addr: %04x\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"ssp IRAM w [%06x] %04x (inc %i)\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"ssp FIXME: PM%i unhandled write mode %04x, [%06x] %04x @ %04x\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"ssp ROM  r [%06x] %04x\00", align 1
@Pico_rom = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [37 x i8] c"ssp PM%i DRAM r [%06x] %04x (inc %i)\00", align 1
@.str.12 = private unnamed_addr constant [57 x i8] c"ssp FIXME: PM%i unhandled read  mode %04x, [%06x] @ %04x\00", align 1
@CADDR = common dso_local global i32 0, align 4
@last_iram = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i32, i32, i16)* @pm_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @pm_io(i32 %0, i32 %1, i16 zeroext %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i16*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i16 %2, i16* %7, align 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ssp, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SSP_PMC_SET, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %104

22:                                               ; preds = %3
  %23 = load i32*, i32** @PC, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 -1
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 65295
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %22
  %29 = load i32*, i32** @PC, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 -1
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 65520
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %28
  %35 = load i32, i32* @EL_SVP, align 4
  %36 = load i32, i32* @EL_ANOMALY, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 119, i32 114
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rPMC, i32 0, i32 0), align 4
  %44 = call i32 (...) @GET_PPC_OFFS()
  %45 = call i32 (i32, i8*, i32, ...) @elprintf(i32 %37, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* @SSP_PMC_SET, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ssp, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 8
  store i16 0, i16* %4, align 2
  br label %459

52:                                               ; preds = %28, %22
  %53 = load i32, i32* @EL_SVP, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 119, i32 114
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rPMC, i32 0, i32 0), align 4
  %60 = call i32 (...) @GET_PPC_OFFS()
  %61 = call i32 (i32, i8*, i32, ...) @elprintf(i32 %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rPMC, i32 0, i32 0), align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ssp, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %52
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 6
  br label %73

71:                                               ; preds = %52
  %72 = load i32, i32* %5, align 4
  br label %73

73:                                               ; preds = %71, %68
  %74 = phi i32 [ %70, %68 ], [ %72, %71 ]
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %65, i64 %75
  store i32 %62, i32* %76, align 4
  %77 = load i32, i32* @SSP_PMC_SET, align 4
  %78 = xor i32 %77, -1
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ssp, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rPMC, i32 0, i32 0), align 4
  %84 = and i32 %83, 8388607
  %85 = icmp eq i32 %84, 1867776
  br i1 %85, label %90, label %86

86:                                               ; preds = %73
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rPMC, i32 0, i32 0), align 4
  %88 = and i32 %87, 8388607
  %89 = icmp eq i32 %88, 1868352
  br i1 %89, label %90, label %103

90:                                               ; preds = %86, %73
  %91 = load i32, i32* @EL_SVP, align 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ssp, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = sub nsw i32 %96, 1
  %98 = shl i32 %97, 1
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rPMC, i32 0, i32 0), align 4
  %100 = and i32 %99, 32767
  %101 = shl i32 %100, 1
  %102 = call i32 (i32, i8*, i32, ...) @elprintf(i32 %91, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %98, i32 %101)
  br label %103

103:                                              ; preds = %90, %86
  store i16 0, i16* %4, align 2
  br label %459

104:                                              ; preds = %3
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ssp, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @SSP_PMC_HAVE_ADDR, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %128

111:                                              ; preds = %104
  %112 = load i32, i32* @EL_SVP, align 4
  %113 = load i32, i32* @EL_ANOMALY, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 119, i32 114
  %120 = call i32 (...) @GET_PPC_OFFS()
  %121 = call i32 (i32, i8*, i32, ...) @elprintf(i32 %114, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %115, i32 %119, i32 %120)
  %122 = load i32, i32* @SSP_PMC_HAVE_ADDR, align 4
  %123 = xor i32 %122, -1
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ssp, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = and i32 %126, %123
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %111, %104
  %129 = load i32, i32* %5, align 4
  %130 = icmp eq i32 %129, 4
  br i1 %130, label %135, label %131

131:                                              ; preds = %128
  %132 = load i32, i32* @rST, align 4
  %133 = and i32 %132, 96
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %458

135:                                              ; preds = %131, %128
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** @svp, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = inttoptr i64 %138 to i16*
  store i16* %139, i16** %8, align 8
  %140 = load i32, i32* %6, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %331

142:                                              ; preds = %135
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ssp, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %5, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = ashr i32 %149, 16
  store i32 %150, i32* %9, align 4
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ssp, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 3
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %5, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %157, 65535
  store i32 %158, i32* %10, align 4
  %159 = load i32, i32* %9, align 4
  %160 = and i32 %159, 47104
  %161 = icmp eq i32 %160, 47104
  br i1 %161, label %162, label %168

162:                                              ; preds = %142
  %163 = load i32, i32* @EL_SVP, align 4
  %164 = load i32, i32* @EL_ANOMALY, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* %9, align 4
  %167 = call i32 (i32, i8*, i32, ...) @elprintf(i32 %165, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %166)
  br label %168

168:                                              ; preds = %162, %142
  %169 = load i32, i32* %9, align 4
  %170 = and i32 %169, 17407
  %171 = icmp eq i32 %170, 24
  br i1 %171, label %172, label %217

172:                                              ; preds = %168
  %173 = load i32, i32* %9, align 4
  %174 = call i32 @get_inc(i32 %173)
  store i32 %174, i32* %11, align 4
  %175 = load i32, i32* @EL_SVP, align 4
  %176 = load i32, i32* %5, align 4
  %177 = load i32, i32* %9, align 4
  %178 = shl i32 %177, 16
  %179 = and i32 %178, 8323072
  %180 = load i32, i32* %10, align 4
  %181 = or i32 %179, %180
  %182 = shl i32 %181, 1
  %183 = load i16, i16* %7, align 2
  %184 = zext i16 %183 to i32
  %185 = load i32, i32* %11, align 4
  %186 = load i32, i32* %9, align 4
  %187 = ashr i32 %186, 10
  %188 = and i32 %187, 1
  %189 = call i32 (i32, i8*, i32, ...) @elprintf(i32 %175, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %176, i32 %182, i32 %184, i32 %185, i32 %188)
  %190 = load i32, i32* %9, align 4
  %191 = and i32 %190, 1024
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %201

193:                                              ; preds = %172
  %194 = load i16*, i16** %8, align 8
  %195 = load i32, i32* %10, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i16, i16* %194, i64 %196
  %198 = load i16, i16* %197, align 2
  %199 = load i16, i16* %7, align 2
  %200 = call i32 @overwrite_write(i16 zeroext %198, i16 zeroext %199)
  br label %207

201:                                              ; preds = %172
  %202 = load i16, i16* %7, align 2
  %203 = load i16*, i16** %8, align 8
  %204 = load i32, i32* %10, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i16, i16* %203, i64 %205
  store i16 %202, i16* %206, align 2
  br label %207

207:                                              ; preds = %201, %193
  %208 = load i32, i32* %11, align 4
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ssp, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 3
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %5, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %215, %208
  store i32 %216, i32* %214, align 4
  br label %330

217:                                              ; preds = %168
  %218 = load i32, i32* %9, align 4
  %219 = and i32 %218, 64511
  %220 = icmp eq i32 %219, 16408
  br i1 %220, label %221, label %268

221:                                              ; preds = %217
  %222 = load i32, i32* @EL_SVP, align 4
  %223 = load i32, i32* %5, align 4
  %224 = load i32, i32* %9, align 4
  %225 = shl i32 %224, 16
  %226 = and i32 %225, 8323072
  %227 = load i32, i32* %10, align 4
  %228 = or i32 %226, %227
  %229 = shl i32 %228, 1
  %230 = load i16, i16* %7, align 2
  %231 = zext i16 %230 to i32
  %232 = load i32, i32* %9, align 4
  %233 = ashr i32 %232, 10
  %234 = and i32 %233, 1
  %235 = call i32 (...) @GET_PPC_OFFS()
  %236 = call i32 (i32, i8*, i32, ...) @elprintf(i32 %222, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i32 %223, i32 %229, i32 %231, i32 %234, i32 %235)
  %237 = load i32, i32* %9, align 4
  %238 = and i32 %237, 1024
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %248

240:                                              ; preds = %221
  %241 = load i16*, i16** %8, align 8
  %242 = load i32, i32* %10, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i16, i16* %241, i64 %243
  %245 = load i16, i16* %244, align 2
  %246 = load i16, i16* %7, align 2
  %247 = call i32 @overwrite_write(i16 zeroext %245, i16 zeroext %246)
  br label %254

248:                                              ; preds = %221
  %249 = load i16, i16* %7, align 2
  %250 = load i16*, i16** %8, align 8
  %251 = load i32, i32* %10, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i16, i16* %250, i64 %252
  store i16 %249, i16* %253, align 2
  br label %254

254:                                              ; preds = %248, %240
  %255 = load i32, i32* %10, align 4
  %256 = and i32 %255, 1
  %257 = icmp ne i32 %256, 0
  %258 = zext i1 %257 to i64
  %259 = select i1 %257, i32 31, i32 1
  %260 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ssp, align 8
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 3
  %262 = load i32*, i32** %261, align 8
  %263 = load i32, i32* %5, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = add nsw i32 %266, %259
  store i32 %267, i32* %265, align 4
  br label %329

268:                                              ; preds = %217
  %269 = load i32, i32* %9, align 4
  %270 = and i32 %269, 18431
  %271 = icmp eq i32 %270, 28
  br i1 %271, label %272, label %312

272:                                              ; preds = %268
  %273 = load i32, i32* %9, align 4
  %274 = call i32 @get_inc(i32 %273)
  store i32 %274, i32* %12, align 4
  %275 = load i32, i32* %10, align 4
  %276 = and i32 %275, 64512
  %277 = icmp ne i32 %276, 32768
  br i1 %277, label %278, label %285

278:                                              ; preds = %272
  %279 = load i32, i32* @EL_SVP, align 4
  %280 = load i32, i32* @EL_ANOMALY, align 4
  %281 = or i32 %279, %280
  %282 = load i32, i32* %10, align 4
  %283 = shl i32 %282, 1
  %284 = call i32 (i32, i8*, i32, ...) @elprintf(i32 %281, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %283)
  br label %285

285:                                              ; preds = %278, %272
  %286 = load i32, i32* @EL_SVP, align 4
  %287 = load i32, i32* %10, align 4
  %288 = shl i32 %287, 1
  %289 = and i32 %288, 2047
  %290 = load i16, i16* %7, align 2
  %291 = zext i16 %290 to i32
  %292 = load i32, i32* %12, align 4
  %293 = call i32 (i32, i8*, i32, ...) @elprintf(i32 %286, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %289, i32 %291, i32 %292)
  %294 = load i16, i16* %7, align 2
  %295 = load %struct.TYPE_4__*, %struct.TYPE_4__** @svp, align 8
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = inttoptr i64 %297 to i16*
  %299 = load i32, i32* %10, align 4
  %300 = and i32 %299, 1023
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i16, i16* %298, i64 %301
  store i16 %294, i16* %302, align 2
  %303 = load i32, i32* %12, align 4
  %304 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ssp, align 8
  %305 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %304, i32 0, i32 3
  %306 = load i32*, i32** %305, align 8
  %307 = load i32, i32* %5, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, i32* %306, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = add nsw i32 %310, %303
  store i32 %311, i32* %309, align 4
  br label %328

312:                                              ; preds = %268
  %313 = load i32, i32* @EL_SVP, align 4
  %314 = load i32, i32* @EL_ANOMALY, align 4
  %315 = or i32 %313, %314
  %316 = load i32, i32* %5, align 4
  %317 = load i32, i32* %9, align 4
  %318 = load i32, i32* %9, align 4
  %319 = shl i32 %318, 16
  %320 = and i32 %319, 8323072
  %321 = load i32, i32* %10, align 4
  %322 = or i32 %320, %321
  %323 = shl i32 %322, 1
  %324 = load i16, i16* %7, align 2
  %325 = zext i16 %324 to i32
  %326 = call i32 (...) @GET_PPC_OFFS()
  %327 = call i32 (i32, i8*, i32, ...) @elprintf(i32 %315, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i64 0, i64 0), i32 %316, i32 %317, i32 %323, i32 %325, i32 %326)
  br label %328

328:                                              ; preds = %312, %285
  br label %329

329:                                              ; preds = %328, %254
  br label %330

330:                                              ; preds = %329, %207
  br label %441

331:                                              ; preds = %135
  %332 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ssp, align 8
  %333 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %332, i32 0, i32 1
  %334 = load i32*, i32** %333, align 8
  %335 = load i32, i32* %5, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %334, i64 %336
  %338 = load i32, i32* %337, align 4
  %339 = ashr i32 %338, 16
  store i32 %339, i32* %13, align 4
  %340 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ssp, align 8
  %341 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %340, i32 0, i32 1
  %342 = load i32*, i32** %341, align 8
  %343 = load i32, i32* %5, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %342, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = and i32 %346, 65535
  store i32 %347, i32* %14, align 4
  %348 = load i32, i32* %13, align 4
  %349 = and i32 %348, 65520
  %350 = icmp eq i32 %349, 2048
  br i1 %350, label %351, label %389

351:                                              ; preds = %331
  %352 = load i32, i32* @EL_SVP, align 4
  %353 = load i32, i32* %13, align 4
  %354 = shl i32 %353, 16
  %355 = and i32 %354, 8323072
  %356 = load i32, i32* %14, align 4
  %357 = or i32 %355, %356
  %358 = shl i32 %357, 1
  %359 = load i64, i64* @Pico_rom, align 8
  %360 = inttoptr i64 %359 to i16*
  %361 = load i32, i32* %14, align 4
  %362 = load i32, i32* %13, align 4
  %363 = and i32 %362, 15
  %364 = shl i32 %363, 16
  %365 = or i32 %361, %364
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i16, i16* %360, i64 %366
  %368 = load i16, i16* %367, align 2
  %369 = zext i16 %368 to i32
  %370 = call i32 (i32, i8*, i32, ...) @elprintf(i32 %352, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %358, i32 %369)
  %371 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ssp, align 8
  %372 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %371, i32 0, i32 1
  %373 = load i32*, i32** %372, align 8
  %374 = load i32, i32* %5, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i32, i32* %373, i64 %375
  %377 = load i32, i32* %376, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %376, align 4
  %379 = load i64, i64* @Pico_rom, align 8
  %380 = inttoptr i64 %379 to i16*
  %381 = load i32, i32* %14, align 4
  %382 = load i32, i32* %13, align 4
  %383 = and i32 %382, 15
  %384 = shl i32 %383, 16
  %385 = or i32 %381, %384
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i16, i16* %380, i64 %386
  %388 = load i16, i16* %387, align 2
  store i16 %388, i16* %7, align 2
  br label %440

389:                                              ; preds = %331
  %390 = load i32, i32* %13, align 4
  %391 = and i32 %390, 18431
  %392 = icmp eq i32 %391, 24
  br i1 %392, label %393, label %425

393:                                              ; preds = %389
  %394 = load i32, i32* %13, align 4
  %395 = call i32 @get_inc(i32 %394)
  store i32 %395, i32* %15, align 4
  %396 = load i32, i32* @EL_SVP, align 4
  %397 = load i32, i32* %5, align 4
  %398 = load i32, i32* %13, align 4
  %399 = shl i32 %398, 16
  %400 = and i32 %399, 8323072
  %401 = load i32, i32* %14, align 4
  %402 = or i32 %400, %401
  %403 = shl i32 %402, 1
  %404 = load i16*, i16** %8, align 8
  %405 = load i32, i32* %14, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i16, i16* %404, i64 %406
  %408 = load i16, i16* %407, align 2
  %409 = zext i16 %408 to i32
  %410 = call i32 (i32, i8*, i32, ...) @elprintf(i32 %396, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), i32 %397, i32 %403, i32 %409)
  %411 = load i16*, i16** %8, align 8
  %412 = load i32, i32* %14, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i16, i16* %411, i64 %413
  %415 = load i16, i16* %414, align 2
  store i16 %415, i16* %7, align 2
  %416 = load i32, i32* %15, align 4
  %417 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ssp, align 8
  %418 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %417, i32 0, i32 1
  %419 = load i32*, i32** %418, align 8
  %420 = load i32, i32* %5, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i32, i32* %419, i64 %421
  %423 = load i32, i32* %422, align 4
  %424 = add nsw i32 %423, %416
  store i32 %424, i32* %422, align 4
  br label %439

425:                                              ; preds = %389
  %426 = load i32, i32* @EL_SVP, align 4
  %427 = load i32, i32* @EL_ANOMALY, align 4
  %428 = or i32 %426, %427
  %429 = load i32, i32* %5, align 4
  %430 = load i32, i32* %13, align 4
  %431 = load i32, i32* %13, align 4
  %432 = shl i32 %431, 16
  %433 = and i32 %432, 8323072
  %434 = load i32, i32* %14, align 4
  %435 = or i32 %433, %434
  %436 = shl i32 %435, 1
  %437 = call i32 (...) @GET_PPC_OFFS()
  %438 = call i32 (i32, i8*, i32, ...) @elprintf(i32 %428, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.12, i64 0, i64 0), i32 %429, i32 %430, i32 %436, i32 %437)
  store i16 0, i16* %7, align 2
  br label %439

439:                                              ; preds = %425, %393
  br label %440

440:                                              ; preds = %439, %351
  br label %441

441:                                              ; preds = %440, %330
  %442 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ssp, align 8
  %443 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %442, i32 0, i32 1
  %444 = load i32*, i32** %443, align 8
  %445 = load i32, i32* %6, align 4
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %450

447:                                              ; preds = %441
  %448 = load i32, i32* %5, align 4
  %449 = add nsw i32 %448, 6
  br label %452

450:                                              ; preds = %441
  %451 = load i32, i32* %5, align 4
  br label %452

452:                                              ; preds = %450, %447
  %453 = phi i32 [ %449, %447 ], [ %451, %450 ]
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds i32, i32* %444, i64 %454
  %456 = load i32, i32* %455, align 4
  store i32 %456, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rPMC, i32 0, i32 0), align 4
  %457 = load i16, i16* %7, align 2
  store i16 %457, i16* %4, align 2
  br label %459

458:                                              ; preds = %131
  store i16 -1, i16* %4, align 2
  br label %459

459:                                              ; preds = %458, %452, %103, %34
  %460 = load i16, i16* %4, align 2
  ret i16 %460
}

declare dso_local i32 @elprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @GET_PPC_OFFS(...) #1

declare dso_local i32 @get_inc(i32) #1

declare dso_local i32 @overwrite_write(i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
