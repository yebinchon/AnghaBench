; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gizmondo/extr_emu.c_pemu_loop.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gizmondo/extr_emu.c_pemu_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_9__ = type { i64 }

@pemu_loop.PsndRate_old = internal global i32 0, align 4
@pemu_loop.PicoOpt_old = internal global i32 0, align 4
@pemu_loop.pal_old = internal global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"entered emu_Loop()\0A\00", align 1
@currentConfig = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@PicoOpt = common dso_local global i32 0, align 4
@Pico = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@reset_timing = common dso_local global i32 0, align 4
@PicoAHW = common dso_local global i32 0, align 4
@PAHW_MCD = common dso_local global i32 0, align 4
@PsndOut = common dso_local global i32* null, align 8
@PsndRate = common dso_local global i32 0, align 4
@PsndLen = common dso_local global i32 0, align 4
@snd_cbuf_samples = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"starting audio: %i len: %i (ex: %04x) stereo: %i, pal: %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"FrameworkAudio_Init() failed: %i\0A\00", align 1
@noticeMsg = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"sound init failed (%i), snd disabled\00", align 1
@noticeMsgTime = common dso_local global i64 0, align 8
@updateSound = common dso_local global i32 0, align 4
@PicoWriteSound = common dso_local global i32 0, align 4
@snd_cbuff = common dso_local global i32* null, align 8
@snd_all_samples = common dso_local global i32 0, align 4
@engineState = common dso_local global i64 0, align 8
@PGS_Running = common dso_local global i64 0, align 8
@pemu_loop.noticeMsgSum = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"%02i/%02i\00", align 1
@pemu_loop.audio_skew_prev = internal global i32 0, align 4
@giz_screen = common dso_local global i32* null, align 8
@SRam = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"Writing SRAM/BRAM..\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pemu_loop() #0 {
  %1 = alloca [24 x i8], align 16
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 1000, i32* %8, align 4
  store i8* null, i8** %14, align 8
  %26 = call i32 (i8*, ...) @lprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %27 = getelementptr inbounds [24 x i8], [24 x i8]* %1, i64 0, i64 0
  store i8 0, i8* %27, align 16
  %28 = call i32 (...) @vidResetMode()
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @currentConfig, i32 0, i32 3), align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %0
  %32 = load i32, i32* @PicoOpt, align 4
  %33 = or i32 %32, 16384
  store i32 %33, i32* @PicoOpt, align 4
  br label %37

34:                                               ; preds = %0
  %35 = load i32, i32* @PicoOpt, align 4
  %36 = and i32 %35, -16385
  store i32 %36, i32* @PicoOpt, align 4
  br label %37

37:                                               ; preds = %34, %31
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Pico, i32 0, i32 0, i32 0), align 8
  %38 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Pico, i32 0, i32 1, i32 0), align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 12
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 1
  %42 = shl i32 %41, 2
  %43 = xor i32 %42, 12
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Pico, i32 0, i32 0, i32 1), align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 50, i32 60
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Pico, i32 0, i32 0, i32 1), align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 5120, i32 4267
  store i32 %51, i32* %10, align 4
  store i32 1, i32* @reset_timing, align 4
  %52 = load i32, i32* @PicoAHW, align 4
  %53 = load i32, i32* @PAHW_MCD, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %37
  %57 = call i32 (...) @PicoCDBufferInit()
  br label %58

58:                                               ; preds = %56, %37
  store i32* null, i32** @PsndOut, align 8
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @currentConfig, i32 0, i32 0), align 8
  %60 = and i32 %59, 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %136

