; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiVid.c_encoder_buffer_callback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiVid.c_encoder_buffer_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_20__ = type { i32, i32, i64, i64 }
%struct.TYPE_18__ = type { i32*, i32, i32, i32, i32*, i32*, i64, i32, i32, i32, %struct.TYPE_21__*, i32*, i32*, i64, i32* }
%struct.TYPE_21__ = type { i32, i32, i32, i8*, i8*, i64, i64, i64, %struct.TYPE_17__*, i64, i64, %struct.TYPE_16__, i64, i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i8* }

@encoder_buffer_callback.base_time = internal global i32 -1, align 4
@encoder_buffer_callback.last_second = internal global i32 -1, align 4
@MMAL_BUFFER_HEADER_FLAG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Error in header bytes\0A\00", align 1
@MMAL_BUFFER_HEADER_FLAG_CODECSIDEINFO = common dso_local global i32 0, align 4
@encoder_buffer_callback.frame_start = internal global i32 -1, align 4
@MMAL_BUFFER_HEADER_FLAG_KEYFRAME = common dso_local global i32 0, align 4
@IFRAME_BUFSIZE = common dso_local global i32 0, align 4
@MMAL_BUFFER_HEADER_FLAG_FRAME_END = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Error in iframe list\0A\00", align 1
@MMAL_TIME_UNKNOWN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"%lld.%03lld\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Failed to write buffer data (%d from %d)- aborting\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"Received a encoder buffer callback with no state\00", align 1
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [46 x i8] c"Unable to return a buffer to the encoder port\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, %struct.TYPE_20__*)* @encoder_buffer_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encoder_buffer_callback(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %4, align 8
  %17 = load i32, i32* @encoder_buffer_callback.base_time, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = call i32 (...) @get_microseconds64()
  %21 = sdiv i32 %20, 1000
  store i32 %21, i32* @encoder_buffer_callback.base_time, align 4
  br label %22

22:                                               ; preds = %19, %2
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %26, %struct.TYPE_18__** %6, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %28 = icmp ne %struct.TYPE_18__* %27, null
  br i1 %28, label %29, label %781

29:                                               ; preds = %22
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %7, align 4
  %33 = call i32 (...) @get_microseconds64()
  %34 = sdiv i32 %33, 1000
  store i32 %34, i32* %8, align 4
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 12
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @vcos_assert(i32* %37)
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 10
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 10
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %29
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 14
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @vcos_assert(i32* %48)
  br label %50

50:                                               ; preds = %45, %29
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %394

55:                                               ; preds = %50
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %58, %61
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp sgt i32 %63, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %55
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  br label %74

72:                                               ; preds = %55
  %73 = load i32, i32* %9, align 4
  br label %74

74:                                               ; preds = %72, %68
  %75 = phi i32 [ %71, %68 ], [ %73, %72 ]
  store i32 %75, i32* %10, align 4
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sub nsw i32 %78, %79
  store i32 %80, i32* %11, align 4
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @MMAL_BUFFER_HEADER_FLAG_CONFIG, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %127

87:                                               ; preds = %74
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %90, %93
  %95 = sext i32 %94 to i64
  %96 = icmp ugt i64 %95, 8
  br i1 %96, label %97, label %99

97:                                               ; preds = %87
  %98 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %126

99:                                               ; preds = %87
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %101 = call i32 @mmal_buffer_header_mem_lock(%struct.TYPE_20__* %100)
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 4
  %104 = load i32*, i32** %103, align 8
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %104, i64 %108
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @memcpy(i32* %109, i64 %112, i32 %115)
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %118 = call i32 @mmal_buffer_header_mem_unlock(%struct.TYPE_20__* %117)
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, %121
  store i32 %125, i32* %123, align 8
  br label %126

126:                                              ; preds = %99, %97
  br label %393

127:                                              ; preds = %74
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @MMAL_BUFFER_HEADER_FLAG_CODECSIDEINFO, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  br label %392

135:                                              ; preds = %127
  %136 = load i32, i32* @encoder_buffer_callback.frame_start, align 4
  %137 = icmp eq i32 %136, -1
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* @encoder_buffer_callback.frame_start, align 4
  br label %142

