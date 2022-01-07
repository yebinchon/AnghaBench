; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_avcodec_audio_decoder.c_avaudio_do_processing.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_avcodec_audio_decoder.c_avaudio_do_processing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32**, i32**, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i32, i64, i64, i32, i64, i64, i64 }
%struct.TYPE_17__ = type { i32, i32, i64, i64, i64, i64, i64 }
%struct.TYPE_18__ = type { i32, i64 }

@MMAL_SUCCESS = common dso_local global i64 0, align 8
@MMAL_BUFFER_HEADER_FLAG_EOS = common dso_local global i32 0, align 4
@FF_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"could not pad buffer\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"decoding failed (%i), discarding buffer\00", align 1
@MMAL_TIME_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @avaudio_do_processing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avaudio_do_processing(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_18__, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %4, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %17 = load i32**, i32*** %16, align 8
  %18 = getelementptr inbounds i32*, i32** %17, i64 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %5, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i32**, i32*** %21, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %6, align 8
  store i32 0, i32* %9, align 4
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 7
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %243

30:                                               ; preds = %1
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call i64 @avcodec_send_frame(%struct.TYPE_15__* %36, i32* %37)
  %39 = load i64, i64* @MMAL_SUCCESS, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %243

42:                                               ; preds = %35, %30
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 1, i32* %2, align 4
  br label %243

48:                                               ; preds = %42
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call %struct.TYPE_17__* @mmal_queue_get(i32 %51)
  store %struct.TYPE_17__* %52, %struct.TYPE_17__** %7, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %54 = icmp ne %struct.TYPE_17__* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %243

56:                                               ; preds = %48
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %56
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @MMAL_BUFFER_HEADER_FLAG_EOS, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %61
  br label %178

69:                                               ; preds = %61, %56
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %104

74:                                               ; preds = %69
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %104, label %79

79:                                               ; preds = %74
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* @FF_INPUT_BUFFER_PADDING_SIZE, align 8
  %85 = add nsw i64 %83, %84
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp sle i64 %85, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %79
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 6
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %93, %97
  %99 = load i64, i64* @FF_INPUT_BUFFER_PADDING_SIZE, align 8
  %100 = call i32 @memset(i64 %98, i32 0, i64 %99)
  br label %103

101:                                              ; preds = %79
  %102 = call i32 @LOG_WARN(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %90
  br label %104

104:                                              ; preds = %103, %74, %69
  %105 = call i32 @av_init_packet(%struct.TYPE_18__* %8)
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %104
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 6
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 5
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %113, %116
  br label %119

118:                                              ; preds = %104
  br label %119

119:                                              ; preds = %118, %110
  %120 = phi i64 [ %117, %110 ], [ 0, %118 ]
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 1
  store i64 %120, i64* %121, align 8
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  store i32 %124, i32* %125, align 8
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 6
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 2
  store i64 %128, i64* %130, align 8
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 5
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 3
  store i64 %133, i64* %135, align 8
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = inttoptr i64 %141 to i32*
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 2
  %145 = call i32 @avcodec_decode_audio3(i32 %138, i32* %142, i64* %144, %struct.TYPE_18__* %8)
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %154, label %148

148:                                              ; preds = %119
  %149 = load i32, i32* %9, align 4
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp sgt i32 %149, %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %148, %119
  %155 = load i32, i32* %9, align 4
  %156 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %155)
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  store i32 %159, i32* %9, align 4
  br label %160

160:                                              ; preds = %154, %148
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 0
  store i64 %163, i64* %165, align 8
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @MMAL_TIME_UNKNOWN, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %177

171:                                              ; preds = %160
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 4
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 0
  store i64 %174, i64* %176, align 8
  br label %177

177:                                              ; preds = %171, %160
  br label %178

178:                                              ; preds = %177, %68
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 5
  %183 = load i64, i64* %182, align 8
  %184 = add nsw i64 %183, %180
  store i64 %184, i64* %182, align 8
  %185 = load i32, i32* %9, align 4
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = sub nsw i32 %188, %185
  store i32 %189, i32* %187, align 8
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %178
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %199 = call i32 @mmal_queue_put_back(i32 %197, %struct.TYPE_17__* %198)
  store i32 1, i32* %2, align 4
  br label %243

200:                                              ; preds = %178
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @MMAL_BUFFER_HEADER_FLAG_EOS, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %218

207:                                              ; preds = %200
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %207
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %217 = call i32 @mmal_queue_put_back(i32 %215, %struct.TYPE_17__* %216)
  store i32 1, i32* %2, align 4
  br label %243

218:                                              ; preds = %207, %200
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @MMAL_BUFFER_HEADER_FLAG_EOS, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %237

225:                                              ; preds = %218
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %227 = load i32*, i32** %6, align 8
  %228 = call i64 @avcodec_send_eos(%struct.TYPE_15__* %226, i32* %227)
  %229 = load i64, i64* @MMAL_SUCCESS, align 8
  %230 = icmp ne i64 %228, %229
  br i1 %230, label %231, label %237

231:                                              ; preds = %225
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %236 = call i32 @mmal_queue_put_back(i32 %234, %struct.TYPE_17__* %235)
  store i32 0, i32* %2, align 4
  br label %243

237:                                              ; preds = %225, %218
  %238 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %238, i32 0, i32 5
  store i64 0, i64* %239, align 8
  %240 = load i32*, i32** %5, align 8
  %241 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %242 = call i32 @mmal_port_buffer_header_callback(i32* %240, %struct.TYPE_17__* %241)
  store i32 1, i32* %2, align 4
  br label %243

243:                                              ; preds = %237, %231, %212, %194, %55, %47, %41, %29
  %244 = load i32, i32* %2, align 4
  ret i32 %244
}

declare dso_local i64 @avcodec_send_frame(%struct.TYPE_15__*, i32*) #1

declare dso_local %struct.TYPE_17__* @mmal_queue_get(i32) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i32 @LOG_WARN(i8*) #1

declare dso_local i32 @av_init_packet(%struct.TYPE_18__*) #1

declare dso_local i32 @avcodec_decode_audio3(i32, i32*, i64*, %struct.TYPE_18__*) #1

declare dso_local i32 @LOG_ERROR(i8*, i32) #1

declare dso_local i32 @mmal_queue_put_back(i32, %struct.TYPE_17__*) #1

declare dso_local i64 @avcodec_send_eos(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @mmal_port_buffer_header_callback(i32*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
