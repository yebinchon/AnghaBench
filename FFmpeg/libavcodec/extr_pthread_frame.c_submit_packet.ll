; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pthread_frame.c_submit_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pthread_frame.c_submit_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32, %struct.TYPE_19__*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_16__* }
%struct.TYPE_19__ = type { i32, i64, i64, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_17__ = type { i32 }

@AV_CODEC_CAP_DELAY = common dso_local global i32 0, align 4
@FF_DEBUG_THREADS = common dso_local global i32 0, align 4
@memory_order_relaxed = common dso_local global i32 0, align 4
@STATE_SETTING_UP = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"av_packet_ref() failed in submit_packet()\0A\00", align 1
@avcodec_default_get_format = common dso_local global i64 0, align 8
@avcodec_default_get_buffer2 = common dso_local global i64 0, align 8
@STATE_SETUP_FINISHED = common dso_local global i64 0, align 8
@STATE_INPUT_READY = common dso_local global i64 0, align 8
@memory_order_acquire = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32*, %struct.TYPE_17__*)* @submit_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @submit_packet(%struct.TYPE_15__* %0, i32* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 13
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %8, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %9, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 4
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 4
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  store %struct.TYPE_18__* %24, %struct.TYPE_18__** %10, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %3
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @AV_CODEC_CAP_DELAY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %250

37:                                               ; preds = %29, %3
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 9
  %40 = call i32 @pthread_mutex_lock(i32* %39)
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @update_context_from_user(%struct.TYPE_19__* %43, i32* %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %37
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 9
  %51 = call i32 @pthread_mutex_unlock(i32* %50)
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %4, align 4
  br label %250

53:                                               ; preds = %37
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 12
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 4
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @FF_DEBUG_THREADS, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* @memory_order_relaxed, align 4
  %66 = call i32 @atomic_store_explicit(i32* %55, i32 %64, i32 %65)
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %68 = call i32 @release_delayed_buffers(%struct.TYPE_15__* %67)
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %70 = icmp ne %struct.TYPE_15__* %69, null
  br i1 %70, label %71, label %113

71:                                               ; preds = %53
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 2
  %74 = call i64 @atomic_load(i32* %73)
  %75 = load i64, i64* @STATE_SETTING_UP, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %97

77:                                               ; preds = %71
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = call i32 @pthread_mutex_lock(i32* %79)
  br label %81

81:                                               ; preds = %87, %77
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 2
  %84 = call i64 @atomic_load(i32* %83)
  %85 = load i64, i64* @STATE_SETTING_UP, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %81
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = call i32 @pthread_cond_wait(i32* %89, i32* %91)
  br label %81

93:                                               ; preds = %81
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = call i32 @pthread_mutex_unlock(i32* %95)
  br label %97

97:                                               ; preds = %93, %71
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 4
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %99, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 4
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %102, align 8
  %104 = call i32 @update_context_from_thread(%struct.TYPE_19__* %100, %struct.TYPE_19__* %103, i32 0)
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %97
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 9
  %110 = call i32 @pthread_mutex_unlock(i32* %109)
  %111 = load i32, i32* %12, align 4
  store i32 %111, i32* %4, align 4
  br label %250

112:                                              ; preds = %97
  br label %113

113:                                              ; preds = %112, %53
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 11
  %116 = call i32 @av_packet_unref(i32* %115)
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 11
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %120 = call i32 @av_packet_ref(i32* %118, %struct.TYPE_17__* %119)
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %113
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 9
  %126 = call i32 @pthread_mutex_unlock(i32* %125)
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 4
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %128, align 8
  %130 = load i32, i32* @AV_LOG_ERROR, align 4
  %131 = call i32 @av_log(%struct.TYPE_19__* %129, i32 %130, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %132 = load i32, i32* %11, align 4
  store i32 %132, i32* %4, align 4
  br label %250

133:                                              ; preds = %113
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 2
  %136 = load i64, i64* @STATE_SETTING_UP, align 8
  %137 = call i32 @atomic_store(i32* %135, i64 %136)
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 10
  %140 = call i32 @pthread_cond_signal(i32* %139)
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 9
  %143 = call i32 @pthread_mutex_unlock(i32* %142)
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 4
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %242, label %150

150:                                              ; preds = %133
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 4
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @avcodec_default_get_format, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %166, label %158

158:                                              ; preds = %150
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 4
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @avcodec_default_get_buffer2, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %242

166:                                              ; preds = %158, %150
  br label %167

167:                                              ; preds = %237, %166
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 2
  %170 = call i64 @atomic_load(i32* %169)
  %171 = load i64, i64* @STATE_SETUP_FINISHED, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %179

173:                                              ; preds = %167
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 2
  %176 = call i64 @atomic_load(i32* %175)
  %177 = load i64, i64* @STATE_INPUT_READY, align 8
  %178 = icmp ne i64 %176, %177
  br label %179

179:                                              ; preds = %173, %167
  %180 = phi i1 [ false, %167 ], [ %178, %173 ]
  br i1 %180, label %181, label %241

181:                                              ; preds = %179
  store i32 1, i32* %13, align 4
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 0
  %184 = call i32 @pthread_mutex_lock(i32* %183)
  br label %185

185:                                              ; preds = %191, %181
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 2
  %188 = call i64 @atomic_load(i32* %187)
  %189 = load i64, i64* @STATE_SETTING_UP, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %197

191:                                              ; preds = %185
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 0
  %196 = call i32 @pthread_cond_wait(i32* %193, i32* %195)
  br label %185

197:                                              ; preds = %185
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 2
  %200 = load i32, i32* @memory_order_acquire, align 4
  %201 = call i32 @atomic_load_explicit(i32* %199, i32 %200)
  switch i32 %201, label %225 [
    i32 129, label %202
    i32 128, label %215
  ]

202:                                              ; preds = %197
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 4
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %204, align 8
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 7
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 6
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @ff_get_buffer(%struct.TYPE_19__* %205, i32 %208, i32 %211)
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 8
  store i32 %212, i32* %214, align 4
  br label %226

215:                                              ; preds = %197
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 4
  %218 = load %struct.TYPE_19__*, %struct.TYPE_19__** %217, align 8
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @ff_get_format(%struct.TYPE_19__* %218, i32 %221)
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 5
  store i32 %222, i32* %224, align 8
  br label %226

225:                                              ; preds = %197
  store i32 0, i32* %13, align 4
  br label %226

226:                                              ; preds = %225, %215, %202
  %227 = load i32, i32* %13, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %237

229:                                              ; preds = %226
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 2
  %232 = load i64, i64* @STATE_SETTING_UP, align 8
  %233 = call i32 @atomic_store(i32* %231, i64 %232)
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 1
  %236 = call i32 @pthread_cond_signal(i32* %235)
  br label %237

237:                                              ; preds = %229, %226
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 0
  %240 = call i32 @pthread_mutex_unlock(i32* %239)
  br label %167

241:                                              ; preds = %179
  br label %242

242:                                              ; preds = %241, %158, %133
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i32 0, i32 1
  store %struct.TYPE_15__* %243, %struct.TYPE_15__** %245, align 8
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %247, align 8
  store i32 0, i32* %4, align 4
  br label %250

250:                                              ; preds = %242, %123, %107, %48, %36
  %251 = load i32, i32* %4, align 4
  ret i32 %251
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @update_context_from_user(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @atomic_store_explicit(i32*, i32, i32) #1

declare dso_local i32 @release_delayed_buffers(%struct.TYPE_15__*) #1

declare dso_local i64 @atomic_load(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @update_context_from_thread(%struct.TYPE_19__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @av_packet_unref(i32*) #1

declare dso_local i32 @av_packet_ref(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @av_log(%struct.TYPE_19__*, i32, i8*) #1

declare dso_local i32 @atomic_store(i32*, i64) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @atomic_load_explicit(i32*, i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @ff_get_format(%struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
