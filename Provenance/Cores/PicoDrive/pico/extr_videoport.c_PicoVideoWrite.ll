; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_videoport.c_PicoVideoWrite.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_videoport.c_PicoVideoWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i16*, %struct.TYPE_3__, %struct.PicoVideo }
%struct.TYPE_3__ = type { i32, i32 }
%struct.PicoVideo = type { i32*, i32, i32, i32, i32, i32, i32, i32 }

@Pico = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PicoOpt = common dso_local global i32 0, align 4
@POPT_DIS_VDP_FIFO = common dso_local global i32 0, align 4
@EL_ASVDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"VDP data write: %04x [%06x] {%i} #%i @ %06x\00", align 1
@SekPc = common dso_local global i32 0, align 4
@EL_ANOMALY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"%02x written to reg %02x in SMS mode @ %06x\00", align 1
@line_base_cycles = common dso_local global i32 0, align 4
@EL_INTSW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"hint_onoff: %i->%i [%i] pend=%i @ %06x\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"vint_onoff: %i->%i [%i] pend=%i @ %06x\00", align 1
@PDRAW_SPRITES_MOVED = common dso_local global i32 0, align 4
@rendstatus = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PicoVideoWrite(i32 %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca %struct.PicoVideo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i16 %1, i16* %4, align 2
  store %struct.PicoVideo* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 2), %struct.PicoVideo** %5, align 8
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, 28
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %147

16:                                               ; preds = %2
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 1, i32 0), align 8
  %18 = icmp slt i32 %17, 224
  br i1 %18, label %19, label %53

19:                                               ; preds = %16
  %20 = load %struct.PicoVideo*, %struct.PicoVideo** %5, align 8
  %21 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 64
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %53

27:                                               ; preds = %19
  %28 = load %struct.PicoVideo*, %struct.PicoVideo** %5, align 8
  %29 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %51, label %32

32:                                               ; preds = %27
  %33 = load %struct.PicoVideo*, %struct.PicoVideo** %5, align 8
  %34 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, -1073741584
  %37 = icmp eq i32 %36, 1073741840
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load i16*, i16** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0), align 8
  %40 = load %struct.PicoVideo*, %struct.PicoVideo** %5, align 8
  %41 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = ashr i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i16, i16* %39, i64 %44
  %46 = load i16, i16* %45, align 2
  %47 = zext i16 %46 to i32
  %48 = load i16, i16* %4, align 2
  %49 = zext i16 %48 to i32
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %53, label %51

51:                                               ; preds = %38, %32, %27
  %52 = call i32 @DrawSync(i32 0)
  br label %53

53:                                               ; preds = %51, %38, %19, %16
  %54 = load %struct.PicoVideo*, %struct.PicoVideo** %5, align 8
  %55 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = call i32 (...) @CommandChange()
  %60 = load %struct.PicoVideo*, %struct.PicoVideo** %5, align 8
  %61 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %60, i32 0, i32 1
  store i32 0, i32* %61, align 8
  br label %62

62:                                               ; preds = %58, %53
  %63 = load %struct.PicoVideo*, %struct.PicoVideo** %5, align 8
  %64 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 128
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %62
  %69 = load %struct.PicoVideo*, %struct.PicoVideo** %5, align 8
  %70 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 16
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %68
  %77 = load %struct.PicoVideo*, %struct.PicoVideo** %5, align 8
  %78 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 23
  %81 = load i32, i32* %80, align 4
  %82 = ashr i32 %81, 6
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %84, label %87

84:                                               ; preds = %76
  %85 = load i16, i16* %4, align 2
  %86 = call i32 @DmaFill(i16 zeroext %85)
  br label %146

87:                                               ; preds = %76, %68, %62
  %88 = load %struct.PicoVideo*, %struct.PicoVideo** %5, align 8
  %89 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %143, label %93

93:                                               ; preds = %87
  %94 = load %struct.PicoVideo*, %struct.PicoVideo** %5, align 8
  %95 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 64
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %143

101:                                              ; preds = %93
  %102 = load i32, i32* @PicoOpt, align 4
  %103 = load i32, i32* @POPT_DIS_VDP_FIFO, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %143, label %106

