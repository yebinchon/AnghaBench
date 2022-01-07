; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_emu.c_pemu_loop.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_emu.c_pemu_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_9__ = type { i64 }

@pemu_loop.mp3_init_done = internal global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"entered emu_Loop()\0A\00", align 1
@currentConfig = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"setting cpu clock to %iMHz... \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@Pico = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@reset_timing = common dso_local global i32 0, align 4
@PicoAHW = common dso_local global i32 0, align 4
@PAHW_MCD = common dso_local global i32 0, align 4
@PGS_Menu = common dso_local global i64 0, align 8
@engineState = common dso_local global i64 0, align 8
@PsndOut = common dso_local global i32* null, align 8
@EOPT_EN_SOUND = common dso_local global i32 0, align 4
@PGS_Running = common dso_local global i64 0, align 8
@noticeMsgTime = common dso_local global i32 0, align 4
@pemu_loop.noticeMsgSum = internal global i32 0, align 4
@noticeMsg = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"%02i/%02i  \00", align 1
@PicoOpt = common dso_local global i32 0, align 4
@SRam = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"Writing SRAM/BRAM..\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pemu_loop() #0 {
  %1 = alloca [24 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %14, align 4
  store i8* null, i8** %15, align 8
  %20 = call i32 (i8*, ...) @lprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %21 = getelementptr inbounds [24 x i8], [24 x i8]* %1, i64 0, i64 0
  store i8 0, i8* %21, align 16
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @currentConfig, i32 0, i32 0), align 8
  %23 = call i64 (...) @psp_get_cpu_clock()
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %0
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @currentConfig, i32 0, i32 0), align 8
  %27 = call i32 (i8*, ...) @lprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @currentConfig, i32 0, i32 0), align 8
  %29 = call i32 @psp_set_cpu_clock(i64 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %34 = call i32 (i8*, ...) @lprintf(i8* %33)
  %35 = call i64 (...) @psp_get_cpu_clock()
  store i64 %35, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @currentConfig, i32 0, i32 0), align 8
  br label %36

36:                                               ; preds = %25, %0
  %37 = call i32 (...) @vidResetMode()
  %38 = call i32 @clearArea(i32 1)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Pico, i32 0, i32 0, i32 0), align 8
  %39 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Pico, i32 0, i32 1, i32 0), align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 12
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 1
  %43 = shl i32 %42, 2
  %44 = xor i32 %43, 12
  store i32 %44, i32* %9, align 4
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Pico, i32 0, i32 0, i32 2), align 8
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 50, i32 60
  store i32 %48, i32* %4, align 4
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Pico, i32 0, i32 0, i32 2), align 8
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 5120000, i32 4266667
  store i32 %52, i32* %5, align 4
  store i32 1, i32* @reset_timing, align 4
  %53 = load i32, i32* @PicoAHW, align 4
  %54 = load i32, i32* @PAHW_MCD, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %36
  %58 = call i32 (...) @PicoCDBufferInit()
  %59 = load i32, i32* @pemu_loop.mp3_init_done, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %57
  %62 = call i32 (...) @mp3_init()
  store i32 %62, i32* %8, align 4
  store i32 1, i32* @pemu_loop.mp3_init_done, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i64, i64* @PGS_Menu, align 8
  store i64 %66, i64* @engineState, align 8
  br label %375

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67, %57
  br label %69

69:                                               ; preds = %68, %36
  store i32* null, i32** @PsndOut, align 8
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @currentConfig, i32 0, i32 1), align 8
  %71 = load i32, i32* @EOPT_EN_SOUND, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = call i32 (...) @pemu_sound_start()
  br label %76

76:                                               ; preds = %74, %69
  %77 = call i32 (...) @sceDisplayWaitVblankStart()
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %78 = call i8* (...) @sceKernelGetSystemTimeLow()
  %79 = ptrtoint i8* %78 to i32
  store i32 %79, i32* %14, align 4
  br label %80