142:                                              ; preds = %138, %135
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @MMAL_BUFFER_HEADER_FLAG_KEYFRAME, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %167

149:                                              ; preds = %142
  %150 = load i32, i32* @encoder_buffer_callback.frame_start, align 4
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 5
  %153 = load i32*, i32** %152, align 8
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 6
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds i32, i32* %153, i64 %156
  store i32 %150, i32* %157, align 4
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 6
  %160 = load i64, i64* %159, align 8
  %161 = add i64 %160, 1
  %162 = load i32, i32* @IFRAME_BUFSIZE, align 4
  %163 = sext i32 %162 to i64
  %164 = urem i64 %161, %163
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 6
  store i64 %164, i64* %166, align 8
  br label %167

167:                                              ; preds = %149, %142
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @MMAL_BUFFER_HEADER_FLAG_FRAME_END, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %167
  store i32 -1, i32* @encoder_buffer_callback.frame_start, align 4
  br label %175

175:                                              ; preds = %174, %167
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 7
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 %178, 1
  %180 = load i32, i32* @IFRAME_BUFSIZE, align 4
  %181 = srem i32 %179, %180
  %182 = sext i32 %181 to i64
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 6
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %182, %185
  br i1 %186, label %187, label %270

187:                                              ; preds = %175
  br label %188

188:                                              ; preds = %260, %187
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 5
  %194 = load i32*, i32** %193, align 8
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 7
  %197 = load i32, i32* %196, align 8
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %194, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = icmp sle i32 %191, %200
  br i1 %201, label %202, label %220

202:                                              ; preds = %188
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = add nsw i32 %205, %208
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 5
  %212 = load i32*, i32** %211, align 8
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 7
  %215 = load i32, i32* %214, align 8
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %212, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = icmp sgt i32 %209, %218
  br i1 %219, label %258, label %220

220:                                              ; preds = %202, %188
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 5
  %226 = load i32*, i32** %225, align 8
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 7
  %229 = load i32, i32* %228, align 8
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %226, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = icmp sgt i32 %223, %232
  br i1 %233, label %234, label %256

234:                                              ; preds = %220
  %235 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = add nsw i32 %237, %240
  %242 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %242, i32 0, i32 5
  %244 = load i32*, i32** %243, align 8
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %245, i32 0, i32 7
  %247 = load i32, i32* %246, align 8
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %244, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = add nsw i32 %250, %253
  %255 = icmp sgt i32 %241, %254
  br label %256

256:                                              ; preds = %234, %220
  %257 = phi i1 [ false, %220 ], [ %255, %234 ]
  br label %258

258:                                              ; preds = %256, %202
  %259 = phi i1 [ true, %202 ], [ %257, %256 ]
  br i1 %259, label %260, label %269

260:                                              ; preds = %258
  %261 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %261, i32 0, i32 7
  %263 = load i32, i32* %262, align 8
  %264 = add nsw i32 %263, 1
  %265 = load i32, i32* @IFRAME_BUFSIZE, align 4
  %266 = srem i32 %264, %265
  %267 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %267, i32 0, i32 7
  store i32 %266, i32* %268, align 8
  br label %188

269:                                              ; preds = %258
  br label %270

270:                                              ; preds = %269, %175
  %271 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %272 = call i32 @mmal_buffer_header_mem_lock(%struct.TYPE_20__* %271)
  %273 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %273, i32 0, i32 0
  %275 = load i32*, i32** %274, align 8
  %276 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %275, i64 %279
  %281 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %281, i32 0, i32 3
  %283 = load i64, i64* %282, align 8
  %284 = load i32, i32* %10, align 4
  %285 = call i32 @memcpy(i32* %280, i64 %283, i32 %284)
  %286 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %286, i32 0, i32 0
  %288 = load i32*, i32** %287, align 8
  %289 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %289, i32 0, i32 3
  %291 = load i64, i64* %290, align 8
  %292 = load i32, i32* %10, align 4
  %293 = sext i32 %292 to i64
  %294 = add nsw i64 %291, %293
  %295 = load i32, i32* %11, align 4
  %296 = call i32 @memcpy(i32* %288, i64 %294, i32 %295)
  %297 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %298 = call i32 @mmal_buffer_header_mem_unlock(%struct.TYPE_20__* %297)
  %299 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %303 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = add nsw i32 %301, %304
  %306 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 8
  %309 = icmp sgt i32 %305, %308
  br i1 %309, label %310, label %313