62:                                               ; preds = %58
  %63 = load i32, i32* @PsndRate, align 4
  %64 = load i32, i32* @pemu_loop.PsndRate_old, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %76, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* @PicoOpt, align 4
  %68 = and i32 %67, 11
  %69 = load i32, i32* @pemu_loop.PicoOpt_old, align 4
  %70 = and i32 %69, 11
  %71 = icmp ne i32 %68, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Pico, i32 0, i32 0, i32 1), align 4
  %74 = load i32, i32* @pemu_loop.pal_old, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %72, %66, %62
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Pico, i32 0, i32 0, i32 2), align 8
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 1, i32 0
  %81 = call i32 @PsndRerate(i32 %80)
  br label %82

82:                                               ; preds = %76, %72
  %83 = load i32, i32* @PicoOpt, align 4
  %84 = and i32 %83, 8
  %85 = ashr i32 %84, 3
  store i32 %85, i32* %17, align 4
  %86 = load i32, i32* @PsndRate, align 4
  %87 = load i32, i32* @PsndLen, align 4
  %88 = load i32, i32* %9, align 4
  %89 = mul nsw i32 %87, %88
  %90 = sub nsw i32 %86, %89
  %91 = shl i32 %90, 16
  %92 = load i32, i32* %9, align 4
  %93 = sdiv i32 %91, %92
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* @PsndRate, align 4
  %95 = load i32, i32* %17, align 4
  %96 = shl i32 %94, %95
  %97 = mul nsw i32 %96, 16
  %98 = load i32, i32* %9, align 4
  %99 = sdiv i32 %97, %98
  store i32 %99, i32* @snd_cbuf_samples, align 4
  %100 = load i32, i32* @PsndRate, align 4
  %101 = load i32, i32* @PsndLen, align 4
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* %17, align 4
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Pico, i32 0, i32 0, i32 1), align 4
  %105 = call i32 (i8*, ...) @lprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %100, i32 %101, i32 %102, i32 %103, i32 %104)
  %106 = load i32, i32* @PsndRate, align 4
  %107 = load i32, i32* @snd_cbuf_samples, align 4
  %108 = load i32, i32* %17, align 4
  %109 = call i32 @FrameworkAudio_Init(i32 %106, i32 %107, i32 %108)
  store i32 %109, i32* %15, align 4
  %110 = load i32, i32* %15, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %82
  %113 = load i32, i32* %15, align 4
  %114 = call i32 (i8*, ...) @lprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %113)
  %115 = load i8*, i8** @noticeMsg, align 8
  %116 = load i32, i32* %15, align 4
  %117 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %115, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  %118 = call i64 (...) @GetTickCount()
  store i64 %118, i64* @noticeMsgTime, align 8
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @currentConfig, i32 0, i32 0), align 8
  %120 = and i32 %119, -5
  store i32 %120, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @currentConfig, i32 0, i32 0), align 8
  br label %135

121:                                              ; preds = %82
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @currentConfig, i32 0, i32 2), align 8
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @currentConfig, i32 0, i32 2), align 8
  %124 = call i32 @FrameworkAudio_SetVolume(i32 %122, i32 %123)
  %125 = load i32, i32* @updateSound, align 4
  store i32 %125, i32* @PicoWriteSound, align 4
  %126 = call i32* (...) @FrameworkAudio_56448Buffer()
  store i32* %126, i32** @snd_cbuff, align 8
  %127 = load i32*, i32** @snd_cbuff, align 8
  %128 = load i32, i32* @snd_cbuf_samples, align 4
  %129 = sdiv i32 %128, 2
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  store i32* %131, i32** @PsndOut, align 8
  store i32 0, i32* @snd_all_samples, align 4
  %132 = load i32, i32* @PsndRate, align 4
  store i32 %132, i32* @pemu_loop.PsndRate_old, align 4
  %133 = load i32, i32* @PicoOpt, align 4
  store i32 %133, i32* @pemu_loop.PicoOpt_old, align 4
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Pico, i32 0, i32 0, i32 1), align 4
  store i32 %134, i32* @pemu_loop.pal_old, align 4
  br label %135

135:                                              ; preds = %121, %112
  br label %136

136:                                              ; preds = %135, %58
  br label %137

