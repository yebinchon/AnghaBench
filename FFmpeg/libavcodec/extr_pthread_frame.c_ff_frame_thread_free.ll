; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pthread_frame.c_ff_frame_thread_free.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pthread_frame.c_ff_frame_thread_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__*, i64, %struct.TYPE_14__* }
%struct.TYPE_17__ = type { i64, i32 (%struct.TYPE_15__*)* }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_15__*, %struct.TYPE_15__*, i32, %struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_15__*, i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Final thread update failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_frame_thread_free(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %5, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %6, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @park_frame_worker_threads(%struct.TYPE_15__* %18, i32 %19)
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 22
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %24 = icmp ne %struct.TYPE_15__* %23, null
  br i1 %24, label %25, label %76

25:                                               ; preds = %2
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 22
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 6
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  %32 = icmp ne %struct.TYPE_15__* %28, %31
  br i1 %32, label %33, label %76

33:                                               ; preds = %25
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 6
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 7
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 22
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 7
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  %44 = call i64 @update_context_from_thread(%struct.TYPE_15__* %38, %struct.TYPE_15__* %43, i32 0)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %75

46:                                               ; preds = %33
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %48 = load i32, i32* @AV_LOG_ERROR, align 4
  %49 = call i32 @av_log(%struct.TYPE_16__* %47, i32 %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 6
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 7
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 9
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 22
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 7
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 9
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  store i32 %58, i32* %66, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 6
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 7
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 9
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  br label %75

75:                                               ; preds = %46, %33
  br label %76

76:                                               ; preds = %75, %25, %2
  store i32 0, i32* %7, align 4
  br label %77

77:                                               ; preds = %134, %76
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %137

81:                                               ; preds = %77
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 6
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i64 %86
  store %struct.TYPE_15__* %87, %struct.TYPE_15__** %8, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 18
  %90 = call i32 @pthread_mutex_lock(i32* %89)
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 1
  store i32 1, i32* %92, align 4
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 16
  %95 = call i32 @pthread_cond_signal(i32* %94)
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 18
  %98 = call i32 @pthread_mutex_unlock(i32* %97)
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 20
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %81
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 21
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @pthread_join(i32 %106, i32* null)
  br label %108

108:                                              ; preds = %103, %81
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 20
  store i64 0, i64* %110, align 8
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 1
  %113 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %112, align 8
  %114 = icmp ne i32 (%struct.TYPE_15__*)* %113, null
  br i1 %114, label %115, label %128

115:                                              ; preds = %108
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 7
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %117, align 8
  %119 = icmp ne %struct.TYPE_15__* %118, null
  br i1 %119, label %120, label %128

120:                                              ; preds = %115
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 1
  %123 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %122, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 7
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %125, align 8
  %127 = call i32 %123(%struct.TYPE_15__* %126)
  br label %128

128:                                              ; preds = %120, %115, %108
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %130 = call i32 @release_delayed_buffers(%struct.TYPE_15__* %129)
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 19
  %133 = call i32 @av_frame_free(i32* %132)
  br label %134

134:                                              ; preds = %128
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %7, align 4
  br label %77

137:                                              ; preds = %77
  store i32 0, i32* %7, align 4
  br label %138

138:                                              ; preds = %208, %137
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* %4, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %211

142:                                              ; preds = %138
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 6
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %144, align 8
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i64 %147
  store %struct.TYPE_15__* %148, %struct.TYPE_15__** %9, align 8
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 18
  %151 = call i32 @pthread_mutex_destroy(i32* %150)
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 17
  %154 = call i32 @pthread_mutex_destroy(i32* %153)
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 16
  %157 = call i32 @pthread_cond_destroy(i32* %156)
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 15
  %160 = call i32 @pthread_cond_destroy(i32* %159)
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 14
  %163 = call i32 @pthread_cond_destroy(i32* %162)
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 13
  %166 = call i32 @av_packet_unref(i32* %165)
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 12
  %169 = call i32 @av_freep(%struct.TYPE_15__** %168)
  %170 = load i32, i32* %7, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %188

172:                                              ; preds = %142
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 7
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %174, align 8
  %176 = icmp ne %struct.TYPE_15__* %175, null
  br i1 %176, label %177, label %188

177:                                              ; preds = %172
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 7
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 11
  %182 = call i32 @av_freep(%struct.TYPE_15__** %181)
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 7
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 10
  %187 = call i32 @av_freep(%struct.TYPE_15__** %186)
  br label %188

188:                                              ; preds = %177, %172, %142
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 7
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %190, align 8
  %192 = icmp ne %struct.TYPE_15__* %191, null
  br i1 %192, label %193, label %204

193:                                              ; preds = %188
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 7
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 9
  %198 = call i32 @av_freep(%struct.TYPE_15__** %197)
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 7
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 8
  %203 = call i32 @av_buffer_unref(i32* %202)
  br label %204

204:                                              ; preds = %193, %188
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 7
  %207 = call i32 @av_freep(%struct.TYPE_15__** %206)
  br label %208

208:                                              ; preds = %204
  %209 = load i32, i32* %7, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %7, align 4
  br label %138

211:                                              ; preds = %138
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 6
  %214 = call i32 @av_freep(%struct.TYPE_15__** %213)
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 5
  %217 = call i32 @pthread_mutex_destroy(i32* %216)
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 4
  %220 = call i32 @pthread_mutex_destroy(i32* %219)
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 3
  %223 = call i32 @pthread_mutex_destroy(i32* %222)
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 2
  %226 = call i32 @pthread_cond_destroy(i32* %225)
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 2
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 0
  %231 = call i32 @av_freep(%struct.TYPE_15__** %230)
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %253

236:                                              ; preds = %211
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 0
  %239 = load %struct.TYPE_17__*, %struct.TYPE_17__** %238, align 8
  %240 = icmp ne %struct.TYPE_17__* %239, null
  br i1 %240, label %241, label %253

241:                                              ; preds = %236
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_17__*, %struct.TYPE_17__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %241
  %249 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = call i32 @av_opt_free(i64 %251)
  br label %253

253:                                              ; preds = %248, %241, %236, %211
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i32 0, i32 0
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %255, align 8
  ret void
}

declare dso_local i32 @park_frame_worker_threads(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @update_context_from_thread(%struct.TYPE_15__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @release_delayed_buffers(%struct.TYPE_15__*) #1

declare dso_local i32 @av_frame_free(i32*) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @pthread_cond_destroy(i32*) #1

declare dso_local i32 @av_packet_unref(i32*) #1

declare dso_local i32 @av_freep(%struct.TYPE_15__**) #1

declare dso_local i32 @av_buffer_unref(i32*) #1

declare dso_local i32 @av_opt_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
