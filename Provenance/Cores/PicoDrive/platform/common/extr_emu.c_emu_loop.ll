; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_emu.c_emu_loop.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_emu.c_emu_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64 }

@Pico = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@reset_timing = common dso_local global i32 0, align 4
@engineState = common dso_local global i64 0, align 8
@PGS_Running = common dso_local global i64 0, align 8
@main = common dso_local global i32 0, align 4
@currentConfig = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@EOPT_NO_FRMLIMIT = common dso_local global i32 0, align 4
@notice_msg_time = common dso_local global i32 0, align 4
@emu_loop.noticeMsgSum = internal global i32 0, align 4
@STATUS_MSG_TIMEOUT = common dso_local global i32 0, align 4
@noticeMsg = common dso_local global i32* null, align 8
@EOPT_SHOW_FPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%02i/%02i  \00", align 1
@PicoSkipFrame = common dso_local global i32 0, align 4
@flip_after_sync = common dso_local global i64 0, align 8
@EOPT_EXT_FRMLIMIT = common dso_local global i32 0, align 4
@EOPT_VSYNC = common dso_local global i32 0, align 4
@EOPT_EN_SRAM = common dso_local global i32 0, align 4
@SRam = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Writing SRAM/BRAM...\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emu_loop() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [24 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i8* null, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %15 = getelementptr inbounds [24 x i8], [24 x i8]* %8, i64 0, i64 0
  store i8 0, i8* %15, align 16
  %16 = call i32 (...) @PicoLoopPrepare()
  %17 = call i32 (...) @plat_video_loop_prepare()
  %18 = call i32 (...) @emu_loop_prep()
  %19 = call i32 (...) @pemu_sound_start()
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 0, i32 1), align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %0
  %23 = call i32 @ms_to_ticks(i32 1000)
  %24 = mul nsw i32 3, %23
  %25 = sdiv i32 %24, 50
  store i32 %25, i32* %3, align 4
  br label %30

26:                                               ; preds = %0
  %27 = call i32 @ms_to_ticks(i32 1000)
  %28 = mul nsw i32 3, %27
  %29 = sdiv i32 %28, 60
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %22
  store i32 1, i32* @reset_timing, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %31

31:                                               ; preds = %250, %30
  %32 = load i64, i64* @engineState, align 8
  %33 = load i64, i64* @PGS_Running, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %253

35:                                               ; preds = %31
  store i32 0, i32* %10, align 4
  %36 = load i32, i32* @main, align 4
  %37 = call i32 @pprof_start(i32 %36)
  %38 = load i32, i32* @reset_timing, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  store i32 0, i32* @reset_timing, align 4
  %41 = call i32 (...) @plat_video_wait_vsync()
  %42 = call i32 (...) @get_ticks()
  %43 = mul nsw i32 %42, 3
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %54

45:                                               ; preds = %35
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @currentConfig, i32 0, i32 0), align 4
  %47 = load i32, i32* @EOPT_NO_FRMLIMIT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = call i32 (...) @get_ticks()
  %52 = mul nsw i32 %51, 3
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %50, %45
  br label %54

54:                                               ; preds = %53, %40
  %55 = call i32 (...) @get_ticks()
  %56 = mul nsw i32 %55, 3
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* @notice_msg_time, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %95

59:                                               ; preds = %54
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @notice_msg_time, align 4
  %62 = call i32 @ms_to_ticks(i32 %61)
  %63 = mul nsw i32 %62, 3
  %64 = sub i32 %60, %63
  %65 = load i32, i32* @STATUS_MSG_TIMEOUT, align 4
  %66 = call i32 @ms_to_ticks(i32 %65)
  %67 = mul nsw i32 %66, 3
  %68 = icmp ugt i32 %64, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %59
  store i32 0, i32* @notice_msg_time, align 4
  %70 = call i32 (...) @plat_status_msg_clear()
  %71 = call i32 (...) @plat_video_flip()
  %72 = call i32 (...) @plat_status_msg_clear()
  store i8* null, i8** %7, align 8
  br label %94

73:                                               ; preds = %59
  %74 = load i32*, i32** @noticeMsg, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** @noticeMsg, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %76, %79
  %81 = load i32*, i32** @noticeMsg, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %80, %83
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @emu_loop.noticeMsgSum, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %73
  %89 = call i32 (...) @plat_status_msg_clear()
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* @emu_loop.noticeMsgSum, align 4
  br label %91

91:                                               ; preds = %88, %73
  %92 = load i32*, i32** @noticeMsg, align 8
  %93 = bitcast i32* %92 to i8*
  store i8* %93, i8** %7, align 8
  br label %94