106:                                              ; preds = %101
  %107 = load %struct.PicoVideo*, %struct.PicoVideo** %5, align 8
  %108 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, -513
  store i32 %110, i32* %108, align 4
  %111 = load %struct.PicoVideo*, %struct.PicoVideo** %5, align 8
  %112 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 8
  %115 = load %struct.PicoVideo*, %struct.PicoVideo** %5, align 8
  %116 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 8
  %118 = icmp sge i32 %117, 4
  br i1 %118, label %119, label %124

119:                                              ; preds = %106
  %120 = load %struct.PicoVideo*, %struct.PicoVideo** %5, align 8
  %121 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, 256
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %119, %106
  %125 = load %struct.PicoVideo*, %struct.PicoVideo** %5, align 8
  %126 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 8
  %128 = icmp sgt i32 %127, 4
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = call i32 @SekCyclesBurnRun(i32 32)
  br label %131

131:                                              ; preds = %129, %124
  %132 = load i32, i32* @EL_ASVDP, align 4
  %133 = load i16, i16* %4, align 2
  %134 = zext i16 %133 to i32
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 2, i32 3), align 8
  %136 = trunc i32 %135 to i16
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 2, i32 6), align 4
  %138 = load %struct.PicoVideo*, %struct.PicoVideo** %5, align 8
  %139 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @SekPc, align 4
  %142 = call i32 (i32, i8*, i32, i16, i32, ...) @elprintf(i32 %132, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %134, i16 zeroext %136, i32 %137, i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %131, %101, %93, %87
  %144 = load i16, i16* %4, align 2
  %145 = call i32 @VideoWrite(i16 zeroext %144)
  br label %146

146:                                              ; preds = %143, %84
  br label %354

147:                                              ; preds = %2
  %148 = load i32, i32* %3, align 4
  %149 = icmp eq i32 %148, 4
  br i1 %149, label %150, label %354

150:                                              ; preds = %147
  %151 = load %struct.PicoVideo*, %struct.PicoVideo** %5, align 8
  %152 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %176

155:                                              ; preds = %150
  %156 = load i16, i16* %4, align 2
  %157 = zext i16 %156 to i32
  %158 = and i32 %157, 128
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %155
  %161 = call i32 @DrawSync(i32 0)
  br label %162

162:                                              ; preds = %160, %155
  %163 = load %struct.PicoVideo*, %struct.PicoVideo** %5, align 8
  %164 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = and i32 %165, -65536
  store i32 %166, i32* %164, align 4
  %167 = load i16, i16* %4, align 2
  %168 = zext i16 %167 to i32
  %169 = load %struct.PicoVideo*, %struct.PicoVideo** %5, align 8
  %170 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %171, %168
  store i32 %172, i32* %170, align 4
  %173 = load %struct.PicoVideo*, %struct.PicoVideo** %5, align 8
  %174 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %173, i32 0, i32 1
  store i32 0, i32* %174, align 8
  %175 = call i32 (...) @CommandChange()
  br label %353

176:                                              ; preds = %150
  %177 = load i16, i16* %4, align 2
  %178 = zext i16 %177 to i32
  %179 = and i32 %178, 49152
  %180 = icmp eq i32 %179, 32768
  br i1 %180, label %181, label %338

181:                                              ; preds = %176
  %182 = load i16, i16* %4, align 2
  %183 = zext i16 %182 to i32
  %184 = ashr i32 %183, 8
  %185 = and i32 %184, 31
  store i32 %185, i32* %6, align 4
  %186 = load %struct.PicoVideo*, %struct.PicoVideo** %5, align 8
  %187 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %6, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  store i32 %192, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %193 = load %struct.PicoVideo*, %struct.PicoVideo** %5, align 8
  %194 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %193, i32 0, i32 6
  store i32 0, i32* %194, align 4
  %195 = load i32, i32* %6, align 4
  %196 = icmp sgt i32 %195, 10
  br i1 %196, label %197, label %213

197:                                              ; preds = %181
  %198 = load %struct.PicoVideo*, %struct.PicoVideo** %5, align 8
  %199 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 1
  %202 = load i32, i32* %201, align 4
  %203 = and i32 %202, 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %213, label %205

205:                                              ; preds = %197
  %206 = load i32, i32* @EL_ANOMALY, align 4
  %207 = load i16, i16* %4, align 2
  %208 = zext i16 %207 to i32
  %209 = load i32, i32* %6, align 4
  %210 = trunc i32 %209 to i16
  %211 = load i32, i32* @SekPc, align 4
  %212 = call i32 (i32, i8*, i32, i16, i32, ...) @elprintf(i32 %206, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %208, i16 zeroext %210, i32 %211)
  br label %354

213:                                              ; preds = %197, %181
  %214 = load i32, i32* %6, align 4
  %215 = icmp eq i32 %214, 1
  br i1 %215, label %216, label %227

216:                                              ; preds = %213
  %217 = load i16, i16* %4, align 2
  %218 = zext i16 %217 to i32
  %219 = and i32 %218, 64
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %227, label %221

221:                                              ; preds = %216
  %222 = call i32 (...) @SekCyclesDone()
  %223 = load i32, i32* @line_base_cycles, align 4
  %224 = sub nsw i32 %222, %223
  %225 = icmp sle i32 %224, 98
  br i1 %225, label %226, label %227

226:                                              ; preds = %221
  store i32 1, i32* %8, align 4
  br label %227

227:                                              ; preds = %226, %221, %216, %213
  %228 = load i32, i32* %8, align 4
  %229 = call i32 @DrawSync(i32 %228)
  %230 = load i16, i16* %4, align 2
  %231 = trunc i16 %230 to i8
  %232 = zext i8 %231 to i32
  %233 = load %struct.PicoVideo*, %struct.PicoVideo** %5, align 8
  %234 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %233, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* %6, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  store i32 %232, i32* %238, align 4
  %239 = load i32, i32* %6, align 4
  switch i32 %239, label %296 [
    i32 0, label %240
    i32 1, label %258
    i32 5, label %276
    i32 12, label %287
  ]

240:                                              ; preds = %227
  %241 = load i32, i32* @EL_INTSW, align 4
  %242 = load i32, i32* %7, align 4
  %243 = and i32 %242, 16
  %244 = ashr i32 %243, 4
  %245 = load i16, i16* %4, align 2
  %246 = zext i16 %245 to i32
  %247 = and i32 %246, 16
  %248 = ashr i32 %247, 4
  %249 = trunc i32 %248 to i16
  %250 = call i32 (...) @SekCyclesDone()
  %251 = load %struct.PicoVideo*, %struct.PicoVideo** %5, align 8
  %252 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %251, i32 0, i32 7
  %253 = load i32, i32* %252, align 8
  %254 = and i32 %253, 16
  %255 = ashr i32 %254, 4
  %256 = load i32, i32* @SekPc, align 4
  %257 = call i32 (i32, i8*, i32, i16, i32, ...) @elprintf(i32 %241, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %244, i16 zeroext %249, i32 %250, i32 %255, i32 %256)
  br label %297

258:                                              ; preds = %227
  %259 = load i32, i32* @EL_INTSW, align 4
  %260 = load i32, i32* %7, align 4
  %261 = and i32 %260, 32
  %262 = ashr i32 %261, 5
  %263 = load i16, i16* %4, align 2
  %264 = zext i16 %263 to i32
  %265 = and i32 %264, 32
  %266 = ashr i32 %265, 5
  %267 = trunc i32 %266 to i16
  %268 = call i32 (...) @SekCyclesDone()
  %269 = load %struct.PicoVideo*, %struct.PicoVideo** %5, align 8
  %270 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %269, i32 0, i32 7
  %271 = load i32, i32* %270, align 8
  %272 = and i32 %271, 32
  %273 = ashr i32 %272, 5
  %274 = load i32, i32* @SekPc, align 4
  %275 = call i32 (i32, i8*, i32, i16, i32, ...) @elprintf(i32 %259, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %262, i16 zeroext %267, i32 %268, i32 %273, i32 %274)
  br label %297

276:                                              ; preds = %227
  %277 = load i16, i16* %4, align 2
  %278 = zext i16 %277 to i32
  %279 = load i32, i32* %7, align 4
  %280 = xor i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %286

282:                                              ; preds = %276
  %283 = load i32, i32* @PDRAW_SPRITES_MOVED, align 4
  %284 = load i32, i32* @rendstatus, align 4
  %285 = or i32 %284, %283
  store i32 %285, i32* @rendstatus, align 4
  br label %286

286:                                              ; preds = %282, %276
  br label %296

287:                                              ; preds = %227
  %288 = load i16, i16* %4, align 2
  %289 = zext i16 %288 to i32
  %290 = load i32, i32* %7, align 4
  %291 = xor i32 %289, %290
  %292 = and i32 %291, 8
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %287
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 1, i32 1), align 4
  br label %295