310:                                              ; preds = %270
  %311 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %311, i32 0, i32 8
  store i32 1, i32* %312, align 4
  br label %313

313:                                              ; preds = %310, %270
  %314 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = add nsw i32 %316, %319
  %321 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %322 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 8
  %324 = srem i32 %320, %323
  %325 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %325, i32 0, i32 2
  store i32 %324, i32* %326, align 4
  %327 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %328 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %327, i32 0, i32 7
  %329 = load i32, i32* %328, align 8
  store i32 %329, i32* %12, align 4
  br label %330

330:                                              ; preds = %386, %313
  %331 = load i32, i32* %12, align 4
  %332 = sext i32 %331 to i64
  %333 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %334 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %333, i32 0, i32 6
  %335 = load i64, i64* %334, align 8
  %336 = icmp ne i64 %332, %335
  br i1 %336, label %337, label %391

337:                                              ; preds = %330
  %338 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %339 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %338, i32 0, i32 5
  %340 = load i32*, i32** %339, align 8
  %341 = load i32, i32* %12, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i32, i32* %340, i64 %342
  %344 = load i32, i32* %343, align 4
  store i32 %344, i32* %13, align 4
  %345 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %346 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %345, i32 0, i32 0
  %347 = load i32*, i32** %346, align 8
  %348 = load i32, i32* %13, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %347, i64 %349
  %351 = load i32, i32* %350, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %383, label %353

353:                                              ; preds = %337
  %354 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %355 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %354, i32 0, i32 0
  %356 = load i32*, i32** %355, align 8
  %357 = load i32, i32* %13, align 4
  %358 = add nsw i32 %357, 1
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i32, i32* %356, i64 %359
  %361 = load i32, i32* %360, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %383, label %363

363:                                              ; preds = %353
  %364 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %365 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %364, i32 0, i32 0
  %366 = load i32*, i32** %365, align 8
  %367 = load i32, i32* %13, align 4
  %368 = add nsw i32 %367, 2
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32, i32* %366, i64 %369
  %371 = load i32, i32* %370, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %383, label %373

373:                                              ; preds = %363
  %374 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %375 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %374, i32 0, i32 0
  %376 = load i32*, i32** %375, align 8
  %377 = load i32, i32* %13, align 4
  %378 = add nsw i32 %377, 3
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i32, i32* %376, i64 %379
  %381 = load i32, i32* %380, align 4
  %382 = icmp ne i32 %381, 1
  br i1 %382, label %383, label %385

383:                                              ; preds = %373, %363, %353, %337
  %384 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %385

385:                                              ; preds = %383, %373
  br label %386

386:                                              ; preds = %385
  %387 = load i32, i32* %12, align 4
  %388 = add nsw i32 %387, 1
  %389 = load i32, i32* @IFRAME_BUFSIZE, align 4
  %390 = srem i32 %388, %389
  store i32 %390, i32* %12, align 4
  br label %330

391:                                              ; preds = %330
  br label %392

392:                                              ; preds = %391, %134
  br label %393

393:                                              ; preds = %392, %126
  br label %768

394:                                              ; preds = %50
  %395 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %396 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 4
  %398 = load i32, i32* @MMAL_BUFFER_HEADER_FLAG_CONFIG, align 4
  %399 = and i32 %397, %398
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %585

401:                                              ; preds = %394
  %402 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %403 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %402, i32 0, i32 10
  %404 = load %struct.TYPE_21__*, %struct.TYPE_21__** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %418

408:                                              ; preds = %401
  %409 = load i32, i32* %8, align 4
  %410 = load i32, i32* @encoder_buffer_callback.base_time, align 4
  %411 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %412 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %411, i32 0, i32 10
  %413 = load %struct.TYPE_21__*, %struct.TYPE_21__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = add nsw i32 %410, %415
  %417 = icmp sgt i32 %409, %416
  br i1 %417, label %432, label %418