80:                                               ; preds = %338, %278, %277, %76
  %81 = load i64, i64* @engineState, align 8
  %82 = load i64, i64* @PGS_Running, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %347

84:                                               ; preds = %80
  %85 = call i8* (...) @sceKernelGetSystemTimeLow()
  %86 = ptrtoint i8* %85 to i32
  store i32 %86, i32* %2, align 4
  %87 = load i32, i32* @reset_timing, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* %2, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp ult i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89, %84
  store i32 0, i32* @reset_timing, align 4
  %94 = load i32, i32* %2, align 4
  store i32 %94, i32* %3, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %95

95:                                               ; preds = %93, %89
  %96 = load i32, i32* @noticeMsgTime, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %127

98:                                               ; preds = %95
  %99 = load i32, i32* %2, align 4
  %100 = load i32, i32* @noticeMsgTime, align 4
  %101 = sub i32 %99, %100
  %102 = icmp ugt i32 %101, 2000000
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  store i32 0, i32* @noticeMsgTime, align 4
  %104 = call i32 @clearArea(i32 0)
  store i8* null, i8** %15, align 8
  br label %126

105:                                              ; preds = %98
  %106 = load i32*, i32** @noticeMsg, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** @noticeMsg, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %108, %111
  %113 = load i32*, i32** @noticeMsg, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 2
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %112, %115
  store i32 %116, i32* %17, align 4
  %117 = load i32, i32* %17, align 4
  %118 = load i32, i32* @pemu_loop.noticeMsgSum, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %105
  %121 = call i32 @clearArea(i32 0)
  %122 = load i32, i32* %17, align 4
  store i32 %122, i32* @pemu_loop.noticeMsgSum, align 4
  br label %123

123:                                              ; preds = %120, %105
  %124 = load i32*, i32** @noticeMsg, align 8
  %125 = bitcast i32* %124 to i8*
  store i8* %125, i8** %15, align 8
  br label %126

126:                                              ; preds = %123, %103
  br label %127

127:                                              ; preds = %126, %95
  %128 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Pico, i32 0, i32 1, i32 0), align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 12
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, 1
  %132 = shl i32 %131, 2
  %133 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Pico, i32 0, i32 1, i32 0), align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, 8
  %137 = or i32 %132, %136
  store i32 %137, i32* %16, align 4
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %127
  %142 = load i32, i32* %16, align 4
  store i32 %142, i32* %9, align 4
  %143 = call i32 @clearArea(i32 1)
  %144 = call i32 (...) @set_scaling_params()
  br label %145

145:                                              ; preds = %141, %127
  %146 = load i32, i32* %2, align 4
  %147 = load i32, i32* %14, align 4
  %148 = sub i32 %146, %147
  %149 = icmp uge i32 %148, 1000000
  br i1 %149, label %150, label %162

150:                                              ; preds = %145
  %151 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @currentConfig, i32 0, i32 1), align 8
  %152 = and i32 %151, 2
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %150
  %155 = getelementptr inbounds [24 x i8], [24 x i8]* %1, i64 0, i64 0
  %156 = load i32, i32* %13, align 4
  %157 = load i32, i32* %12, align 4
  %158 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %155, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %156, i32 %157)
  br label %159

159:                                              ; preds = %154, %150
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %160 = load i32, i32* %14, align 4
  %161 = add nsw i32 %160, 1000000
  store i32 %161, i32* %14, align 4
  br label %162

162:                                              ; preds = %159, %145
  %163 = load i32, i32* %2, align 4
  %164 = load i32, i32* %3, align 4
  %165 = sub i32 %163, %164
  %166 = icmp uge i32 %165, 1000000
  br i1 %166, label %167, label %208

167:                                              ; preds = %162
  %168 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @currentConfig, i32 0, i32 2), align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %180

170:                                              ; preds = %167
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* %4, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %180

174:                                              ; preds = %170
  %175 = call i32 (...) @SkipFrame()
  %176 = load i32, i32* %10, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %10, align 4
  %178 = load i32, i32* %12, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %12, align 4
  br label %180