295:                                              ; preds = %294, %287
  br label %296

296:                                              ; preds = %227, %295, %286
  br label %354

297:                                              ; preds = %258, %240
  %298 = call i32 (...) @SekShouldInterrupt()
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %337, label %300

300:                                              ; preds = %297
  store i32 0, i32* %11, align 4
  %301 = load %struct.PicoVideo*, %struct.PicoVideo** %5, align 8
  %302 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %301, i32 0, i32 0
  %303 = load i32*, i32** %302, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 1
  %305 = load i32, i32* %304, align 4
  %306 = and i32 %305, 32
  %307 = load %struct.PicoVideo*, %struct.PicoVideo** %5, align 8
  %308 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %307, i32 0, i32 0
  %309 = load i32*, i32** %308, align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 0
  %311 = load i32, i32* %310, align 4
  %312 = and i32 %311, 16
  %313 = or i32 %306, %312
  store i32 %313, i32* %9, align 4
  %314 = load %struct.PicoVideo*, %struct.PicoVideo** %5, align 8
  %315 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %314, i32 0, i32 7
  %316 = load i32, i32* %315, align 8
  %317 = load i32, i32* %9, align 4
  %318 = and i32 %316, %317
  store i32 %318, i32* %10, align 4
  %319 = load i32, i32* %10, align 4
  %320 = and i32 %319, 32
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %300
  store i32 6, i32* %11, align 4
  br label %329