137:                                              ; preds = %507, %422, %421, %136
  %138 = load i64, i64* @engineState, align 8
  %139 = load i64, i64* @PGS_Running, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %512

141:                                              ; preds = %137
  %142 = call i64 (...) @GetTickCount()
  store i64 %142, i64* %2, align 8
  %143 = load i32, i32* @reset_timing, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %141
  %146 = load i64, i64* %2, align 8
  %147 = load i64, i64* %3, align 8
  %148 = icmp slt i64 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %145, %141
  store i32 0, i32* @reset_timing, align 4
  %150 = load i64, i64* %2, align 8
  store i64 %150, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %151

151:                                              ; preds = %149, %145
  %152 = load i64, i64* @noticeMsgTime, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %185

154:                                              ; preds = %151
  %155 = load i64, i64* %2, align 8
  %156 = load i64, i64* @noticeMsgTime, align 8
  %157 = sub nsw i64 %155, %156
  %158 = icmp sgt i64 %157, 2000
  br i1 %158, label %159, label %161

159:                                              ; preds = %154
  store i64 0, i64* @noticeMsgTime, align 8
  %160 = call i32 @clearArea(i32 0)
  store i8* null, i8** %14, align 8
  br label %184

161:                                              ; preds = %154
  %162 = load i8*, i8** @noticeMsg, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 0
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = load i8*, i8** @noticeMsg, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 1
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = add nsw i32 %165, %169
  %171 = load i8*, i8** @noticeMsg, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 2
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = add nsw i32 %170, %174
  store i32 %175, i32* %19, align 4
  %176 = load i32, i32* %19, align 4
  %177 = load i32, i32* @pemu_loop.noticeMsgSum, align 4
  %178 = icmp ne i32 %176, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %161
  %180 = call i32 @clearArea(i32 0)
  %181 = load i32, i32* %19, align 4
  store i32 %181, i32* @pemu_loop.noticeMsgSum, align 4
  br label %182

182:                                              ; preds = %179, %161
  %183 = load i8*, i8** @noticeMsg, align 8
  store i8* %183, i8** %14, align 8
  br label %184

184:                                              ; preds = %182, %159
  br label %185

185:                                              ; preds = %184, %151
  %186 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Pico, i32 0, i32 1, i32 0), align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 12
  %188 = load i32, i32* %187, align 4
  %189 = and i32 %188, 1
  %190 = shl i32 %189, 2
  %191 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Pico, i32 0, i32 1, i32 0), align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 1
  %193 = load i32, i32* %192, align 4
  %194 = and i32 %193, 8
  %195 = or i32 %190, %194
  store i32 %195, i32* %18, align 4
  %196 = load i32, i32* %18, align 4
  %197 = load i32, i32* %7, align 4
  %198 = icmp ne i32 %196, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %185
  %200 = load i32, i32* %18, align 4
  store i32 %200, i32* %7, align 4
  %201 = call i32 @clearArea(i32 1)
  br label %202

202:                                              ; preds = %199, %185
  %203 = load i64, i64* %2, align 8
  %204 = load i64, i64* %4, align 8
  %205 = sub nsw i64 %203, %204
  %206 = load i32, i32* %8, align 4
  %207 = sext i32 %206 to i64
  %208 = icmp sge i64 %205, %207
  br i1 %208, label %209, label %358

209:                                              ; preds = %202
  %210 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @currentConfig, i32 0, i32 0), align 8
  %211 = and i32 %210, 2
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %209
  %214 = getelementptr inbounds [24 x i8], [24 x i8]* %1, i64 0, i64 0
  %215 = load i32, i32* %6, align 4
  %216 = load i32, i32* %5, align 4
  %217 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %214, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %215, i32 %216)
  br label %218

218:                                              ; preds = %213, %209
  %219 = load i32, i32* %8, align 4
  %220 = sext i32 %219 to i64
  %221 = load i64, i64* %4, align 8
  %222 = add nsw i64 %221, %220
  store i64 %222, i64* %4, align 8
  %223 = load i32*, i32** @PsndOut, align 8
  %224 = icmp ne i32* %223, null
  br i1 %224, label %225, label %331