418:                                              ; preds = %408, %401
  %419 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %420 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %419, i32 0, i32 10
  %421 = load %struct.TYPE_21__*, %struct.TYPE_21__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %421, i32 0, i32 13
  %423 = load i64, i64* %422, align 8
  %424 = icmp ne i64 %423, 0
  br i1 %424, label %425, label %585

425:                                              ; preds = %418
  %426 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %427 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %426, i32 0, i32 10
  %428 = load %struct.TYPE_21__*, %struct.TYPE_21__** %427, align 8
  %429 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %428, i32 0, i32 12
  %430 = load i64, i64* %429, align 8
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %432, label %585

432:                                              ; preds = %425, %408
  %433 = load i32, i32* %8, align 4
  store i32 %433, i32* @encoder_buffer_callback.base_time, align 4
  %434 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %435 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %434, i32 0, i32 10
  %436 = load %struct.TYPE_21__*, %struct.TYPE_21__** %435, align 8
  %437 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %436, i32 0, i32 12
  store i64 0, i64* %437, align 8
  %438 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %439 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %438, i32 0, i32 10
  %440 = load %struct.TYPE_21__*, %struct.TYPE_21__** %439, align 8
  %441 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %440, i32 0, i32 1
  %442 = load i32, i32* %441, align 4
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %441, align 4
  %444 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %445 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %444, i32 0, i32 10
  %446 = load %struct.TYPE_21__*, %struct.TYPE_21__** %445, align 8
  %447 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %446, i32 0, i32 2
  %448 = load i32, i32* %447, align 8
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %467

450:                                              ; preds = %432
  %451 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %452 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %451, i32 0, i32 10
  %453 = load %struct.TYPE_21__*, %struct.TYPE_21__** %452, align 8
  %454 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %453, i32 0, i32 1
  %455 = load i32, i32* %454, align 4
  %456 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %457 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %456, i32 0, i32 10
  %458 = load %struct.TYPE_21__*, %struct.TYPE_21__** %457, align 8
  %459 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %458, i32 0, i32 2
  %460 = load i32, i32* %459, align 8
  %461 = icmp sgt i32 %455, %460
  br i1 %461, label %462, label %467

462:                                              ; preds = %450
  %463 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %464 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %463, i32 0, i32 10
  %465 = load %struct.TYPE_21__*, %struct.TYPE_21__** %464, align 8
  %466 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %465, i32 0, i32 1
  store i32 1, i32* %466, align 4
  br label %467

467:                                              ; preds = %462, %450, %432
  %468 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %469 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %468, i32 0, i32 10
  %470 = load %struct.TYPE_21__*, %struct.TYPE_21__** %469, align 8
  %471 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %470, i32 0, i32 11
  %472 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %471, i32 0, i32 0
  %473 = load i8*, i8** %472, align 8
  %474 = icmp ne i8* %473, null
  br i1 %474, label %475, label %508

475:                                              ; preds = %467
  %476 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %477 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %476, i32 0, i32 10
  %478 = load %struct.TYPE_21__*, %struct.TYPE_21__** %477, align 8
  %479 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %478, i32 0, i32 11
  %480 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %479, i32 0, i32 0
  %481 = load i8*, i8** %480, align 8
  %482 = getelementptr inbounds i8, i8* %481, i64 0
  %483 = load i8, i8* %482, align 1
  %484 = sext i8 %483 to i32
  %485 = icmp ne i32 %484, 45
  br i1 %485, label %486, label %508

486:                                              ; preds = %475
  %487 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %488 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %487, i32 0, i32 10
  %489 = load %struct.TYPE_21__*, %struct.TYPE_21__** %488, align 8
  %490 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %491 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %490, i32 0, i32 10
  %492 = load %struct.TYPE_21__*, %struct.TYPE_21__** %491, align 8
  %493 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %492, i32 0, i32 11
  %494 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %493, i32 0, i32 0
  %495 = load i8*, i8** %494, align 8
  %496 = call i32* @open_filename(%struct.TYPE_21__* %489, i8* %495)
  store i32* %496, i32** %14, align 8
  %497 = load i32*, i32** %14, align 8
  %498 = icmp ne i32* %497, null
  br i1 %498, label %499, label %507