94:                                               ; preds = %91, %69
  br label %95

95:                                               ; preds = %94, %54
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* %6, align 4
  %98 = sub i32 %96, %97
  %99 = call i32 @ms_to_ticks(i32 1000)
  %100 = mul nsw i32 %99, 3
  %101 = icmp uge i32 %98, %100
  br i1 %101, label %102, label %117

102:                                              ; preds = %95
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @currentConfig, i32 0, i32 0), align 4
  %104 = load i32, i32* @EOPT_SHOW_FPS, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = getelementptr inbounds [24 x i8], [24 x i8]* %8, i64 0, i64 0
  %109 = load i32, i32* %2, align 4
  %110 = load i32, i32* %1, align 4
  %111 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %108, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %107, %102
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %113 = call i32 @ms_to_ticks(i32 1000)
  %114 = mul nsw i32 %113, 3
  %115 = load i32, i32* %6, align 4
  %116 = add i32 %115, %114
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %112, %95
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* %4, align 4
  %120 = sub i32 %118, %119
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @currentConfig, i32 0, i32 1), align 4
  %122 = icmp sge i32 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %117
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @currentConfig, i32 0, i32 1), align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %131

130:                                              ; preds = %123
  store i32 0, i32* %9, align 4
  br label %131

131:                                              ; preds = %130, %127
  br label %145

132:                                              ; preds = %117
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* %3, align 4
  %135 = sub nsw i32 0, %134
  %136 = icmp slt i32 %133, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %132
  %138 = load i32, i32* %1, align 4
  %139 = sdiv i32 %138, 8
  %140 = load i32, i32* %2, align 4
  %141 = icmp sle i32 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  store i32 1, i32* %10, align 4
  br label %143

143:                                              ; preds = %142, %137
  br label %144

144:                                              ; preds = %143, %132
  br label %145

145:                                              ; preds = %144, %131
  br label %146

146:                                              ; preds = %152, %145
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* %3, align 4
  %149 = sub nsw i32 0, %148
  %150 = mul nsw i32 %149, 3
  %151 = icmp slt i32 %147, %150
  br i1 %151, label %152, label %159

152:                                              ; preds = %146
  %153 = load i32, i32* %3, align 4
  %154 = load i32, i32* %5, align 4
  %155 = add i32 %154, %153
  store i32 %155, i32* %5, align 4
  %156 = load i32, i32* %5, align 4
  %157 = load i32, i32* %4, align 4
  %158 = sub i32 %156, %157
  store i32 %158, i32* %11, align 4
  br label %146

159:                                              ; preds = %146
  %160 = call i32 (...) @emu_update_input()
  %161 = load i32, i32* %10, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %175

163:                                              ; preds = %159
  %164 = load i32, i32* %11, align 4
  %165 = load i32, i32* %3, align 4
  %166 = sub nsw i32 0, %165
  %167 = mul nsw i32 %166, 2
  %168 = icmp sgt i32 %164, %167
  %169 = zext i1 %168 to i32
  store i32 %169, i32* %13, align 4
  %170 = load i32, i32* %13, align 4
  %171 = icmp ne i32 %170, 0
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i32 1, i32 2
  store i32 %173, i32* @PicoSkipFrame, align 4
  %174 = call i32 (...) @PicoFrame()
  store i32 0, i32* @PicoSkipFrame, align 4
  br label %182

175:                                              ; preds = %159
  %176 = call i32 (...) @PicoFrame()
  %177 = getelementptr inbounds [24 x i8], [24 x i8]* %8, i64 0, i64 0
  %178 = load i8*, i8** %7, align 8
  %179 = call i32 @pemu_finalize_frame(i8* %177, i8* %178)
  %180 = load i32, i32* %2, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %2, align 4
  br label %182

182:                                              ; preds = %175, %163
  %183 = load i32, i32* %1, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %1, align 4
  %185 = load i32, i32* %3, align 4
  %186 = load i32, i32* %5, align 4
  %187 = add i32 %186, %185
  store i32 %187, i32* %5, align 4
  %188 = load i32, i32* %10, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %195, label %190

190:                                              ; preds = %182
  %191 = load i64, i64* @flip_after_sync, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %195, label %193

193:                                              ; preds = %190
  %194 = call i32 (...) @plat_video_flip()
  br label %195

195:                                              ; preds = %193, %190, %182
  %196 = load i32, i32* %10, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %242, label %198

198:                                              ; preds = %195
  %199 = load i32, i32* @reset_timing, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %242, label %201