180:                                              ; preds = %174, %170, %167
  %181 = load i32, i32* %3, align 4
  %182 = add i32 %181, 1000000
  store i32 %182, i32* %3, align 4
  %183 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @currentConfig, i32 0, i32 2), align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %206

185:                                              ; preds = %180
  %186 = load i32, i32* %4, align 4
  %187 = load i32, i32* %10, align 4
  %188 = sub nsw i32 %187, %186
  store i32 %188, i32* %10, align 4
  %189 = load i32, i32* %10, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %185
  store i32 0, i32* %10, align 4
  br label %192

192:                                              ; preds = %191, %185
  %193 = load i32, i32* %4, align 4
  %194 = load i32, i32* %11, align 4
  %195 = sub nsw i32 %194, %193
  store i32 %195, i32* %11, align 4
  %196 = load i32, i32* %11, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %192
  store i32 0, i32* %11, align 4
  br label %199

199:                                              ; preds = %198, %192
  %200 = load i32, i32* %11, align 4
  %201 = load i32, i32* %10, align 4
  %202 = icmp sgt i32 %200, %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %199
  %204 = load i32, i32* %10, align 4
  store i32 %204, i32* %11, align 4
  br label %205

205:                                              ; preds = %203, %199
  br label %207

206:                                              ; preds = %180
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %207

207:                                              ; preds = %206, %205
  br label %208

208:                                              ; preds = %207, %162
  %209 = load i32, i32* %10, align 4
  %210 = add nsw i32 %209, 1
  %211 = load i32, i32* %5, align 4
  %212 = mul nsw i32 %210, %211
  store i32 %212, i32* %6, align 4
  %213 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @currentConfig, i32 0, i32 2), align 4
  %214 = icmp sge i32 %213, 0
  br i1 %214, label %215, label %257

215:                                              ; preds = %208
  store i32 0, i32* %8, align 4
  br label %216

216:                                              ; preds = %253, %215
  %217 = load i32, i32* %8, align 4
  %218 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @currentConfig, i32 0, i32 2), align 4
  %219 = icmp slt i32 %217, %218
  br i1 %219, label %220, label %256

220:                                              ; preds = %216
  %221 = call i32 (...) @updateKeys()
  %222 = call i32 (...) @SkipFrame()
  %223 = load i32, i32* %10, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %10, align 4
  %225 = load i32, i32* %12, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %12, align 4
  %227 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @currentConfig, i32 0, i32 1), align 8
  %228 = and i32 %227, 262144
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %249, label %230

230:                                              ; preds = %220
  %231 = call i8* (...) @sceKernelGetSystemTimeLow()
  %232 = ptrtoint i8* %231 to i32
  store i32 %232, i32* %2, align 4
  %233 = load i32, i32* %2, align 4
  %234 = load i32, i32* %3, align 4
  %235 = sub i32 %233, %234
  %236 = shl i32 %235, 8
  store i32 %236, i32* %18, align 4
  %237 = load i32, i32* %18, align 4
  %238 = load i32, i32* %6, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %248

240:                                              ; preds = %230
  %241 = load i32, i32* %2, align 4
  %242 = load i32, i32* %6, align 4
  %243 = load i32, i32* %18, align 4
  %244 = sub nsw i32 %242, %243
  %245 = ashr i32 %244, 8
  %246 = add i32 %241, %245
  %247 = call i32 @simpleWait(i32 %246)
  br label %248

248:                                              ; preds = %240, %230
  br label %249

249:                                              ; preds = %248, %220
  %250 = load i32, i32* %5, align 4
  %251 = load i32, i32* %6, align 4
  %252 = add nsw i32 %251, %250
  store i32 %252, i32* %6, align 4
  br label %253

253:                                              ; preds = %249
  %254 = load i32, i32* %8, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %8, align 4
  br label %216

256:                                              ; preds = %216
  br label %286