499:                                              ; preds = %486
  %500 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %501 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %500, i32 0, i32 12
  %502 = load i32*, i32** %501, align 8
  %503 = call i32 @fclose(i32* %502)
  %504 = load i32*, i32** %14, align 8
  %505 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %506 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %505, i32 0, i32 12
  store i32* %504, i32** %506, align 8
  br label %507

507:                                              ; preds = %499, %486
  br label %508

508:                                              ; preds = %507, %475, %467
  %509 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %510 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %509, i32 0, i32 10
  %511 = load %struct.TYPE_21__*, %struct.TYPE_21__** %510, align 8
  %512 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %511, i32 0, i32 3
  %513 = load i8*, i8** %512, align 8
  %514 = icmp ne i8* %513, null
  br i1 %514, label %515, label %546

515:                                              ; preds = %508
  %516 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %517 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %516, i32 0, i32 10
  %518 = load %struct.TYPE_21__*, %struct.TYPE_21__** %517, align 8
  %519 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %518, i32 0, i32 3
  %520 = load i8*, i8** %519, align 8
  %521 = getelementptr inbounds i8, i8* %520, i64 0
  %522 = load i8, i8* %521, align 1
  %523 = sext i8 %522 to i32
  %524 = icmp ne i32 %523, 45
  br i1 %524, label %525, label %546

525:                                              ; preds = %515
  %526 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %527 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %526, i32 0, i32 10
  %528 = load %struct.TYPE_21__*, %struct.TYPE_21__** %527, align 8
  %529 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %530 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %529, i32 0, i32 10
  %531 = load %struct.TYPE_21__*, %struct.TYPE_21__** %530, align 8
  %532 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %531, i32 0, i32 3
  %533 = load i8*, i8** %532, align 8
  %534 = call i32* @open_filename(%struct.TYPE_21__* %528, i8* %533)
  store i32* %534, i32** %14, align 8
  %535 = load i32*, i32** %14, align 8
  %536 = icmp ne i32* %535, null
  br i1 %536, label %537, label %545

537:                                              ; preds = %525
  %538 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %539 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %538, i32 0, i32 14
  %540 = load i32*, i32** %539, align 8
  %541 = call i32 @fclose(i32* %540)
  %542 = load i32*, i32** %14, align 8
  %543 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %544 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %543, i32 0, i32 14
  store i32* %542, i32** %544, align 8
  br label %545

545:                                              ; preds = %537, %525
  br label %546

546:                                              ; preds = %545, %515, %508
  %547 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %548 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %547, i32 0, i32 10
  %549 = load %struct.TYPE_21__*, %struct.TYPE_21__** %548, align 8
  %550 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %549, i32 0, i32 4
  %551 = load i8*, i8** %550, align 8
  %552 = icmp ne i8* %551, null
  br i1 %552, label %553, label %584

553:                                              ; preds = %546
  %554 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %555 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %554, i32 0, i32 10
  %556 = load %struct.TYPE_21__*, %struct.TYPE_21__** %555, align 8
  %557 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %556, i32 0, i32 4
  %558 = load i8*, i8** %557, align 8
  %559 = getelementptr inbounds i8, i8* %558, i64 0
  %560 = load i8, i8* %559, align 1
  %561 = sext i8 %560 to i32
  %562 = icmp ne i32 %561, 45
  br i1 %562, label %563, label %584

563:                                              ; preds = %553
  %564 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %565 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %564, i32 0, i32 10
  %566 = load %struct.TYPE_21__*, %struct.TYPE_21__** %565, align 8
  %567 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %568 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %567, i32 0, i32 10
  %569 = load %struct.TYPE_21__*, %struct.TYPE_21__** %568, align 8
  %570 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %569, i32 0, i32 4
  %571 = load i8*, i8** %570, align 8
  %572 = call i32* @open_filename(%struct.TYPE_21__* %566, i8* %571)
  store i32* %572, i32** %14, align 8
  %573 = load i32*, i32** %14, align 8
  %574 = icmp ne i32* %573, null
  br i1 %574, label %575, label %583

575:                                              ; preds = %563
  %576 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %577 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %576, i32 0, i32 11
  %578 = load i32*, i32** %577, align 8
  %579 = call i32 @fclose(i32* %578)
  %580 = load i32*, i32** %14, align 8
  %581 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %582 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %581, i32 0, i32 11
  store i32* %580, i32** %582, align 8
  br label %583