201:                                              ; preds = %198
  %202 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @currentConfig, i32 0, i32 0), align 4
  %203 = load i32, i32* @EOPT_NO_FRMLIMIT, align 4
  %204 = load i32, i32* @EOPT_EXT_FRMLIMIT, align 4
  %205 = or i32 %203, %204
  %206 = and i32 %202, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %242, label %208

208:                                              ; preds = %201
  %209 = call i32 (...) @get_ticks()
  store i32 %209, i32* %14, align 4
  %210 = load i32, i32* %5, align 4
  %211 = load i32, i32* %14, align 4
  %212 = mul i32 %211, 3
  %213 = sub i32 %210, %212
  store i32 %213, i32* %11, align 4
  %214 = load i32, i32* %11, align 4
  %215 = load i32, i32* %3, align 4
  %216 = icmp sgt i32 %214, %215
  br i1 %216, label %217, label %229

217:                                              ; preds = %208
  %218 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @currentConfig, i32 0, i32 0), align 4
  %219 = load i32, i32* @EOPT_VSYNC, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %217
  %223 = call i32 (...) @plat_video_wait_vsync()
  %224 = call i32 (...) @get_ticks()
  store i32 %224, i32* %14, align 4
  %225 = load i32, i32* %14, align 4
  %226 = mul i32 %225, 3
  %227 = load i32, i32* %5, align 4
  %228 = sub i32 %226, %227
  store i32 %228, i32* %11, align 4
  br label %229

229:                                              ; preds = %222, %217, %208
  %230 = load i32, i32* %11, align 4
  %231 = load i32, i32* %3, align 4
  %232 = icmp sgt i32 %230, %231
  br i1 %232, label %233, label %241

233:                                              ; preds = %229
  %234 = load i32, i32* %14, align 4
  %235 = load i32, i32* %11, align 4
  %236 = load i32, i32* %3, align 4
  %237 = sub nsw i32 %235, %236
  %238 = sdiv i32 %237, 3
  %239 = add i32 %234, %238
  %240 = call i32 @plat_wait_till_us(i32 %239)
  br label %241

241:                                              ; preds = %233, %229
  br label %242

242:                                              ; preds = %241, %201, %198, %195
  %243 = load i32, i32* %10, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %250, label %245

245:                                              ; preds = %242
  %246 = load i64, i64* @flip_after_sync, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %245
  %249 = call i32 (...) @plat_video_flip()
  br label %250

250:                                              ; preds = %248, %245, %242
  %251 = load i32, i32* @main, align 4
  %252 = call i32 @pprof_end(i32 %251)
  br label %31

253:                                              ; preds = %31
  %254 = call i32 @emu_set_fastforward(i32 0)
  %255 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @currentConfig, i32 0, i32 0), align 4
  %256 = load i32, i32* @EOPT_EN_SRAM, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %265

259:                                              ; preds = %253
  %260 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @SRam, i32 0, i32 0), align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %259
  %263 = call i32 @plat_status_msg_busy_first(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %264 = call i32 @emu_save_load_game(i32 0, i32 1)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @SRam, i32 0, i32 0), align 8
  br label %265

265:                                              ; preds = %262, %259, %253
  %266 = call i32 (...) @pemu_loop_end()
  %267 = call i32 (...) @emu_sound_stop()
  ret void
}

declare dso_local i32 @PicoLoopPrepare(...) #1

declare dso_local i32 @plat_video_loop_prepare(...) #1

declare dso_local i32 @emu_loop_prep(...) #1

declare dso_local i32 @pemu_sound_start(...) #1

declare dso_local i32 @ms_to_ticks(i32) #1

declare dso_local i32 @pprof_start(i32) #1

declare dso_local i32 @plat_video_wait_vsync(...) #1

declare dso_local i32 @get_ticks(...) #1

declare dso_local i32 @plat_status_msg_clear(...) #1

declare dso_local i32 @plat_video_flip(...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i32 @emu_update_input(...) #1

declare dso_local i32 @PicoFrame(...) #1

declare dso_local i32 @pemu_finalize_frame(i8*, i8*) #1

declare dso_local i32 @plat_wait_till_us(i32) #1

declare dso_local i32 @pprof_end(i32) #1

declare dso_local i32 @emu_set_fastforward(i32) #1

declare dso_local i32 @plat_status_msg_busy_first(i8*) #1

declare dso_local i32 @emu_save_load_game(i32, i32) #1

declare dso_local i32 @pemu_loop_end(...) #1

declare dso_local i32 @emu_sound_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
