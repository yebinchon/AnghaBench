; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_videoport.c_DmaSlow.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_videoport.c_DmaSlow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8**, i8**, i8**, %struct.TYPE_6__, %struct.TYPE_5__, i64, i64 }
%struct.TYPE_6__ = type { i32, i8*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32*, i32**, i64*, i64, i64 }

@Pico = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@EL_VDPDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"DmaSlow[%i] %06x->%04x len %i inc=%i blank %i [%i] @ %06x\00", align 1
@SekPc = common dso_local global i32 0, align 4
@PicoAHW = common dso_local global i32 0, align 4
@PAHW_MCD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"DmaSlow CD, r3=%02x\00", align 1
@Pico_mcd = common dso_local global %struct.TYPE_7__* null, align 8
@EL_ANOMALY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"DmaSlow[%i] %06x->%04x: FIXME: unsupported src\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"DmaSlow[%i] %06x->%04x: invalid src\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"DmaSlow overflow\00", align 1
@PDRAW_DIRTY_SPRITES = common dso_local global i32 0, align 4
@rendstatus = common dso_local global i32 0, align 4
@EL_LOGMASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"DMA with bad type %i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @DmaSlow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DmaSlow(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  store i8** null, i8*** %3, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 4, i32 0), align 8
  store i32 %13, i32* %6, align 4
  %14 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 4, i32 1), align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 15
  %16 = load i8, i8* %15, align 1
  store i8 %16, i8* %9, align 1
  %17 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 4, i32 1), align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 21
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = shl i32 %20, 1
  store i32 %21, i32* %10, align 4
  %22 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 4, i32 1), align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 22
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = shl i32 %25, 9
  %27 = load i32, i32* %10, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %10, align 4
  %29 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 4, i32 1), align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 23
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = shl i32 %32, 17
  %34 = load i32, i32* %10, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* @EL_VDPDMA, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 4, i32 2), align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %2, align 4
  %41 = load i8, i8* %9, align 1
  %42 = zext i8 %41 to i32
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 4, i32 3), align 4
  %44 = and i32 %43, 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %1
  %47 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 4, i32 1), align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = and i32 %50, 64
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  br label %54

54:                                               ; preds = %46, %1
  %55 = phi i1 [ true, %1 ], [ %53, %46 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 (...) @SekCyclesDone()
  %58 = load i32, i32* @SekPc, align 4
  %59 = call i32 (i32, i8*, ...) @elprintf(i32 %36, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38, i32 %39, i32 %40, i32 %42, i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* %2, align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 5, i32 0), align 8
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 5, i32 0), align 8
  %63 = call i32 (...) @CheckDMA()
  %64 = call i32 @SekCyclesBurnRun(i32 %63)
  %65 = load i32, i32* %10, align 4
  %66 = and i32 %65, 14680064
  %67 = icmp eq i32 %66, 14680064
  br i1 %67, label %68, label %78

68:                                               ; preds = %54
  %69 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 7), align 8
  %70 = load i32, i32* %10, align 4
  %71 = and i32 %70, 65534
  %72 = zext i32 %71 to i64
  %73 = add nsw i64 %69, %72
  %74 = inttoptr i64 %73 to i8**
  store i8** %74, i8*** %3, align 8
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 7), align 8
  %76 = add nsw i64 %75, 65536
  %77 = inttoptr i64 %76 to i8**
  store i8** %77, i8*** %4, align 8
  br label %245

78:                                               ; preds = %54
  %79 = load i32, i32* @PicoAHW, align 4
  %80 = load i32, i32* @PAHW_MCD, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %211

