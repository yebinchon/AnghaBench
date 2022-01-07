; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_android_input.c_android_input_poll_main_cmd.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_android_input.c_android_input_poll_main_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.android_app = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, %struct.TYPE_4__*, i32, i32*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@g_android = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"Attaching input queue to looper\00", align 1
@LOOPER_ID_INPUT = common dso_local global i32 0, align 4
@RARCH_CTL_SET_PAUSED = common dso_local global i32 0, align 4
@RARCH_CTL_SET_IDLE = common dso_local global i32 0, align 4
@RETRO_SENSOR_ACCELEROMETER_ENABLE = common dso_local global i32 0, align 4
@RETRO_SENSOR_ACCELEROMETER_DISABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"APP_CMD_DESTROY\0A\00", align 1
@RETRO_RUMBLE_STRONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @android_input_poll_main_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @android_input_poll_main_cmd() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.android_app*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_android, align 8
  %7 = bitcast %struct.TYPE_6__* %6 to %struct.android_app*
  store %struct.android_app* %7, %struct.android_app** %2, align 8
  %8 = load %struct.android_app*, %struct.android_app** %2, align 8
  %9 = getelementptr inbounds %struct.android_app, %struct.android_app* %8, i32 0, i32 17
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @read(i32 %10, i32* %1, i32 4)
  %12 = sext i32 %11 to i64
  %13 = icmp ne i64 %12, 4
  br i1 %13, label %14, label %15

14:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %15

15:                                               ; preds = %14, %0
  %16 = load i32, i32* %1, align 4
  switch i32 %16, label %261 [
    i32 134, label %17
    i32 137, label %32
    i32 138, label %75
    i32 132, label %95
    i32 133, label %110
    i32 131, label %110
    i32 135, label %110
    i32 130, label %110
    i32 141, label %126
    i32 129, label %136
    i32 139, label %151
    i32 136, label %191
    i32 140, label %231
    i32 128, label %235
  ]

17:                                               ; preds = %15
  %18 = load %struct.android_app*, %struct.android_app** %2, align 8
  %19 = getelementptr inbounds %struct.android_app, %struct.android_app* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @slock_lock(i32 %20)
  %22 = load %struct.android_app*, %struct.android_app** %2, align 8
  %23 = getelementptr inbounds %struct.android_app, %struct.android_app* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load %struct.android_app*, %struct.android_app** %2, align 8
  %25 = getelementptr inbounds %struct.android_app, %struct.android_app* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @scond_broadcast(i32 %26)
  %28 = load %struct.android_app*, %struct.android_app** %2, align 8
  %29 = getelementptr inbounds %struct.android_app, %struct.android_app* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @slock_unlock(i32 %30)
  br label %261

32:                                               ; preds = %15
  %33 = load %struct.android_app*, %struct.android_app** %2, align 8
  %34 = getelementptr inbounds %struct.android_app, %struct.android_app* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @slock_lock(i32 %35)
  %37 = load %struct.android_app*, %struct.android_app** %2, align 8
  %38 = getelementptr inbounds %struct.android_app, %struct.android_app* %37, i32 0, i32 15
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %32
  %42 = load %struct.android_app*, %struct.android_app** %2, align 8
  %43 = getelementptr inbounds %struct.android_app, %struct.android_app* %42, i32 0, i32 15
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @AInputQueue_detachLooper(i32 %44)
  br label %46

46:                                               ; preds = %41, %32
  %47 = load %struct.android_app*, %struct.android_app** %2, align 8
  %48 = getelementptr inbounds %struct.android_app, %struct.android_app* %47, i32 0, i32 16
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.android_app*, %struct.android_app** %2, align 8
  %51 = getelementptr inbounds %struct.android_app, %struct.android_app* %50, i32 0, i32 15
  store i32 %49, i32* %51, align 4
  %52 = load %struct.android_app*, %struct.android_app** %2, align 8
  %53 = getelementptr inbounds %struct.android_app, %struct.android_app* %52, i32 0, i32 15
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %46
  %57 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.android_app*, %struct.android_app** %2, align 8
  %59 = getelementptr inbounds %struct.android_app, %struct.android_app* %58, i32 0, i32 15
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.android_app*, %struct.android_app** %2, align 8
  %62 = getelementptr inbounds %struct.android_app, %struct.android_app* %61, i32 0, i32 14
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @LOOPER_ID_INPUT, align 4
  %65 = call i32 @AInputQueue_attachLooper(i32 %60, i32 %63, i32 %64, i32* null, i32* null)
  br label %66

