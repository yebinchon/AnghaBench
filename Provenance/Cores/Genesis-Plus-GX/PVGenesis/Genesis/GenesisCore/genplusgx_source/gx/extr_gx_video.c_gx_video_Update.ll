; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_video.c_gx_video_Update.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_video.c_gx_video_Update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i64, i32, i64, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i64*, i32** }
%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@video_sync = common dso_local global i32 0, align 4
@NO_SYNC = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@gc_pal = common dso_local global i32 0, align 4
@vdp_pal = common dso_local global i32 0, align 4
@bitmap = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@vwidth = common dso_local global i32 0, align 4
@vheight = common dso_local global i32 0, align 4
@interlaced = common dso_local global i32 0, align 4
@reg = common dso_local global i32* null, align 8
@texturemem = common dso_local global i32 0, align 4
@GX_TF_RGB565 = common dso_local global i32 0, align 4
@GX_CLAMP = common dso_local global i32 0, align 4
@GX_FALSE = common dso_local global i32 0, align 4
@GX_NEAR = common dso_local global i32 0, align 4
@GX_NEAR_MIP_NEAR = common dso_local global i32 0, align 4
@GX_ANISO_1 = common dso_local global i32 0, align 4
@GX_TEXMAP0 = common dso_local global i32 0, align 4
@tvmodes = common dso_local global %struct.TYPE_16__** null, align 8
@rmode = common dso_local global %struct.TYPE_16__* null, align 8
@TEX_SIZE = common dso_local global i32 0, align 4
@crosshair = common dso_local global i64* null, align 8
@input = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@SYSTEM_LIGHTPHASER = common dso_local global i64 0, align 8
@cd_leds = common dso_local global i64** null, align 8
@scd = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@whichfb = common dso_local global i32 0, align 4
@xfb = common dso_local global i32* null, align 8
@GX_TRUE = common dso_local global i32 0, align 4
@VI_NON_INTERLACE = common dso_local global i32 0, align 4
@odd_frame = common dso_local global i64 0, align 8
@audioStarted = common dso_local global i64 0, align 8
@SYNC_VIDEO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gx_video_Update() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @video_sync, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i32, i32* @NO_SYNC, align 4
  store i32 %7, i32* %1, align 4
  br label %271

8:                                                ; preds = %0
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @config, i32 0, i32 4), align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load i32, i32* @gc_pal, align 4
  %13 = load i32, i32* @vdp_pal, align 4
  %14 = icmp eq i32 %12, %13
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i1 [ false, %8 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  store i32 %17, i32* @video_sync, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bitmap, i32 0, i32 0, i32 0), align 4
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %106

21:                                               ; preds = %15
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bitmap, i32 0, i32 0, i32 1), align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bitmap, i32 0, i32 0, i32 2), align 4
  %24 = mul nsw i32 2, %23
  %25 = add nsw i32 %22, %24
  store i32 %25, i32* @vwidth, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bitmap, i32 0, i32 0, i32 3), align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bitmap, i32 0, i32 0, i32 4), align 4
  %28 = mul nsw i32 2, %27
  %29 = add nsw i32 %26, %28
  store i32 %29, i32* @vheight, align 4
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @config, i32 0, i32 1), align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = load i32, i32* @interlaced, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* @vheight, align 4
  %37 = shl i32 %36, 1
  store i32 %37, i32* @vheight, align 4
  br label %38

38:                                               ; preds = %35, %32, %21
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @config, i32 0, i32 3), align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %38
  %42 = load i32*, i32** @reg, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 12
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 1
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @vwidth, align 4
  %49 = call i32 @MD_NTSC_OUT_WIDTH(i32 %48)
  br label %53

50:                                               ; preds = %41
  %51 = load i32, i32* @vwidth, align 4
  %52 = call i32 @SMS_NTSC_OUT_WIDTH(i32 %51)
  br label %53

53:                                               ; preds = %50, %47
  %54 = phi i32 [ %49, %47 ], [ %52, %50 ]
  store i32 %54, i32* @vwidth, align 4
  %55 = load i32, i32* @vwidth, align 4
  %56 = ashr i32 %55, 2
  %57 = shl i32 %56, 2
  store i32 %57, i32* @vwidth, align 4
  br label %58