83:                                               ; preds = %78
  %84 = load i32, i32* @EL_VDPDMA, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Pico_mcd, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i32, i8*, ...) @elprintf(i32 %84, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %10, align 4
  %92 = icmp ult i32 %91, 131072
  br i1 %92, label %93, label %107

93:                                               ; preds = %83
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Pico_mcd, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = and i32 %97, -2
  %99 = zext i32 %98 to i64
  %100 = add nsw i64 %96, %99
  %101 = inttoptr i64 %100 to i8**
  store i8** %101, i8*** %3, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Pico_mcd, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, 131072
  %106 = inttoptr i64 %105 to i8**
  store i8** %106, i8*** %4, align 8
  br label %210

107:                                              ; preds = %83
  %108 = load i32, i32* %10, align 4
  %109 = and i32 %108, 16515072
  %110 = icmp eq i32 %109, 2097152
  br i1 %110, label %111, label %174

111:                                              ; preds = %107
  %112 = load i32, i32* %10, align 4
  %113 = sub i32 %112, 2
  store i32 %113, i32* %10, align 4
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Pico_mcd, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 3
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %135, label %121

121:                                              ; preds = %111
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Pico_mcd, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = and i32 %125, 262142
  %127 = zext i32 %126 to i64
  %128 = add nsw i64 %124, %127
  %129 = inttoptr i64 %128 to i8**
  store i8** %129, i8*** %3, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Pico_mcd, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %132, 262144
  %134 = inttoptr i64 %133 to i8**
  store i8** %134, i8*** %4, align 8
  br label %173

135:                                              ; preds = %111
  %136 = load i32, i32* %10, align 4
  %137 = icmp ult i32 %136, 2228224
  br i1 %137, label %138, label %166

138:                                              ; preds = %135
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Pico_mcd, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 3
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, 1
  store i32 %144, i32* %11, align 4
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Pico_mcd, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 2
  %147 = load i64*, i64** %146, align 8
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %147, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = load i32, i32* %10, align 4
  %153 = and i32 %152, 131070
  %154 = zext i32 %153 to i64
  %155 = add nsw i64 %151, %154
  %156 = inttoptr i64 %155 to i8**
  store i8** %156, i8*** %3, align 8
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Pico_mcd, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 2
  %159 = load i64*, i64** %158, align 8
  %160 = load i32, i32* %11, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %159, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %163, 131072
  %165 = inttoptr i64 %164 to i8**
  store i8** %165, i8*** %4, align 8
  br label %172

166:                                              ; preds = %135
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* %2, align 4
  %170 = load i8, i8* %9, align 1
  %171 = call i32 @DmaSlowCell(i32 %167, i32 %168, i32 %169, i8 zeroext %170)
  br label %423

172:                                              ; preds = %138
  br label %173

173:                                              ; preds = %172, %121
  br label %209

174:                                              ; preds = %107
  %175 = load i32, i32* %10, align 4
  %176 = and i32 %175, 16646144
  %177 = icmp eq i32 %176, 131072
  br i1 %177, label %178, label %200

178:                                              ; preds = %174
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Pico_mcd, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 1
  %181 = load i32**, i32*** %180, align 8
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Pico_mcd, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 3
  %186 = load i32, i32* %185, align 4
  %187 = ashr i32 %186, 6
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32*, i32** %181, i64 %188
  %190 = load i32*, i32** %189, align 8
  store i32* %190, i32** %12, align 8
  %191 = load i32*, i32** %12, align 8
  %192 = load i32, i32* %10, align 4
  %193 = and i32 %192, 131070
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %191, i64 %194
  %196 = bitcast i32* %195 to i8**
  store i8** %196, i8*** %3, align 8
  %197 = load i32*, i32** %12, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 131072
  %199 = bitcast i32* %198 to i8**
  store i8** %199, i8*** %4, align 8
  br label %208

200:                                              ; preds = %174
  %201 = load i32, i32* @EL_VDPDMA, align 4
  %202 = load i32, i32* @EL_ANOMALY, align 4
  %203 = or i32 %201, %202
  %204 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 4, i32 2), align 8
  %205 = load i32, i32* %10, align 4
  %206 = load i32, i32* %6, align 4
  %207 = call i32 (i32, i8*, ...) @elprintf(i32 %203, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %204, i32 %205, i32 %206)
  br label %423

208:                                              ; preds = %178
  br label %209

209:                                              ; preds = %208, %173
  br label %210

210:                                              ; preds = %209, %93
  br label %244

211:                                              ; preds = %78
  br i1 true, label %212, label %218