583:                                              ; preds = %575, %563
  br label %584

584:                                              ; preds = %583, %553, %546
  br label %585

585:                                              ; preds = %584, %425, %418, %394
  %586 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %587 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %586, i32 0, i32 0
  %588 = load i32, i32* %587, align 8
  %589 = icmp ne i32 %588, 0
  br i1 %589, label %590, label %767

590:                                              ; preds = %585
  %591 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %592 = call i32 @mmal_buffer_header_mem_lock(%struct.TYPE_20__* %591)
  %593 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %594 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %593, i32 0, i32 1
  %595 = load i32, i32* %594, align 4
  %596 = load i32, i32* @MMAL_BUFFER_HEADER_FLAG_CODECSIDEINFO, align 4
  %597 = and i32 %595, %596
  %598 = icmp ne i32 %597, 0
  br i1 %598, label %599, label %632

599:                                              ; preds = %590
  %600 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %601 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %600, i32 0, i32 10
  %602 = load %struct.TYPE_21__*, %struct.TYPE_21__** %601, align 8
  %603 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %602, i32 0, i32 10
  %604 = load i64, i64* %603, align 8
  %605 = icmp ne i64 %604, 0
  br i1 %605, label %606, label %627

606:                                              ; preds = %599
  %607 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %608 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %607, i32 0, i32 3
  %609 = load i64, i64* %608, align 8
  %610 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %611 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %610, i32 0, i32 0
  %612 = load i32, i32* %611, align 8
  %613 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %614 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %613, i32 0, i32 14
  %615 = load i32*, i32** %614, align 8
  %616 = call i32 @fwrite(i64 %609, i32 1, i32 %612, i32* %615)
  store i32 %616, i32* %7, align 4
  %617 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %618 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %617, i32 0, i32 13
  %619 = load i64, i64* %618, align 8
  %620 = icmp ne i64 %619, 0
  br i1 %620, label %621, label %626

621:                                              ; preds = %606
  %622 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %623 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %622, i32 0, i32 14
  %624 = load i32*, i32** %623, align 8
  %625 = call i32 @fflush(i32* %624)
  br label %626

626:                                              ; preds = %621, %606
  br label %631

627:                                              ; preds = %599
  %628 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %629 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %628, i32 0, i32 0
  %630 = load i32, i32* %629, align 8
  store i32 %630, i32* %7, align 4
  br label %631

631:                                              ; preds = %627, %626
  br label %750

632:                                              ; preds = %590
  %633 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %634 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %633, i32 0, i32 3
  %635 = load i64, i64* %634, align 8
  %636 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %637 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %636, i32 0, i32 0
  %638 = load i32, i32* %637, align 8
  %639 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %640 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %639, i32 0, i32 12
  %641 = load i32*, i32** %640, align 8
  %642 = call i32 @fwrite(i64 %635, i32 1, i32 %638, i32* %641)
  store i32 %642, i32* %7, align 4
  %643 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %644 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %643, i32 0, i32 13
  %645 = load i64, i64* %644, align 8
  %646 = icmp ne i64 %645, 0
  br i1 %646, label %647, label %652

647:                                              ; preds = %632
  %648 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %649 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %648, i32 0, i32 12
  %650 = load i32*, i32** %649, align 8
  %651 = call i32 @fflush(i32* %650)
  br label %652

652:                                              ; preds = %647, %632
  %653 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %654 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %653, i32 0, i32 10
  %655 = load %struct.TYPE_21__*, %struct.TYPE_21__** %654, align 8
  %656 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %655, i32 0, i32 9
  %657 = load i64, i64* %656, align 8
  %658 = icmp ne i64 %657, 0
  br i1 %658, label %659, label %749

659:                                              ; preds = %652
  %660 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %661 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %660, i32 0, i32 1
  %662 = load i32, i32* %661, align 4
  %663 = load i32, i32* @MMAL_BUFFER_HEADER_FLAG_FRAME_END, align 4
  %664 = and i32 %662, %663
  %665 = icmp ne i32 %664, 0
  br i1 %665, label %678, label %666

666:                                              ; preds = %659
  %667 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %668 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %667, i32 0, i32 1
  %669 = load i32, i32* %668, align 4
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %678, label %671