66:                                               ; preds = %56, %46
  %67 = load %struct.android_app*, %struct.android_app** %2, align 8
  %68 = getelementptr inbounds %struct.android_app, %struct.android_app* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @scond_broadcast(i32 %69)
  %71 = load %struct.android_app*, %struct.android_app** %2, align 8
  %72 = getelementptr inbounds %struct.android_app, %struct.android_app* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @slock_unlock(i32 %73)
  br label %261

75:                                               ; preds = %15
  %76 = load %struct.android_app*, %struct.android_app** %2, align 8
  %77 = getelementptr inbounds %struct.android_app, %struct.android_app* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @slock_lock(i32 %78)
  %80 = load %struct.android_app*, %struct.android_app** %2, align 8
  %81 = getelementptr inbounds %struct.android_app, %struct.android_app* %80, i32 0, i32 13
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.android_app*, %struct.android_app** %2, align 8
  %84 = getelementptr inbounds %struct.android_app, %struct.android_app* %83, i32 0, i32 10
  store i32* %82, i32** %84, align 8
  %85 = load %struct.android_app*, %struct.android_app** %2, align 8
  %86 = getelementptr inbounds %struct.android_app, %struct.android_app* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  %87 = load %struct.android_app*, %struct.android_app** %2, align 8
  %88 = getelementptr inbounds %struct.android_app, %struct.android_app* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @scond_broadcast(i32 %89)
  %91 = load %struct.android_app*, %struct.android_app** %2, align 8
  %92 = getelementptr inbounds %struct.android_app, %struct.android_app* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @slock_unlock(i32 %93)
  br label %261

95:                                               ; preds = %15
  %96 = load %struct.android_app*, %struct.android_app** %2, align 8
  %97 = getelementptr inbounds %struct.android_app, %struct.android_app* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @slock_lock(i32 %98)
  %100 = load %struct.android_app*, %struct.android_app** %2, align 8
  %101 = getelementptr inbounds %struct.android_app, %struct.android_app* %100, i32 0, i32 1
  store i32 1, i32* %101, align 4
  %102 = load %struct.android_app*, %struct.android_app** %2, align 8
  %103 = getelementptr inbounds %struct.android_app, %struct.android_app* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @scond_broadcast(i32 %104)
  %106 = load %struct.android_app*, %struct.android_app** %2, align 8
  %107 = getelementptr inbounds %struct.android_app, %struct.android_app* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @slock_unlock(i32 %108)
  br label %261

110:                                              ; preds = %15, %15, %15, %15
  %111 = load %struct.android_app*, %struct.android_app** %2, align 8
  %112 = getelementptr inbounds %struct.android_app, %struct.android_app* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @slock_lock(i32 %113)
  %115 = load i32, i32* %1, align 4
  %116 = load %struct.android_app*, %struct.android_app** %2, align 8
  %117 = getelementptr inbounds %struct.android_app, %struct.android_app* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load %struct.android_app*, %struct.android_app** %2, align 8
  %119 = getelementptr inbounds %struct.android_app, %struct.android_app* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @scond_broadcast(i32 %120)
  %122 = load %struct.android_app*, %struct.android_app** %2, align 8
  %123 = getelementptr inbounds %struct.android_app, %struct.android_app* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @slock_unlock(i32 %124)
  br label %261

126:                                              ; preds = %15
  %127 = load %struct.android_app*, %struct.android_app** %2, align 8
  %128 = getelementptr inbounds %struct.android_app, %struct.android_app* %127, i32 0, i32 12
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.android_app*, %struct.android_app** %2, align 8
  %131 = getelementptr inbounds %struct.android_app, %struct.android_app* %130, i32 0, i32 11
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @AConfiguration_fromAssetManager(i32 %129, i32 %134)
  br label %261