257:                                              ; preds = %208
  %258 = call i8* (...) @sceKernelGetSystemTimeLow()
  %259 = ptrtoint i8* %258 to i32
  store i32 %259, i32* %2, align 4
  %260 = load i32, i32* %2, align 4
  %261 = load i32, i32* %3, align 4
  %262 = sub i32 %260, %261
  %263 = shl i32 %262, 8
  store i32 %263, i32* %19, align 4
  %264 = load i32, i32* %19, align 4
  %265 = load i32, i32* %6, align 4
  %266 = icmp sgt i32 %264, %265
  br i1 %266, label %267, label %285

267:                                              ; preds = %257
  %268 = load i32, i32* %10, align 4
  %269 = sdiv i32 %268, 16
  %270 = load i32, i32* %11, align 4
  %271 = icmp slt i32 %269, %270
  br i1 %271, label %272, label %285

272:                                              ; preds = %267
  %273 = load i32, i32* %19, align 4
  %274 = load i32, i32* %6, align 4
  %275 = sub nsw i32 %273, %274
  %276 = icmp sge i32 %275, 76800000
  br i1 %276, label %277, label %278

277:                                              ; preds = %272
  store i32 1, i32* @reset_timing, align 4
  br label %80

278:                                              ; preds = %272
  %279 = call i32 (...) @updateKeys()
  %280 = call i32 (...) @SkipFrame()
  %281 = load i32, i32* %10, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %10, align 4
  %283 = load i32, i32* %12, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %12, align 4
  br label %80

285:                                              ; preds = %267, %257
  br label %286

286:                                              ; preds = %285, %256
  %287 = call i32 (...) @updateKeys()
  %288 = load i32, i32* @PicoOpt, align 4
  %289 = and i32 %288, 16
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %293, label %291

291:                                              ; preds = %286
  %292 = call i32 (...) @EmuScanPrepare()
  br label %293

293:                                              ; preds = %291, %286
  %294 = call i32 (...) @PicoFrame()
  %295 = call i32 @sceGuSync(i32 0, i32 0)
  %296 = call i8* (...) @sceKernelGetSystemTimeLow()
  %297 = ptrtoint i8* %296 to i32
  store i32 %297, i32* %2, align 4
  %298 = load i32, i32* %2, align 4
  %299 = load i32, i32* %3, align 4
  %300 = sub i32 %298, %299
  %301 = shl i32 %300, 8
  store i32 %301, i32* %7, align 4
  %302 = getelementptr inbounds [24 x i8], [24 x i8]* %1, i64 0, i64 0
  %303 = load i8*, i8** %15, align 8
  %304 = load i32, i32* %7, align 4
  %305 = load i32, i32* %6, align 4
  %306 = icmp sgt i32 %304, %305
  %307 = zext i1 %306 to i32
  %308 = call i32 @blit2(i8* %302, i8* %303, i32 %307)
  %309 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @currentConfig, i32 0, i32 2), align 4
  %310 = icmp slt i32 %309, 0
  br i1 %310, label %311, label %317

311:                                              ; preds = %293
  %312 = load i32, i32* %7, align 4
  %313 = load i32, i32* %6, align 4
  %314 = sub nsw i32 %312, %313
  %315 = icmp sge i32 %314, 76800000
  br i1 %315, label %316, label %317

316:                                              ; preds = %311
  store i32 1, i32* @reset_timing, align 4
  br label %338

317:                                              ; preds = %311, %293
  %318 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @currentConfig, i32 0, i32 1), align 8
  %319 = and i32 %318, 262144
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %324

321:                                              ; preds = %317
  %322 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @currentConfig, i32 0, i32 2), align 4
  %323 = icmp slt i32 %322, 0
  br i1 %323, label %324, label %337

324:                                              ; preds = %321, %317
  %325 = load i32, i32* %7, align 4
  %326 = load i32, i32* %6, align 4
  %327 = icmp slt i32 %325, %326
  br i1 %327, label %328, label %336