671:                                              ; preds = %666
  %672 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %673 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %672, i32 0, i32 1
  %674 = load i32, i32* %673, align 4
  %675 = load i32, i32* @MMAL_BUFFER_HEADER_FLAG_KEYFRAME, align 4
  %676 = and i32 %674, %675
  %677 = icmp ne i32 %676, 0
  br i1 %677, label %678, label %749

678:                                              ; preds = %671, %666, %659
  %679 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %680 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %679, i32 0, i32 1
  %681 = load i32, i32* %680, align 4
  %682 = load i32, i32* @MMAL_BUFFER_HEADER_FLAG_CONFIG, align 4
  %683 = and i32 %681, %682
  %684 = icmp ne i32 %683, 0
  br i1 %684, label %749, label %685

685:                                              ; preds = %678
  %686 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %687 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %686, i32 0, i32 2
  %688 = load i64, i64* %687, align 8
  %689 = load i64, i64* @MMAL_TIME_UNKNOWN, align 8
  %690 = icmp ne i64 %688, %689
  br i1 %690, label %691, label %748

691:                                              ; preds = %685
  %692 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %693 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %692, i32 0, i32 2
  %694 = load i64, i64* %693, align 8
  %695 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %696 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %695, i32 0, i32 10
  %697 = load %struct.TYPE_21__*, %struct.TYPE_21__** %696, align 8
  %698 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %697, i32 0, i32 5
  %699 = load i64, i64* %698, align 8
  %700 = icmp ne i64 %694, %699
  br i1 %700, label %701, label %748

701:                                              ; preds = %691
  %702 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %703 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %702, i32 0, i32 10
  %704 = load %struct.TYPE_21__*, %struct.TYPE_21__** %703, align 8
  %705 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %704, i32 0, i32 6
  %706 = load i64, i64* %705, align 8
  %707 = icmp eq i64 %706, 0
  br i1 %707, label %708, label %716

708:                                              ; preds = %701
  %709 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %710 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %709, i32 0, i32 2
  %711 = load i64, i64* %710, align 8
  %712 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %713 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %712, i32 0, i32 10
  %714 = load %struct.TYPE_21__*, %struct.TYPE_21__** %713, align 8
  %715 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %714, i32 0, i32 7
  store i64 %711, i64* %715, align 8
  br label %716

716:                                              ; preds = %708, %701
  %717 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %718 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %717, i32 0, i32 2
  %719 = load i64, i64* %718, align 8
  %720 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %721 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %720, i32 0, i32 10
  %722 = load %struct.TYPE_21__*, %struct.TYPE_21__** %721, align 8
  %723 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %722, i32 0, i32 5
  store i64 %719, i64* %723, align 8
  %724 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %725 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %724, i32 0, i32 2
  %726 = load i64, i64* %725, align 8
  %727 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %728 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %727, i32 0, i32 10
  %729 = load %struct.TYPE_21__*, %struct.TYPE_21__** %728, align 8
  %730 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %729, i32 0, i32 7
  %731 = load i64, i64* %730, align 8
  %732 = sub nsw i64 %726, %731
  %733 = trunc i64 %732 to i32
  store i32 %733, i32* %15, align 4
  %734 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %735 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %734, i32 0, i32 11
  %736 = load i32*, i32** %735, align 8
  %737 = load i32, i32* %15, align 4
  %738 = sdiv i32 %737, 1000
  %739 = load i32, i32* %15, align 4
  %740 = srem i32 %739, 1000
  %741 = call i32 @fprintf(i32* %736, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %738, i32 %740)
  %742 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %743 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %742, i32 0, i32 10
  %744 = load %struct.TYPE_21__*, %struct.TYPE_21__** %743, align 8
  %745 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %744, i32 0, i32 6
  %746 = load i64, i64* %745, align 8
  %747 = add nsw i64 %746, 1
  store i64 %747, i64* %745, align 8
  br label %748

748:                                              ; preds = %716, %691, %685
  br label %749

749:                                              ; preds = %748, %678, %671, %652
  br label %750