212:                                              ; preds = %211
  %213 = load i32, i32* %10, align 4
  %214 = load i32, i32* %2, align 4
  %215 = call i64 @PicoDmaHook(i32 %213, i32 %214, i8*** %3, i8*** %4)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %212
  br label %243

218:                                              ; preds = %212, %211
  %219 = load i32, i32* %10, align 4
  %220 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 0), align 8
  %221 = icmp ult i32 %219, %220
  br i1 %221, label %222, label %234

222:                                              ; preds = %218
  %223 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 6), align 8
  %224 = load i32, i32* %10, align 4
  %225 = and i32 %224, -2
  %226 = zext i32 %225 to i64
  %227 = add nsw i64 %223, %226
  %228 = inttoptr i64 %227 to i8**
  store i8** %228, i8*** %3, align 8
  %229 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 6), align 8
  %230 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 0), align 8
  %231 = zext i32 %230 to i64
  %232 = add nsw i64 %229, %231
  %233 = inttoptr i64 %232 to i8**
  store i8** %233, i8*** %4, align 8
  br label %242

234:                                              ; preds = %218
  %235 = load i32, i32* @EL_VDPDMA, align 4
  %236 = load i32, i32* @EL_ANOMALY, align 4
  %237 = or i32 %235, %236
  %238 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 4, i32 2), align 8
  %239 = load i32, i32* %10, align 4
  %240 = load i32, i32* %6, align 4
  %241 = call i32 (i32, i8*, ...) @elprintf(i32 %237, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %238, i32 %239, i32 %240)
  br label %423

242:                                              ; preds = %222
  br label %243

243:                                              ; preds = %242, %217
  br label %244

244:                                              ; preds = %243, %210
  br label %245

245:                                              ; preds = %244, %68
  %246 = load i32, i32* %2, align 4
  %247 = sext i32 %246 to i64
  %248 = load i8**, i8*** %4, align 8
  %249 = load i8**, i8*** %3, align 8
  %250 = ptrtoint i8** %248 to i64
  %251 = ptrtoint i8** %249 to i64
  %252 = sub i64 %250, %251
  %253 = sdiv exact i64 %252, 8
  %254 = icmp sgt i64 %247, %253
  br i1 %254, label %255, label %267

255:                                              ; preds = %245
  %256 = load i8**, i8*** %4, align 8
  %257 = load i8**, i8*** %3, align 8
  %258 = ptrtoint i8** %256 to i64
  %259 = ptrtoint i8** %257 to i64
  %260 = sub i64 %258, %259
  %261 = sdiv exact i64 %260, 8
  %262 = trunc i64 %261 to i32
  store i32 %262, i32* %2, align 4
  %263 = load i32, i32* @EL_VDPDMA, align 4
  %264 = load i32, i32* @EL_ANOMALY, align 4
  %265 = or i32 %263, %264
  %266 = call i32 (i32, i8*, ...) @elprintf(i32 %265, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %267

267:                                              ; preds = %255, %245
  %268 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 4, i32 2), align 8
  switch i32 %268, label %403 [
    i32 1, label %269
    i32 3, label %339
    i32 5, label %371
  ]

269:                                              ; preds = %267
  %270 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 1), align 8
  store i8** %270, i8*** %5, align 8
  %271 = load i8, i8* %9, align 1
  %272 = zext i8 %271 to i32
  %273 = icmp eq i32 %272, 2
  br i1 %273, label %274, label %297

274:                                              ; preds = %269
  %275 = load i32, i32* %6, align 4
  %276 = and i32 %275, 1
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %297, label %278

278:                                              ; preds = %274
  %279 = load i32, i32* %6, align 4
  %280 = load i32, i32* %2, align 4
  %281 = mul nsw i32 %280, 2
  %282 = add i32 %279, %281
  %283 = icmp ult i32 %282, 65536
  br i1 %283, label %284, label %297