225:                                              ; preds = %218
  store i32 9, i32* %22, align 4
  store i32 7, i32* %23, align 4
  %226 = load i32, i32* @snd_all_samples, align 4
  %227 = mul nsw i32 %226, 2
  %228 = call i32 (...) @FrameworkAudio_BufferPos()
  %229 = sub nsw i32 %227, %228
  store i32 %229, i32* %20, align 4
  %230 = load i32, i32* @PsndRate, align 4
  %231 = icmp eq i32 %230, 22050
  br i1 %231, label %232, label %233

232:                                              ; preds = %225
  store i32 10, i32* %22, align 4
  br label %233

233:                                              ; preds = %232, %225
  %234 = load i32, i32* @PsndRate, align 4
  %235 = icmp sgt i32 %234, 22050
  br i1 %235, label %236, label %237

236:                                              ; preds = %233
  store i32 11, i32* %22, align 4
  br label %237

237:                                              ; preds = %236, %233
  %238 = load i32, i32* @PicoOpt, align 4
  %239 = and i32 %238, 8
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %237
  %242 = load i32, i32* %23, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %23, align 4
  br label %244

244:                                              ; preds = %241, %237
  %245 = load i32, i32* %20, align 4
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %247, label %287

247:                                              ; preds = %244
  %248 = load i32, i32* %20, align 4
  %249 = sub nsw i32 0, %248
  %250 = load i32, i32* %23, align 4
  %251 = ashr i32 %249, %250
  %252 = sub nsw i32 0, %251
  store i32 %252, i32* %21, align 4
  %253 = load i32, i32* %20, align 4
  %254 = load i32, i32* %22, align 4
  %255 = shl i32 6, %254
  %256 = sub nsw i32 0, %255
  %257 = icmp sgt i32 %253, %256
  br i1 %257, label %258, label %261

258:                                              ; preds = %247
  %259 = load i32, i32* %21, align 4
  %260 = ashr i32 %259, 1
  store i32 %260, i32* %21, align 4
  br label %261

261:                                              ; preds = %258, %247
  %262 = load i32, i32* %20, align 4
  %263 = load i32, i32* %22, align 4
  %264 = shl i32 4, %263
  %265 = sub nsw i32 0, %264
  %266 = icmp sgt i32 %262, %265
  br i1 %266, label %267, label %270

267:                                              ; preds = %261
  %268 = load i32, i32* %21, align 4
  %269 = ashr i32 %268, 1
  store i32 %269, i32* %21, align 4
  br label %270

270:                                              ; preds = %267, %261
  %271 = load i32, i32* %20, align 4
  %272 = load i32, i32* %22, align 4
  %273 = shl i32 2, %272
  %274 = sub nsw i32 0, %273
  %275 = icmp sgt i32 %271, %274
  br i1 %275, label %276, label %279

276:                                              ; preds = %270
  %277 = load i32, i32* %21, align 4
  %278 = ashr i32 %277, 1
  store i32 %278, i32* %21, align 4
  br label %279

279:                                              ; preds = %276, %270
  %280 = load i32, i32* %20, align 4
  %281 = load i32, i32* @pemu_loop.audio_skew_prev, align 4
  %282 = icmp sgt i32 %280, %281
  br i1 %282, label %283, label %286

283:                                              ; preds = %279
  %284 = load i32, i32* %21, align 4
  %285 = ashr i32 %284, 2
  store i32 %285, i32* %21, align 4
  br label %286

286:                                              ; preds = %283, %279
  br label %322