58:                                               ; preds = %53, %38
  %59 = load i32, i32* @texturemem, align 4
  %60 = load i32, i32* @vwidth, align 4
  %61 = load i32, i32* @vheight, align 4
  %62 = load i32, i32* @GX_TF_RGB565, align 4
  %63 = load i32, i32* @GX_CLAMP, align 4
  %64 = load i32, i32* @GX_CLAMP, align 4
  %65 = load i32, i32* @GX_FALSE, align 4
  %66 = call i32 @GX_InitTexObj(i32* %2, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65)
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @config, i32 0, i32 2), align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %58
  %70 = load i32, i32* @GX_NEAR, align 4
  %71 = load i32, i32* @GX_NEAR_MIP_NEAR, align 4
  %72 = load i32, i32* @GX_FALSE, align 4
  %73 = load i32, i32* @GX_FALSE, align 4
  %74 = load i32, i32* @GX_ANISO_1, align 4
  %75 = call i32 @GX_InitTexObjLOD(i32* %2, i32 %70, i32 %71, double 0.000000e+00, double 1.000000e+01, double 0.000000e+00, i32 %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %69, %58
  %77 = load i32, i32* @GX_TEXMAP0, align 4
  %78 = call i32 @GX_LoadTexObj(i32* %2, i32 %77)
  %79 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @config, i32 0, i32 1), align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @tvmodes, align 8
  %83 = load i32, i32* @gc_pal, align 4
  %84 = mul nsw i32 %83, 3
  %85 = add nsw i32 %84, 2
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %82, i64 %86
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %87, align 8
  store %struct.TYPE_16__* %88, %struct.TYPE_16__** @rmode, align 8
  br label %98

89:                                               ; preds = %76
  %90 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @tvmodes, align 8
  %91 = load i32, i32* @gc_pal, align 4
  %92 = mul nsw i32 %91, 3
  %93 = load i32, i32* @interlaced, align 4
  %94 = add nsw i32 %92, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %90, i64 %95
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %96, align 8
  store %struct.TYPE_16__* %97, %struct.TYPE_16__** @rmode, align 8
  br label %98

98:                                               ; preds = %89, %81
  %99 = load i32, i32* @vwidth, align 4
  %100 = call i32 @gxResetScaler(i32 %99)
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** @rmode, align 8
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @config, i32 0, i32 0), align 8
  %103 = call i32 @gxResetMode(%struct.TYPE_16__* %101, i32 %102)
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** @rmode, align 8
  %105 = call i32 @VIDEO_Configure(%struct.TYPE_16__* %104)
  br label %106

106:                                              ; preds = %98, %15
  %107 = load i32, i32* @texturemem, align 4
  %108 = load i32, i32* @TEX_SIZE, align 4
  %109 = call i32 @DCFlushRange(i32 %107, i32 %108)
  %110 = call i32 (...) @GX_InvalidateTexAll()
  %111 = call i32 (...) @draw_square()
  %112 = load i64*, i64** @crosshair, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %153

116:                                              ; preds = %106
  %117 = load i64*, i64** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @input, i32 0, i32 0), align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @SYSTEM_LIGHTPHASER, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %137

122:                                              ; preds = %116
  %123 = load i64*, i64** @crosshair, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 0
  %125 = load i64, i64* %124, align 8
  %126 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @input, i32 0, i32 1), align 8
  %127 = getelementptr inbounds i32*, i32** %126, i64 0
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @input, i32 0, i32 1), align 8
  %132 = getelementptr inbounds i32*, i32** %131, i64 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @gxDrawCrosshair(i64 %125, i32 %130, i32 %135)
  br label %152

137:                                              ; preds = %116
  %138 = load i64*, i64** @crosshair, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 0
  %140 = load i64, i64* %139, align 8
  %141 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @input, i32 0, i32 1), align 8
  %142 = getelementptr inbounds i32*, i32** %141, i64 4
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @input, i32 0, i32 1), align 8
  %147 = getelementptr inbounds i32*, i32** %146, i64 4
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @gxDrawCrosshair(i64 %140, i32 %145, i32 %150)
  br label %152

152:                                              ; preds = %137, %122
  br label %153

153:                                              ; preds = %152, %106
  %154 = load i64*, i64** @crosshair, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %195

158:                                              ; preds = %153
  %159 = load i64*, i64** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @input, i32 0, i32 0), align 8
  %160 = getelementptr inbounds i64, i64* %159, i64 1
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @SYSTEM_LIGHTPHASER, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %179

164:                                              ; preds = %158
  %165 = load i64*, i64** @crosshair, align 8
  %166 = getelementptr inbounds i64, i64* %165, i64 1
  %167 = load i64, i64* %166, align 8
  %168 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @input, i32 0, i32 1), align 8
  %169 = getelementptr inbounds i32*, i32** %168, i64 4
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @input, i32 0, i32 1), align 8
  %174 = getelementptr inbounds i32*, i32** %173, i64 4
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @gxDrawCrosshair(i64 %167, i32 %172, i32 %177)
  br label %194

179:                                              ; preds = %158
  %180 = load i64*, i64** @crosshair, align 8
  %181 = getelementptr inbounds i64, i64* %180, i64 1
  %182 = load i64, i64* %181, align 8
  %183 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @input, i32 0, i32 1), align 8
  %184 = getelementptr inbounds i32*, i32** %183, i64 5
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @input, i32 0, i32 1), align 8
  %189 = getelementptr inbounds i32*, i32** %188, i64 5
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @gxDrawCrosshair(i64 %182, i32 %187, i32 %192)
  br label %194

194:                                              ; preds = %179, %164
  br label %195