328:                                              ; preds = %324
  %329 = load i32, i32* %2, align 4
  %330 = load i32, i32* %6, align 4
  %331 = load i32, i32* %7, align 4
  %332 = sub nsw i32 %330, %331
  %333 = ashr i32 %332, 8
  %334 = add i32 %329, %333
  %335 = call i32 @simpleWait(i32 %334)
  br label %336

336:                                              ; preds = %328, %324
  br label %337

337:                                              ; preds = %336, %321
  br label %338

338:                                              ; preds = %337, %316
  %339 = load i32, i32* %10, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %10, align 4
  %341 = load i32, i32* %11, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %11, align 4
  %343 = load i32, i32* %12, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %12, align 4
  %345 = load i32, i32* %13, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %13, align 4
  br label %80

347:                                              ; preds = %80
  %348 = call i32 @emu_set_fastforward(i32 0)
  %349 = load i32, i32* @PicoAHW, align 4
  %350 = load i32, i32* @PAHW_MCD, align 4
  %351 = and i32 %349, %350
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %355

353:                                              ; preds = %347
  %354 = call i32 (...) @PicoCDBufferFree()
  br label %355

355:                                              ; preds = %353, %347
  %356 = load i32*, i32** @PsndOut, align 8
  %357 = icmp ne i32* %356, null
  br i1 %357, label %358, label %360

358:                                              ; preds = %355
  %359 = call i32 (...) @pemu_sound_stop()
  store i32* null, i32** @PsndOut, align 8
  br label %360

360:                                              ; preds = %358, %355
  %361 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @currentConfig, i32 0, i32 1), align 8
  %362 = and i32 %361, 1
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %370

364:                                              ; preds = %360
  %365 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @SRam, i32 0, i32 0), align 8
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %370

367:                                              ; preds = %364
  %368 = call i32 @emu_msg_cb(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %369 = call i32 @emu_save_load_game(i32 0, i32 1)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @SRam, i32 0, i32 0), align 8
  br label %370

370:                                              ; preds = %367, %364, %360
  %371 = call i64 (...) @psp_video_get_active_fb()
  %372 = inttoptr i64 %371 to i32*
  %373 = getelementptr inbounds i32, i32* %372, i64 67584
  %374 = call i32 @memset32_uncached(i32* %373, i32 0, i32 2048)
  br label %375

375:                                              ; preds = %370, %65
  ret void
}

declare dso_local i32 @lprintf(i8*, ...) #1

declare dso_local i64 @psp_get_cpu_clock(...) #1

declare dso_local i32 @psp_set_cpu_clock(i64) #1

declare dso_local i32 @vidResetMode(...) #1

declare dso_local i32 @clearArea(i32) #1

declare dso_local i32 @PicoCDBufferInit(...) #1

declare dso_local i32 @mp3_init(...) #1

declare dso_local i32 @pemu_sound_start(...) #1

declare dso_local i32 @sceDisplayWaitVblankStart(...) #1

declare dso_local i8* @sceKernelGetSystemTimeLow(...) #1

declare dso_local i32 @set_scaling_params(...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i32 @SkipFrame(...) #1

declare dso_local i32 @updateKeys(...) #1

declare dso_local i32 @simpleWait(i32) #1

declare dso_local i32 @EmuScanPrepare(...) #1

declare dso_local i32 @PicoFrame(...) #1

declare dso_local i32 @sceGuSync(i32, i32) #1

declare dso_local i32 @blit2(i8*, i8*, i32) #1

declare dso_local i32 @emu_set_fastforward(i32) #1

declare dso_local i32 @PicoCDBufferFree(...) #1

declare dso_local i32 @pemu_sound_stop(...) #1

declare dso_local i32 @emu_msg_cb(i8*) #1

declare dso_local i32 @emu_save_load_game(i32, i32) #1

declare dso_local i32 @memset32_uncached(i32*, i32, i32) #1

declare dso_local i64 @psp_video_get_active_fb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