287:                                              ; preds = %244
  %288 = load i32, i32* %20, align 4
  %289 = load i32, i32* %23, align 4
  %290 = ashr i32 %288, %289
  store i32 %290, i32* %21, align 4
  %291 = load i32, i32* %20, align 4
  %292 = load i32, i32* %22, align 4
  %293 = shl i32 6, %292
  %294 = icmp slt i32 %291, %293
  br i1 %294, label %295, label %298

295:                                              ; preds = %287
  %296 = load i32, i32* %21, align 4
  %297 = ashr i32 %296, 1
  store i32 %297, i32* %21, align 4
  br label %298

298:                                              ; preds = %295, %287
  %299 = load i32, i32* %20, align 4
  %300 = load i32, i32* %22, align 4
  %301 = shl i32 4, %300
  %302 = icmp slt i32 %299, %301
  br i1 %302, label %303, label %306

303:                                              ; preds = %298
  %304 = load i32, i32* %21, align 4
  %305 = ashr i32 %304, 1
  store i32 %305, i32* %21, align 4
  br label %306

306:                                              ; preds = %303, %298
  %307 = load i32, i32* %20, align 4
  %308 = load i32, i32* %22, align 4
  %309 = shl i32 2, %308
  %310 = icmp slt i32 %307, %309
  br i1 %310, label %311, label %314

311:                                              ; preds = %306
  %312 = load i32, i32* %21, align 4
  %313 = ashr i32 %312, 1
  store i32 %313, i32* %21, align 4
  br label %314

314:                                              ; preds = %311, %306
  %315 = load i32, i32* %20, align 4
  %316 = load i32, i32* @pemu_loop.audio_skew_prev, align 4
  %317 = icmp slt i32 %315, %316
  br i1 %317, label %318, label %321

318:                                              ; preds = %314
  %319 = load i32, i32* %21, align 4
  %320 = ashr i32 %319, 2
  store i32 %320, i32* %21, align 4
  br label %321

321:                                              ; preds = %318, %314
  br label %322

322:                                              ; preds = %321, %286
  %323 = load i32, i32* %20, align 4
  store i32 %323, i32* @pemu_loop.audio_skew_prev, align 4
  %324 = load i32, i32* %21, align 4
  %325 = load i32, i32* %10, align 4
  %326 = add nsw i32 %325, %324
  store i32 %326, i32* %10, align 4
  %327 = load i32, i32* %10, align 4
  %328 = load i32, i32* %9, align 4
  %329 = mul nsw i32 %327, %328
  %330 = ashr i32 %329, 8
  store i32 %330, i32* %8, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %357

331:                                              ; preds = %218
  %332 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @currentConfig, i32 0, i32 1), align 4
  %333 = icmp slt i32 %332, 0
  br i1 %333, label %334, label %355

334:                                              ; preds = %331
  %335 = load i32, i32* %9, align 4
  %336 = load i32, i32* %5, align 4
  %337 = sub nsw i32 %336, %335
  store i32 %337, i32* %5, align 4
  %338 = load i32, i32* %5, align 4
  %339 = icmp slt i32 %338, 0
  br i1 %339, label %340, label %341

340:                                              ; preds = %334
  store i32 0, i32* %5, align 4
  br label %341

341:                                              ; preds = %340, %334
  %342 = load i32, i32* %9, align 4
  %343 = load i32, i32* %6, align 4
  %344 = sub nsw i32 %343, %342
  store i32 %344, i32* %6, align 4
  %345 = load i32, i32* %6, align 4
  %346 = icmp slt i32 %345, 0
  br i1 %346, label %347, label %348

347:                                              ; preds = %341
  store i32 0, i32* %6, align 4
  br label %348

348:                                              ; preds = %347, %341
  %349 = load i32, i32* %6, align 4
  %350 = load i32, i32* %5, align 4
  %351 = icmp sgt i32 %349, %350
  br i1 %351, label %352, label %354

352:                                              ; preds = %348
  %353 = load i32, i32* %5, align 4
  store i32 %353, i32* %6, align 4
  br label %354

354:                                              ; preds = %352, %348
  br label %356