136:                                              ; preds = %15
  %137 = load %struct.android_app*, %struct.android_app** %2, align 8
  %138 = getelementptr inbounds %struct.android_app, %struct.android_app* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @slock_lock(i32 %139)
  %141 = load %struct.android_app*, %struct.android_app** %2, align 8
  %142 = getelementptr inbounds %struct.android_app, %struct.android_app* %141, i32 0, i32 10
  store i32* null, i32** %142, align 8
  %143 = load %struct.android_app*, %struct.android_app** %2, align 8
  %144 = getelementptr inbounds %struct.android_app, %struct.android_app* %143, i32 0, i32 7
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @scond_broadcast(i32 %145)
  %147 = load %struct.android_app*, %struct.android_app** %2, align 8
  %148 = getelementptr inbounds %struct.android_app, %struct.android_app* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @slock_unlock(i32 %149)
  br label %261

151:                                              ; preds = %15
  store i32 0, i32* %3, align 4
  %152 = load i32, i32* @RARCH_CTL_SET_PAUSED, align 4
  %153 = call i32 @rarch_ctl(i32 %152, i32* %3)
  %154 = load i32, i32* @RARCH_CTL_SET_IDLE, align 4
  %155 = call i32 @rarch_ctl(i32 %154, i32* %3)
  %156 = call i32 (...) @video_driver_unset_stub_frame()
  %157 = load %struct.android_app*, %struct.android_app** %2, align 8
  %158 = getelementptr inbounds %struct.android_app, %struct.android_app* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @UINT64_C(i32 1)
  %161 = load i32, i32* @RETRO_SENSOR_ACCELEROMETER_ENABLE, align 4
  %162 = shl i32 %160, %161
  %163 = and i32 %159, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %176

165:                                              ; preds = %151
  %166 = load %struct.android_app*, %struct.android_app** %2, align 8
  %167 = getelementptr inbounds %struct.android_app, %struct.android_app* %166, i32 0, i32 9
  %168 = load i32*, i32** %167, align 8
  %169 = icmp eq i32* %168, null
  br i1 %169, label %170, label %176

170:                                              ; preds = %165
  %171 = load i32, i32* @RETRO_SENSOR_ACCELEROMETER_ENABLE, align 4
  %172 = load %struct.android_app*, %struct.android_app** %2, align 8
  %173 = getelementptr inbounds %struct.android_app, %struct.android_app* %172, i32 0, i32 8
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @input_sensor_set_state(i32 0, i32 %171, i32 %174)
  br label %176

176:                                              ; preds = %170, %165, %151
  %177 = load %struct.android_app*, %struct.android_app** %2, align 8
  %178 = getelementptr inbounds %struct.android_app, %struct.android_app* %177, i32 0, i32 6
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @slock_lock(i32 %179)
  %181 = load %struct.android_app*, %struct.android_app** %2, align 8
  %182 = getelementptr inbounds %struct.android_app, %struct.android_app* %181, i32 0, i32 4
  store i32 0, i32* %182, align 8
  %183 = load %struct.android_app*, %struct.android_app** %2, align 8
  %184 = getelementptr inbounds %struct.android_app, %struct.android_app* %183, i32 0, i32 7
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @scond_broadcast(i32 %185)
  %187 = load %struct.android_app*, %struct.android_app** %2, align 8
  %188 = getelementptr inbounds %struct.android_app, %struct.android_app* %187, i32 0, i32 6
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @slock_unlock(i32 %189)
  br label %261

191:                                              ; preds = %15
  store i32 1, i32* %4, align 4
  %192 = load i32, i32* @RARCH_CTL_SET_PAUSED, align 4
  %193 = call i32 @rarch_ctl(i32 %192, i32* %4)
  %194 = load i32, i32* @RARCH_CTL_SET_IDLE, align 4
  %195 = call i32 @rarch_ctl(i32 %194, i32* %4)
  %196 = call i32 (...) @video_driver_set_stub_frame()
  %197 = load %struct.android_app*, %struct.android_app** %2, align 8
  %198 = getelementptr inbounds %struct.android_app, %struct.android_app* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @UINT64_C(i32 1)
  %201 = load i32, i32* @RETRO_SENSOR_ACCELEROMETER_ENABLE, align 4
  %202 = shl i32 %200, %201
  %203 = and i32 %199, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %216