750:                                              ; preds = %749, %631
  %751 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %752 = call i32 @mmal_buffer_header_mem_unlock(%struct.TYPE_20__* %751)
  %753 = load i32, i32* %7, align 4
  %754 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %755 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %754, i32 0, i32 0
  %756 = load i32, i32* %755, align 8
  %757 = icmp ne i32 %753, %756
  br i1 %757, label %758, label %766

758:                                              ; preds = %750
  %759 = load i32, i32* %7, align 4
  %760 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %761 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %760, i32 0, i32 0
  %762 = load i32, i32* %761, align 8
  %763 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %759, i32 %762)
  %764 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %765 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %764, i32 0, i32 9
  store i32 1, i32* %765, align 8
  br label %766

766:                                              ; preds = %758, %750
  br label %767

767:                                              ; preds = %766, %585
  br label %768

768:                                              ; preds = %767, %393
  %769 = load i32, i32* %8, align 4
  %770 = sdiv i32 %769, 1000
  %771 = load i32, i32* @encoder_buffer_callback.last_second, align 4
  %772 = icmp ne i32 %770, %771
  br i1 %772, label %773, label %780

773:                                              ; preds = %768
  %774 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %775 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %774, i32 0, i32 10
  %776 = load %struct.TYPE_21__*, %struct.TYPE_21__** %775, align 8
  %777 = call i32 @update_annotation_data(%struct.TYPE_21__* %776)
  %778 = load i32, i32* %8, align 4
  %779 = sdiv i32 %778, 1000
  store i32 %779, i32* @encoder_buffer_callback.last_second, align 4
  br label %780

780:                                              ; preds = %773, %768
  br label %783

781:                                              ; preds = %22
  %782 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  br label %783

783:                                              ; preds = %781, %780
  %784 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %785 = call i32 @mmal_buffer_header_release(%struct.TYPE_20__* %784)
  %786 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %787 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %786, i32 0, i32 0
  %788 = load i64, i64* %787, align 8
  %789 = icmp ne i64 %788, 0
  br i1 %789, label %790, label %815

790:                                              ; preds = %783
  %791 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %792 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %791, i32 0, i32 10
  %793 = load %struct.TYPE_21__*, %struct.TYPE_21__** %792, align 8
  %794 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %793, i32 0, i32 8
  %795 = load %struct.TYPE_17__*, %struct.TYPE_17__** %794, align 8
  %796 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %795, i32 0, i32 0
  %797 = load i32, i32* %796, align 4
  %798 = call %struct.TYPE_20__* @mmal_queue_get(i32 %797)
  store %struct.TYPE_20__* %798, %struct.TYPE_20__** %5, align 8
  %799 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %800 = icmp ne %struct.TYPE_20__* %799, null
  br i1 %800, label %801, label %805

801:                                              ; preds = %790
  %802 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %803 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %804 = call i64 @mmal_port_send_buffer(%struct.TYPE_19__* %802, %struct.TYPE_20__* %803)
  store i64 %804, i64* %16, align 8
  br label %805

805:                                              ; preds = %801, %790
  %806 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %807 = icmp ne %struct.TYPE_20__* %806, null
  br i1 %807, label %808, label %812

808:                                              ; preds = %805
  %809 = load i64, i64* %16, align 8
  %810 = load i64, i64* @MMAL_SUCCESS, align 8
  %811 = icmp ne i64 %809, %810
  br i1 %811, label %812, label %814

812:                                              ; preds = %808, %805
  %813 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  br label %814

814:                                              ; preds = %812, %808
  br label %815

815:                                              ; preds = %814, %783
  ret void
}

declare dso_local i32 @get_microseconds64(...) #1

declare dso_local i32 @vcos_assert(i32*) #1

declare dso_local i32 @vcos_log_error(i8*, ...) #1

declare dso_local i32 @mmal_buffer_header_mem_lock(%struct.TYPE_20__*) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @mmal_buffer_header_mem_unlock(%struct.TYPE_20__*) #1

declare dso_local i32* @open_filename(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fwrite(i64, i32, i32, i32*) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, i32, i32) #1

declare dso_local i32 @update_annotation_data(%struct.TYPE_21__*) #1

declare dso_local i32 @mmal_buffer_header_release(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_20__* @mmal_queue_get(i32) #1

declare dso_local i64 @mmal_port_send_buffer(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