355:                                              ; preds = %331
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %356

356:                                              ; preds = %355, %354
  br label %357

357:                                              ; preds = %356, %322
  br label %358

358:                                              ; preds = %357, %202
  %359 = load i64, i64* %2, align 8
  store i64 %359, i64* %3, align 8
  %360 = load i32, i32* %5, align 4
  %361 = add nsw i32 %360, 1
  %362 = load i32, i32* %10, align 4
  %363 = mul nsw i32 %361, %362
  store i32 %363, i32* %11, align 4
  %364 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @currentConfig, i32 0, i32 1), align 4
  %365 = icmp sge i32 %364, 0
  br i1 %365, label %366, label %406

366:                                              ; preds = %358
  store i32 0, i32* %13, align 4
  br label %367

367:                                              ; preds = %402, %366
  %368 = load i32, i32* %13, align 4
  %369 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @currentConfig, i32 0, i32 1), align 4
  %370 = icmp slt i32 %368, %369
  br i1 %370, label %371, label %405

371:                                              ; preds = %367
  %372 = call i32 (...) @updateKeys()
  %373 = call i32 (...) @SkipFrame()
  %374 = load i32, i32* %5, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %5, align 4
  %376 = load i32*, i32** @PsndOut, align 8
  %377 = icmp ne i32* %376, null
  br i1 %377, label %378, label %398

378:                                              ; preds = %371
  %379 = call i64 (...) @GetTickCount()
  store i64 %379, i64* %2, align 8
  %380 = load i64, i64* %2, align 8
  %381 = load i64, i64* %4, align 8
  %382 = sub nsw i64 %380, %381
  %383 = trunc i64 %382 to i32
  %384 = shl i32 %383, 8
  store i32 %384, i32* %24, align 4
  %385 = load i32, i32* %24, align 4
  %386 = load i32, i32* %11, align 4
  %387 = icmp slt i32 %385, %386
  br i1 %387, label %388, label %397

388:                                              ; preds = %378
  %389 = load i64, i64* %2, align 8
  %390 = load i32, i32* %11, align 4
  %391 = load i32, i32* %24, align 4
  %392 = sub nsw i32 %390, %391
  %393 = ashr i32 %392, 8
  %394 = sext i32 %393 to i64
  %395 = add nsw i64 %389, %394
  %396 = call i32 @simpleWait(i64 %395)
  br label %397

397:                                              ; preds = %388, %378
  br label %398

398:                                              ; preds = %397, %371
  %399 = load i32, i32* %10, align 4
  %400 = load i32, i32* %11, align 4
  %401 = add nsw i32 %400, %399
  store i32 %401, i32* %11, align 4
  br label %402

402:                                              ; preds = %398
  %403 = load i32, i32* %13, align 4
  %404 = add nsw i32 %403, 1
  store i32 %404, i32* %13, align 4
  br label %367

405:                                              ; preds = %367
  br label %428

406:                                              ; preds = %358
  %407 = call i64 (...) @GetTickCount()
  store i64 %407, i64* %2, align 8
  %408 = load i64, i64* %2, align 8
  %409 = load i64, i64* %4, align 8
  %410 = sub nsw i64 %408, %409
  %411 = trunc i64 %410 to i32
  %412 = shl i32 %411, 8
  store i32 %412, i32* %25, align 4
  %413 = load i32, i32* %25, align 4
  %414 = load i32, i32* %11, align 4
  %415 = icmp sgt i32 %413, %414
  br i1 %415, label %416, label %427

416:                                              ; preds = %406
  %417 = load i32, i32* %25, align 4
  %418 = load i32, i32* %11, align 4
  %419 = sub nsw i32 %417, %418
  %420 = icmp sge i32 %419, 76800
  br i1 %420, label %421, label %422

421:                                              ; preds = %416
  store i32 1, i32* @reset_timing, align 4
  br label %137