323:                                              ; preds = %300
  %324 = load i32, i32* %10, align 4
  %325 = and i32 %324, 16
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %323
  store i32 4, i32* %11, align 4
  br label %328

328:                                              ; preds = %327, %323
  br label %329

329:                                              ; preds = %328, %322
  %330 = load i32, i32* %11, align 4
  %331 = call i32 @SekInterrupt(i32 %330)
  %332 = load i32, i32* %11, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %336

334:                                              ; preds = %329
  %335 = call i32 @SekEndRun(i32 24)
  br label %336

336:                                              ; preds = %334, %329
  br label %337

337:                                              ; preds = %336, %297
  br label %352

338:                                              ; preds = %176
  %339 = load %struct.PicoVideo*, %struct.PicoVideo** %5, align 8
  %340 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 4
  %342 = and i32 %341, 65535
  store i32 %342, i32* %340, align 4
  %343 = load i16, i16* %4, align 2
  %344 = zext i16 %343 to i32
  %345 = shl i32 %344, 16
  %346 = load %struct.PicoVideo*, %struct.PicoVideo** %5, align 8
  %347 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %346, i32 0, i32 2
  %348 = load i32, i32* %347, align 4
  %349 = or i32 %348, %345
  store i32 %349, i32* %347, align 4
  %350 = load %struct.PicoVideo*, %struct.PicoVideo** %5, align 8
  %351 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %350, i32 0, i32 1
  store i32 1, i32* %351, align 8
  br label %352

352:                                              ; preds = %338, %337
  br label %353

353:                                              ; preds = %352, %162
  br label %354

354:                                              ; preds = %146, %205, %296, %353, %147
  ret void
}

declare dso_local i32 @DrawSync(i32) #1

declare dso_local i32 @CommandChange(...) #1

declare dso_local i32 @DmaFill(i16 zeroext) #1

declare dso_local i32 @SekCyclesBurnRun(i32) #1

declare dso_local i32 @elprintf(i32, i8*, i32, i16 zeroext, i32, ...) #1

declare dso_local i32 @VideoWrite(i16 zeroext) #1

declare dso_local i32 @SekCyclesDone(...) #1

declare dso_local i32 @SekShouldInterrupt(...) #1

declare dso_local i32 @SekInterrupt(i32) #1

declare dso_local i32 @SekEndRun(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
