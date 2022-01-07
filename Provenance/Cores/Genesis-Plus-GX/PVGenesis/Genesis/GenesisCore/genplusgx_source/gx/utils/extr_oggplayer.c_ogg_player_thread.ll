; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/utils/extr_oggplayer.c_ogg_player_thread.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/utils/extr_oggplayer.c_ogg_player_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32**, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32, i32 }

@oggplayer_queue = common dso_local global i32 0, align 4
@ogg_thread_running = common dso_local global i32 0, align 4
@SND_UNUSED = common dso_local global i64 0, align 8
@READ_SAMPLES = common dso_local global i64 0, align 8
@MAX_PCMOUT = common dso_local global i32 0, align 4
@OV_HOLE = common dso_local global i64 0, align 8
@VOICE_STEREO_16BIT = common dso_local global i32 0, align 4
@ogg_add_callback = common dso_local global i32 0, align 4
@VOICE_MONO_16BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_4__*)* @ogg_player_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ogg_player_thread(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i32 1, i32* %3, align 4
  %5 = call i32 @LWP_InitQueue(i32* @oggplayer_queue)
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i64 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 7
  %9 = call %struct.TYPE_5__* @ov_info(i32* %8, i32 -1)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 10
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %12, align 8
  %13 = call i32 @ASND_Pause(i32 0)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  store i32 0, i32* %22, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  store i32 0, i32* %25, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 11
  store i64 0, i64* %28, align 8
  store i32 1, i32* @ogg_thread_running, align 4
  br label %29

29:                                               ; preds = %310, %72, %1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @ogg_thread_running, align 4
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %35, %29
  %39 = phi i1 [ false, %29 ], [ %37, %35 ]
  br i1 %39, label %40, label %312

40:                                               ; preds = %38
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @oggplayer_queue, align 4
  %48 = call i32 @LWP_ThreadSleep(i32 %47)
  br label %49

49:                                               ; preds = %46, %40
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %195

55:                                               ; preds = %49
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 9
  %59 = load i32**, i32*** %58, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i32*, i32** %59, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = call i64 @ASND_TestPointer(i32 0, i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %55
  %69 = call i64 @ASND_StatusVoice(i32 0)
  %70 = load i64, i64* @SND_UNUSED, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, 64
  store i32 %77, i32* %75, align 4
  br label %29

78:                                               ; preds = %68, %55
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @READ_SAMPLES, align 8
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %85, label %190

85:                                               ; preds = %78
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 3
  store i32 3, i32* %88, align 4
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = icmp sge i32 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %85
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 7
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @ov_time_seek(i32* %97, i32 %101)
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 4
  store i32 -1, i32* %105, align 8
  br label %106

106:                                              ; preds = %94, %85
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i64 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 7
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i64 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 9
  %113 = load i32**, i32*** %112, align 8
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds i32*, i32** %113, i64 %117
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i64 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds i32, i32* %119, i64 %123
  %125 = bitcast i32* %124 to i8*
  %126 = load i32, i32* @MAX_PCMOUT, align 4
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 11
  %130 = call i64 @ov_read(i32* %109, i8* %125, i32 %126, i64* %129)
  store i64 %130, i64* %4, align 8
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i64 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, 192
  store i32 %135, i32* %133, align 4
  %136 = load i64, i64* %4, align 8
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %155

138:                                              ; preds = %106
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i64 0
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, 1
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %138
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i64 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 7
  %149 = call i32 @ov_time_seek(i32* %148, i32 0)
  br label %154

150:                                              ; preds = %138
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i64 0
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 2
  store i32 1, i32* %153, align 8
  br label %154

154:                                              ; preds = %150, %145
  br label %189

155:                                              ; preds = %106
  %156 = load i64, i64* %4, align 8
  %157 = icmp slt i64 %156, 0
  br i1 %157, label %158, label %180

158:                                              ; preds = %155
  %159 = load i64, i64* %4, align 8
  %160 = load i64, i64* @OV_HOLE, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %179

162:                                              ; preds = %158
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i64 0
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 4
  %167 = and i32 %166, 1
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %162
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i64 0
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 7
  %173 = call i32 @ov_time_seek(i32* %172, i32 0)
  br label %178

174:                                              ; preds = %162
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i64 0
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 2
  store i32 1, i32* %177, align 8
  br label %178

178:                                              ; preds = %174, %169
  br label %179

179:                                              ; preds = %178, %158
  br label %188

180:                                              ; preds = %155
  %181 = load i64, i64* %4, align 8
  %182 = ashr i64 %181, 1
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i64 0
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = add i64 %186, %182
  store i64 %187, i64* %185, align 8
  br label %188

188:                                              ; preds = %180, %179
  br label %189

189:                                              ; preds = %188, %154
  br label %194

190:                                              ; preds = %78
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i64 0
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 3
  store i32 1, i32* %193, align 4
  br label %194

194:                                              ; preds = %190, %189
  br label %195

195:                                              ; preds = %194, %49
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i64 0
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = icmp eq i32 %199, 1
  br i1 %200, label %201, label %310

201:                                              ; preds = %195
  %202 = call i64 @ASND_StatusVoice(i32 0)
  %203 = load i64, i64* @SND_UNUSED, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %208, label %205

205:                                              ; preds = %201
  %206 = load i32, i32* %3, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %309

208:                                              ; preds = %205, %201
  store i32 0, i32* %3, align 4
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i64 0
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 10
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = icmp eq i32 %214, 2
  br i1 %215, label %216, label %262

216:                                              ; preds = %208
  %217 = load i32, i32* @VOICE_STEREO_16BIT, align 4
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i64 0
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 10
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i64 0
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 9
  %227 = load i32**, i32*** %226, align 8
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i64 0
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = getelementptr inbounds i32*, i32** %227, i64 %231
  %233 = load i32*, i32** %232, align 8
  %234 = bitcast i32* %233 to i8*
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i64 0
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = shl i64 %238, 1
  %240 = trunc i64 %239 to i32
  %241 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i64 0
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 8
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i64 0
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 8
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @ogg_add_callback, align 4
  %250 = call i32 @ASND_SetVoice(i32 0, i32 %217, i32 %223, i32 0, i8* %234, i32 %240, i32 %244, i32 %248, i32 %249)
  %251 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i64 0
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = xor i64 %254, 1
  store i64 %255, i64* %253, align 8
  %256 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i64 0
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 0
  store i64 0, i64* %258, align 8
  %259 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i64 0
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 3
  store i32 0, i32* %261, align 4
  br label %308

262:                                              ; preds = %208
  %263 = load i32, i32* @VOICE_MONO_16BIT, align 4
  %264 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i64 0
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 10
  %267 = load %struct.TYPE_5__*, %struct.TYPE_5__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i64 0
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i32 0, i32 9
  %273 = load i32**, i32*** %272, align 8
  %274 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i64 0
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = getelementptr inbounds i32*, i32** %273, i64 %277
  %279 = load i32*, i32** %278, align 8
  %280 = bitcast i32* %279 to i8*
  %281 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i64 0
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = shl i64 %284, 1
  %286 = trunc i64 %285 to i32
  %287 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i64 0
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 8
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i64 0
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 8
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @ogg_add_callback, align 4
  %296 = call i32 @ASND_SetVoice(i32 0, i32 %263, i32 %269, i32 0, i8* %280, i32 %286, i32 %290, i32 %294, i32 %295)
  %297 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i64 0
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 1
  %300 = load i64, i64* %299, align 8
  %301 = xor i64 %300, 1
  store i64 %301, i64* %299, align 8
  %302 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %302, i64 0
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i32 0, i32 0
  store i64 0, i64* %304, align 8
  %305 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %305, i64 0
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 3
  store i32 0, i32* %307, align 4
  br label %308

308:                                              ; preds = %262, %216
  br label %309

309:                                              ; preds = %308, %205
  br label %310

310:                                              ; preds = %309, %195
  %311 = call i32 @usleep(i32 10)
  br label %29

312:                                              ; preds = %38
  %313 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i64 0
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i32 0, i32 7
  %316 = call i32 @ov_clear(i32* %315)
  %317 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i64 0
  %319 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %318, i32 0, i32 6
  store i32 -1, i32* %319, align 8
  %320 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %321 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %320, i64 0
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %321, i32 0, i32 0
  store i64 0, i64* %322, align 8
  ret i8* null
}

declare dso_local i32 @LWP_InitQueue(i32*) #1

declare dso_local %struct.TYPE_5__* @ov_info(i32*, i32) #1

declare dso_local i32 @ASND_Pause(i32) #1

declare dso_local i32 @LWP_ThreadSleep(i32) #1

declare dso_local i64 @ASND_TestPointer(i32, i32*) #1

declare dso_local i64 @ASND_StatusVoice(i32) #1

declare dso_local i32 @ov_time_seek(i32*, i32) #1

declare dso_local i64 @ov_read(i32*, i8*, i32, i64*) #1

declare dso_local i32 @ASND_SetVoice(i32, i32, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @ov_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