422:                                              ; preds = %416
  %423 = call i32 (...) @updateKeys()
  %424 = call i32 (...) @SkipFrame()
  %425 = load i32, i32* %5, align 4
  %426 = add nsw i32 %425, 1
  store i32 %426, i32* %5, align 4
  br label %137

427:                                              ; preds = %406
  br label %428

428:                                              ; preds = %427, %405
  %429 = call i32 (...) @updateKeys()
  %430 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @currentConfig, i32 0, i32 0), align 8
  %431 = and i32 %430, 128
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %440

433:                                              ; preds = %428
  %434 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @currentConfig, i32 0, i32 0), align 8
  %435 = and i32 %434, 32768
  %436 = icmp ne i32 %435, 0
  %437 = zext i1 %436 to i64
  %438 = select i1 %436, i32 0, i32 1
  %439 = call i32* @fb_lock(i32 %438)
  store i32* %439, i32** @giz_screen, align 8
  br label %440

440:                                              ; preds = %433, %428
  %441 = call i32 (...) @PicoFrame()
  %442 = load i32*, i32** @giz_screen, align 8
  %443 = icmp eq i32* %442, null
  br i1 %443, label %444, label %451

444:                                              ; preds = %440
  %445 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @currentConfig, i32 0, i32 0), align 8
  %446 = and i32 %445, 32768
  %447 = icmp ne i32 %446, 0
  %448 = zext i1 %447 to i64
  %449 = select i1 %447, i32 0, i32 1
  %450 = call i32* @fb_lock(i32 %449)
  store i32* %450, i32** @giz_screen, align 8
  br label %451

451:                                              ; preds = %444, %440
  %452 = getelementptr inbounds [24 x i8], [24 x i8]* %1, i64 0, i64 0
  %453 = load i8*, i8** %14, align 8
  %454 = call i32 @blit(i8* %452, i8* %453)
  %455 = load i32*, i32** @giz_screen, align 8
  %456 = icmp ne i32* %455, null
  br i1 %456, label %457, label %459

457:                                              ; preds = %451
  %458 = call i32 (...) @fb_unlock()
  store i32* null, i32** @giz_screen, align 8
  br label %459

459:                                              ; preds = %457, %451
  %460 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @currentConfig, i32 0, i32 0), align 8
  %461 = and i32 %460, 8192
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %465

463:                                              ; preds = %459
  %464 = call i32 (...) @Framework2D_WaitVSync()
  br label %465

465:                                              ; preds = %463, %459
  %466 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @currentConfig, i32 0, i32 0), align 8
  %467 = and i32 %466, 32768
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %469, label %471

469:                                              ; preds = %465
  %470 = call i32 (...) @fb_flip()
  br label %471

471:                                              ; preds = %469, %465
  %472 = call i64 (...) @GetTickCount()
  store i64 %472, i64* %2, align 8
  %473 = load i64, i64* %2, align 8
  %474 = load i64, i64* %4, align 8
  %475 = sub nsw i64 %473, %474
  %476 = trunc i64 %475 to i32
  %477 = shl i32 %476, 8
  store i32 %477, i32* %12, align 4
  %478 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @currentConfig, i32 0, i32 1), align 4
  %479 = icmp slt i32 %478, 0
  br i1 %479, label %480, label %486

480:                                              ; preds = %471
  %481 = load i32, i32* %12, align 4
  %482 = load i32, i32* %11, align 4
  %483 = sub nsw i32 %481, %482
  %484 = icmp sge i32 %483, 76800
  br i1 %484, label %485, label %486

485:                                              ; preds = %480
  store i32 1, i32* @reset_timing, align 4
  br label %507

486:                                              ; preds = %480, %471
  %487 = load i32*, i32** @PsndOut, align 8
  %488 = icmp ne i32* %487, null
  br i1 %488, label %492, label %489

489:                                              ; preds = %486
  %490 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @currentConfig, i32 0, i32 1), align 4
  %491 = icmp slt i32 %490, 0
  br i1 %491, label %492, label %506