284:                                              ; preds = %278
  %285 = load i8**, i8*** %5, align 8
  %286 = load i32, i32* %6, align 4
  %287 = lshr i32 %286, 1
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds i8*, i8** %285, i64 %288
  %290 = load i8**, i8*** %3, align 8
  %291 = load i32, i32* %2, align 4
  %292 = call i32 @memcpy16(i8** %289, i8** %290, i32 %291)
  %293 = load i32, i32* %2, align 4
  %294 = mul nsw i32 %293, 2
  %295 = load i32, i32* %6, align 4
  %296 = add i32 %295, %294
  store i32 %296, i32* %6, align 4
  br label %335

297:                                              ; preds = %278, %274, %269
  br label %298

298:                                              ; preds = %331, %297
  %299 = load i32, i32* %2, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %334

301:                                              ; preds = %298
  %302 = load i8**, i8*** %3, align 8
  %303 = getelementptr inbounds i8*, i8** %302, i32 1
  store i8** %303, i8*** %3, align 8
  %304 = load i8*, i8** %302, align 8
  %305 = ptrtoint i8* %304 to i32
  store i32 %305, i32* %8, align 4
  %306 = load i32, i32* %6, align 4
  %307 = and i32 %306, 1
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %315

309:                                              ; preds = %301
  %310 = load i32, i32* %8, align 4
  %311 = shl i32 %310, 8
  %312 = load i32, i32* %8, align 4
  %313 = lshr i32 %312, 8
  %314 = or i32 %311, %313
  store i32 %314, i32* %8, align 4
  br label %315

315:                                              ; preds = %309, %301
  %316 = load i32, i32* %8, align 4
  %317 = zext i32 %316 to i64
  %318 = inttoptr i64 %317 to i8*
  %319 = load i8**, i8*** %5, align 8
  %320 = load i32, i32* %6, align 4
  %321 = lshr i32 %320, 1
  %322 = zext i32 %321 to i64
  %323 = getelementptr inbounds i8*, i8** %319, i64 %322
  store i8* %318, i8** %323, align 8
  %324 = load i32, i32* %6, align 4
  %325 = load i8, i8* %9, align 1
  %326 = zext i8 %325 to i32
  %327 = add i32 %324, %326
  %328 = zext i32 %327 to i64
  %329 = inttoptr i64 %328 to i8*
  %330 = ptrtoint i8* %329 to i32
  store i32 %330, i32* %6, align 4
  br label %331

331:                                              ; preds = %315
  %332 = load i32, i32* %2, align 4
  %333 = add nsw i32 %332, -1
  store i32 %333, i32* %2, align 4
  br label %298

334:                                              ; preds = %298
  br label %335

335:                                              ; preds = %334, %284
  %336 = load i32, i32* @PDRAW_DIRTY_SPRITES, align 4
  %337 = load i32, i32* @rendstatus, align 4
  %338 = or i32 %337, %336
  store i32 %338, i32* @rendstatus, align 4
  br label %418

339:                                              ; preds = %267
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 5, i32 1), align 4
  %340 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 2), align 8
  store i8** %340, i8*** %5, align 8
  %341 = load i32, i32* %6, align 4
  %342 = and i32 %341, 127
  store i32 %342, i32* %7, align 4
  br label %343

343:                                              ; preds = %363, %339
  %344 = load i32, i32* %2, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %366

346:                                              ; preds = %343
  %347 = load i8**, i8*** %3, align 8
  %348 = getelementptr inbounds i8*, i8** %347, i32 1
  store i8** %348, i8*** %3, align 8
  %349 = load i8*, i8** %347, align 8
  %350 = load i8**, i8*** %5, align 8
  %351 = load i32, i32* %7, align 4
  %352 = lshr i32 %351, 1
  %353 = zext i32 %352 to i64
  %354 = getelementptr inbounds i8*, i8** %350, i64 %353
  store i8* %349, i8** %354, align 8
  %355 = load i8, i8* %9, align 1
  %356 = zext i8 %355 to i32
  %357 = load i32, i32* %7, align 4
  %358 = add i32 %357, %356
  store i32 %358, i32* %7, align 4
  %359 = load i32, i32* %7, align 4
  %360 = icmp uge i32 %359, 128
  br i1 %360, label %361, label %362