205:                                              ; preds = %191
  %206 = load %struct.android_app*, %struct.android_app** %2, align 8
  %207 = getelementptr inbounds %struct.android_app, %struct.android_app* %206, i32 0, i32 9
  %208 = load i32*, i32** %207, align 8
  %209 = icmp ne i32* %208, null
  br i1 %209, label %210, label %216

210:                                              ; preds = %205
  %211 = load i32, i32* @RETRO_SENSOR_ACCELEROMETER_DISABLE, align 4
  %212 = load %struct.android_app*, %struct.android_app** %2, align 8
  %213 = getelementptr inbounds %struct.android_app, %struct.android_app* %212, i32 0, i32 8
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @input_sensor_set_state(i32 0, i32 %211, i32 %214)
  br label %216

216:                                              ; preds = %210, %205, %191
  %217 = load %struct.android_app*, %struct.android_app** %2, align 8
  %218 = getelementptr inbounds %struct.android_app, %struct.android_app* %217, i32 0, i32 6
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @slock_lock(i32 %219)
  %221 = load %struct.android_app*, %struct.android_app** %2, align 8
  %222 = getelementptr inbounds %struct.android_app, %struct.android_app* %221, i32 0, i32 4
  store i32 1, i32* %222, align 8
  %223 = load %struct.android_app*, %struct.android_app** %2, align 8
  %224 = getelementptr inbounds %struct.android_app, %struct.android_app* %223, i32 0, i32 7
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @scond_broadcast(i32 %225)
  %227 = load %struct.android_app*, %struct.android_app** %2, align 8
  %228 = getelementptr inbounds %struct.android_app, %struct.android_app* %227, i32 0, i32 6
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @slock_unlock(i32 %229)
  br label %261

231:                                              ; preds = %15
  %232 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %233 = load %struct.android_app*, %struct.android_app** %2, align 8
  %234 = getelementptr inbounds %struct.android_app, %struct.android_app* %233, i32 0, i32 5
  store i32 1, i32* %234, align 4
  br label %261

235:                                              ; preds = %15
  %236 = call i64 (...) @jni_thread_getenv()
  %237 = inttoptr i64 %236 to i32*
  store i32* %237, i32** %5, align 8
  %238 = load i32*, i32** %5, align 8
  %239 = icmp ne i32* %238, null
  br i1 %239, label %240, label %260

240:                                              ; preds = %235
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_android, align 8
  %242 = icmp ne %struct.TYPE_6__* %241, null
  br i1 %242, label %243, label %260

243:                                              ; preds = %240
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_android, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %260

248:                                              ; preds = %243
  %249 = load i32*, i32** %5, align 8
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_android, align 8
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 1
  %252 = load %struct.TYPE_5__*, %struct.TYPE_5__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_android, align 8
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @RETRO_RUMBLE_STRONG, align 4
  %259 = call i32 @CALL_VOID_METHOD_PARAM(i32* %249, i32 %254, i32 %257, i32 -1, i32 %258, i32 255, i32 1)
  br label %260

260:                                              ; preds = %248, %243, %240, %235
  br label %261

261:                                              ; preds = %15, %260, %231, %216, %176, %136, %126, %110, %95, %75, %66, %17
  ret void
}

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32 @slock_lock(i32) #1

declare dso_local i32 @scond_broadcast(i32) #1

declare dso_local i32 @slock_unlock(i32) #1

declare dso_local i32 @AInputQueue_detachLooper(i32) #1

declare dso_local i32 @RARCH_LOG(i8*) #1

declare dso_local i32 @AInputQueue_attachLooper(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @AConfiguration_fromAssetManager(i32, i32) #1

declare dso_local i32 @rarch_ctl(i32, i32*) #1

declare dso_local i32 @video_driver_unset_stub_frame(...) #1

declare dso_local i32 @UINT64_C(i32) #1

declare dso_local i32 @input_sensor_set_state(i32, i32, i32) #1

declare dso_local i32 @video_driver_set_stub_frame(...) #1

declare dso_local i64 @jni_thread_getenv(...) #1

declare dso_local i32 @CALL_VOID_METHOD_PARAM(i32*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