492:                                              ; preds = %489, %486
  %493 = load i32, i32* %12, align 4
  %494 = load i32, i32* %11, align 4
  %495 = icmp slt i32 %493, %494
  br i1 %495, label %496, label %505

496:                                              ; preds = %492
  %497 = load i64, i64* %2, align 8
  %498 = load i32, i32* %11, align 4
  %499 = load i32, i32* %12, align 4
  %500 = sub nsw i32 %498, %499
  %501 = ashr i32 %500, 8
  %502 = sext i32 %501 to i64
  %503 = add nsw i64 %497, %502
  %504 = call i32 @simpleWait(i64 %503)
  br label %505

505:                                              ; preds = %496, %492
  br label %506

506:                                              ; preds = %505, %489
  br label %507

507:                                              ; preds = %506, %485
  %508 = load i32, i32* %5, align 4
  %509 = add nsw i32 %508, 1
  store i32 %509, i32* %5, align 4
  %510 = load i32, i32* %6, align 4
  %511 = add nsw i32 %510, 1
  store i32 %511, i32* %6, align 4
  br label %137

512:                                              ; preds = %137
  %513 = load i32, i32* @PicoAHW, align 4
  %514 = load i32, i32* @PAHW_MCD, align 4
  %515 = and i32 %513, %514
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %517, label %519

517:                                              ; preds = %512
  %518 = call i32 (...) @PicoCDBufferFree()
  br label %519

519:                                              ; preds = %517, %512
  %520 = load i32*, i32** @PsndOut, align 8
  %521 = icmp ne i32* %520, null
  br i1 %521, label %522, label %524

522:                                              ; preds = %519
  store i32* null, i32** @snd_cbuff, align 8
  store i32* null, i32** @PsndOut, align 8
  %523 = call i32 (...) @FrameworkAudio_Close()
  br label %524

524:                                              ; preds = %522, %519
  %525 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @currentConfig, i32 0, i32 0), align 8
  %526 = and i32 %525, 1
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %528, label %534

528:                                              ; preds = %524
  %529 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @SRam, i32 0, i32 0), align 8
  %530 = icmp ne i64 %529, 0
  br i1 %530, label %531, label %534

531:                                              ; preds = %528
  %532 = call i32 @emu_stateCb(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %533 = call i32 @emu_save_load_game(i32 0, i32 1)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @SRam, i32 0, i32 0), align 8
  br label %534

534:                                              ; preds = %531, %528, %524
  ret void
}

declare dso_local i32 @lprintf(i8*, ...) #1

declare dso_local i32 @vidResetMode(...) #1

declare dso_local i32 @PicoCDBufferInit(...) #1

declare dso_local i32 @PsndRerate(i32) #1

declare dso_local i32 @FrameworkAudio_Init(i32, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i64 @GetTickCount(...) #1

declare dso_local i32 @FrameworkAudio_SetVolume(i32, i32) #1

declare dso_local i32* @FrameworkAudio_56448Buffer(...) #1

declare dso_local i32 @clearArea(i32) #1

declare dso_local i32 @FrameworkAudio_BufferPos(...) #1

declare dso_local i32 @updateKeys(...) #1

declare dso_local i32 @SkipFrame(...) #1

declare dso_local i32 @simpleWait(i64) #1

declare dso_local i32* @fb_lock(i32) #1

declare dso_local i32 @PicoFrame(...) #1

declare dso_local i32 @blit(i8*, i8*) #1

declare dso_local i32 @fb_unlock(...) #1

declare dso_local i32 @Framework2D_WaitVSync(...) #1

declare dso_local i32 @fb_flip(...) #1

declare dso_local i32 @PicoCDBufferFree(...) #1

declare dso_local i32 @FrameworkAudio_Close(...) #1

declare dso_local i32 @emu_stateCb(i8*) #1

declare dso_local i32 @emu_save_load_game(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