195:                                              ; preds = %194, %153
  %196 = load i64**, i64*** @cd_leds, align 8
  %197 = getelementptr inbounds i64*, i64** %196, i64 1
  %198 = load i64*, i64** %197, align 8
  %199 = getelementptr inbounds i64, i64* %198, i64 1
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %226

202:                                              ; preds = %195
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @scd, i32 0, i32 0), align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i64 3
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  store i32 %207, i32* %3, align 4
  %208 = load i64**, i64*** @cd_leds, align 8
  %209 = getelementptr inbounds i64*, i64** %208, i64 1
  %210 = load i64*, i64** %209, align 8
  %211 = load i32, i32* %3, align 4
  %212 = ashr i32 %211, 1
  %213 = and i32 %212, 1
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i64, i64* %210, i64 %214
  %216 = load i64, i64* %215, align 8
  %217 = load i64**, i64*** @cd_leds, align 8
  %218 = getelementptr inbounds i64*, i64** %217, i64 0
  %219 = load i64*, i64** %218, align 8
  %220 = load i32, i32* %3, align 4
  %221 = and i32 %220, 1
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i64, i64* %219, i64 %222
  %224 = load i64, i64* %223, align 8
  %225 = call i32 @gxDrawCdLeds(i64 %216, i64 %224)
  br label %226

226:                                              ; preds = %202, %195
  %227 = load i32, i32* @whichfb, align 4
  %228 = xor i32 %227, 1
  store i32 %228, i32* @whichfb, align 4
  %229 = call i32 (...) @GX_DrawDone()
  %230 = load i32*, i32** @xfb, align 8
  %231 = load i32, i32* @whichfb, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @GX_TRUE, align 4
  %236 = call i32 @GX_CopyDisp(i32 %234, i32 %235)
  %237 = call i32 (...) @GX_Flush()
  %238 = load i32*, i32** @xfb, align 8
  %239 = load i32, i32* @whichfb, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @VIDEO_SetNextFramebuffer(i32 %242)
  %244 = call i32 (...) @VIDEO_Flush()
  %245 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bitmap, i32 0, i32 0, i32 0), align 4
  %246 = and i32 %245, 1
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %269

248:                                              ; preds = %226
  %249 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bitmap, i32 0, i32 0, i32 0), align 4
  %250 = and i32 %249, -2
  store i32 %250, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bitmap, i32 0, i32 0, i32 0), align 4
  %251 = call i32 (...) @VIDEO_WaitVSync()
  %252 = load %struct.TYPE_16__*, %struct.TYPE_16__** @rmode, align 8
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @VI_NON_INTERLACE, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %248
  %259 = call i32 (...) @VIDEO_WaitVSync()
  br label %268

260:                                              ; preds = %248
  br label %261

261:                                              ; preds = %265, %260
  %262 = call i64 (...) @VIDEO_GetNextField()
  %263 = load i64, i64* @odd_frame, align 8
  %264 = icmp ne i64 %262, %263
  br i1 %264, label %265, label %267

265:                                              ; preds = %261
  %266 = call i32 (...) @VIDEO_WaitVSync()
  br label %261

267:                                              ; preds = %261
  br label %268

268:                                              ; preds = %267, %258
  store i64 0, i64* @audioStarted, align 8
  br label %269

269:                                              ; preds = %268, %226
  %270 = load i32, i32* @SYNC_VIDEO, align 4
  store i32 %270, i32* %1, align 4
  br label %271

271:                                              ; preds = %269, %6
  %272 = load i32, i32* %1, align 4
  ret i32 %272
}

declare dso_local i32 @MD_NTSC_OUT_WIDTH(i32) #1

declare dso_local i32 @SMS_NTSC_OUT_WIDTH(i32) #1

declare dso_local i32 @GX_InitTexObj(i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GX_InitTexObjLOD(i32*, i32, i32, double, double, double, i32, i32, i32) #1

declare dso_local i32 @GX_LoadTexObj(i32*, i32) #1

declare dso_local i32 @gxResetScaler(i32) #1

declare dso_local i32 @gxResetMode(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @VIDEO_Configure(%struct.TYPE_16__*) #1

declare dso_local i32 @DCFlushRange(i32, i32) #1

declare dso_local i32 @GX_InvalidateTexAll(...) #1

declare dso_local i32 @draw_square(...) #1

declare dso_local i32 @gxDrawCrosshair(i64, i32, i32) #1

declare dso_local i32 @gxDrawCdLeds(i64, i64) #1

declare dso_local i32 @GX_DrawDone(...) #1

declare dso_local i32 @GX_CopyDisp(i32, i32) #1

declare dso_local i32 @GX_Flush(...) #1

declare dso_local i32 @VIDEO_SetNextFramebuffer(i32) #1

declare dso_local i32 @VIDEO_Flush(...) #1

declare dso_local i32 @VIDEO_WaitVSync(...) #1

declare dso_local i64 @VIDEO_GetNextField(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