361:                                              ; preds = %346
  br label %366

362:                                              ; preds = %346
  br label %363

363:                                              ; preds = %362
  %364 = load i32, i32* %2, align 4
  %365 = add nsw i32 %364, -1
  store i32 %365, i32* %2, align 4
  br label %343

366:                                              ; preds = %361, %343
  %367 = load i32, i32* %6, align 4
  %368 = and i32 %367, 65280
  %369 = load i32, i32* %7, align 4
  %370 = or i32 %368, %369
  store i32 %370, i32* %6, align 4
  br label %418

371:                                              ; preds = %267
  %372 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 3), align 8
  store i8** %372, i8*** %5, align 8
  %373 = load i32, i32* %6, align 4
  %374 = and i32 %373, 127
  store i32 %374, i32* %7, align 4
  br label %375

375:                                              ; preds = %395, %371
  %376 = load i32, i32* %2, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %398

378:                                              ; preds = %375
  %379 = load i8**, i8*** %3, align 8
  %380 = getelementptr inbounds i8*, i8** %379, i32 1
  store i8** %380, i8*** %3, align 8
  %381 = load i8*, i8** %379, align 8
  %382 = load i8**, i8*** %5, align 8
  %383 = load i32, i32* %7, align 4
  %384 = lshr i32 %383, 1
  %385 = zext i32 %384 to i64
  %386 = getelementptr inbounds i8*, i8** %382, i64 %385
  store i8* %381, i8** %386, align 8
  %387 = load i8, i8* %9, align 1
  %388 = zext i8 %387 to i32
  %389 = load i32, i32* %7, align 4
  %390 = add i32 %389, %388
  store i32 %390, i32* %7, align 4
  %391 = load i32, i32* %7, align 4
  %392 = icmp uge i32 %391, 128
  br i1 %392, label %393, label %394

393:                                              ; preds = %378
  br label %398

394:                                              ; preds = %378
  br label %395

395:                                              ; preds = %394
  %396 = load i32, i32* %2, align 4
  %397 = add nsw i32 %396, -1
  store i32 %397, i32* %2, align 4
  br label %375

398:                                              ; preds = %393, %375
  %399 = load i32, i32* %6, align 4
  %400 = and i32 %399, 65280
  %401 = load i32, i32* %7, align 4
  %402 = or i32 %400, %401
  store i32 %402, i32* %6, align 4
  br label %418

403:                                              ; preds = %267
  %404 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 4, i32 2), align 8
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %411, label %406

406:                                              ; preds = %403
  %407 = load i32, i32* @EL_LOGMASK, align 4
  %408 = load i32, i32* @EL_VDPDMA, align 4
  %409 = and i32 %407, %408
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %417

411:                                              ; preds = %406, %403
  %412 = load i32, i32* @EL_VDPDMA, align 4
  %413 = load i32, i32* @EL_ANOMALY, align 4
  %414 = or i32 %412, %413
  %415 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 4, i32 2), align 8
  %416 = call i32 (i32, i8*, ...) @elprintf(i32 %414, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %415)
  br label %417

417:                                              ; preds = %411, %406
  br label %418

418:                                              ; preds = %417, %398, %366, %335
  %419 = load i32, i32* %6, align 4
  %420 = zext i32 %419 to i64
  %421 = inttoptr i64 %420 to i8*
  %422 = ptrtoint i8* %421 to i32
  store i32 %422, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 4, i32 0), align 8
  br label %423

423:                                              ; preds = %418, %234, %200, %166
  ret void
}

declare dso_local i32 @elprintf(i32, i8*, ...) #1

declare dso_local i32 @SekCyclesDone(...) #1

declare dso_local i32 @SekCyclesBurnRun(i32) #1

declare dso_local i32 @CheckDMA(...) #1

declare dso_local i32 @DmaSlowCell(i32, i32, i32, i8 zeroext) #1

declare dso_local i64 @PicoDmaHook(i32, i32, i8***, i8***) #1

declare dso_local i32 @memcpy16(i8**, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
