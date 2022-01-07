; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_avcodec_video_decoder.c_avcodec_do_processing.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_avcodec_video_decoder.c_avcodec_do_processing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32**, i32**, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i32, i64, %struct.TYPE_17__*, %struct.TYPE_16__*, i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32, i64, i64, i64, i64, i32 }
%struct.TYPE_22__ = type { i32, i64 }

@MMAL_SUCCESS = common dso_local global i64 0, align 8
@MMAL_BUFFER_HEADER_FLAG_EOS = common dso_local global i32 0, align 4
@FF_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"could not pad buffer\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"decoding failed (%i), discarding buffer\00", align 1
@MMAL_TIME_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*)* @avcodec_do_processing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avcodec_do_processing(%struct.TYPE_19__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_22__, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %4, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 1
  %17 = load i32**, i32*** %16, align 8
  %18 = getelementptr inbounds i32*, i32** %17, i64 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %5, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load i32**, i32*** %21, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %6, align 8
  store i32 0, i32* %9, align 4
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %243

30:                                               ; preds = %1
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call i64 @avcodec_send_picture(%struct.TYPE_19__* %36, i32* %37)
  %39 = load i64, i64* @MMAL_SUCCESS, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %243

42:                                               ; preds = %35, %30
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.TYPE_21__* @mmal_queue_get(i32 %47)
  store %struct.TYPE_21__* %48, %struct.TYPE_21__** %7, align 8
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %50 = icmp ne %struct.TYPE_21__* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %243

52:                                               ; preds = %42
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %52
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @MMAL_BUFFER_HEADER_FLAG_EOS, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %57
  br label %178

65:                                               ; preds = %57, %52
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %100

70:                                               ; preds = %65
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %100, label %75

75:                                               ; preds = %70
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* @FF_INPUT_BUFFER_PADDING_SIZE, align 8
  %81 = add nsw i64 %79, %80
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp sle i64 %81, %84
  br i1 %85, label %86, label %97

86:                                               ; preds = %75
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 5
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %89, %93
  %95 = load i64, i64* @FF_INPUT_BUFFER_PADDING_SIZE, align 8
  %96 = call i32 @memset(i64 %94, i32 0, i64 %95)
  br label %99

97:                                               ; preds = %75
  %98 = call i32 @LOG_WARN(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %86
  br label %100

100:                                              ; preds = %99, %70, %65
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 4
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  store i32 %103, i32* %107, align 4
  %108 = call i32 @av_init_packet(%struct.TYPE_22__* %8)
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %100
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 5
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %116, %119
  br label %122

121:                                              ; preds = %100
  br label %122

122:                                              ; preds = %121, %113
  %123 = phi i64 [ %120, %113 ], [ 0, %121 ]
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 1
  store i64 %123, i64* %124, align 8
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  store i32 %127, i32* %128, align 8
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 4
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %130, align 8
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 3
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %133, align 8
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 2
  %137 = call i32 @avcodec_decode_video2(%struct.TYPE_16__* %131, %struct.TYPE_17__* %134, i64* %136, %struct.TYPE_22__* %8)
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* %9, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %146, label %140

140:                                              ; preds = %122
  %141 = load i32, i32* %9, align 4
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp sgt i32 %141, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %140, %122
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %147)
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  store i32 %151, i32* %9, align 4
  br label %152

152:                                              ; preds = %146, %140
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %177

157:                                              ; preds = %152
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 3
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 0
  store i64 %162, i64* %164, align 8
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @MMAL_TIME_UNKNOWN, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %176

170:                                              ; preds = %157
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 0
  store i64 %173, i64* %175, align 8
  br label %176

176:                                              ; preds = %170, %157
  br label %177

177:                                              ; preds = %176, %152
  br label %178

178:                                              ; preds = %177, %64
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 4
  %183 = load i64, i64* %182, align 8
  %184 = add nsw i64 %183, %180
  store i64 %184, i64* %182, align 8
  %185 = load i32, i32* %9, align 4
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = sub nsw i32 %188, %185
  store i32 %189, i32* %187, align 8
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %178
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %199 = call i32 @mmal_queue_put_back(i32 %197, %struct.TYPE_21__* %198)
  store i32 1, i32* %2, align 4
  br label %243

200:                                              ; preds = %178
  %201 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @MMAL_BUFFER_HEADER_FLAG_EOS, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %218

207:                                              ; preds = %200
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %207
  %213 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %217 = call i32 @mmal_queue_put_back(i32 %215, %struct.TYPE_21__* %216)
  store i32 1, i32* %2, align 4
  br label %243

218:                                              ; preds = %207, %200
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @MMAL_BUFFER_HEADER_FLAG_EOS, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %237

225:                                              ; preds = %218
  %226 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %227 = load i32*, i32** %6, align 8
  %228 = call i64 @avcodec_send_eos(%struct.TYPE_19__* %226, i32* %227)
  %229 = load i64, i64* @MMAL_SUCCESS, align 8
  %230 = icmp ne i64 %228, %229
  br i1 %230, label %231, label %237

231:                                              ; preds = %225
  %232 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %236 = call i32 @mmal_queue_put_back(i32 %234, %struct.TYPE_21__* %235)
  store i32 0, i32* %2, align 4
  br label %243

237:                                              ; preds = %225, %218
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %238, i32 0, i32 4
  store i64 0, i64* %239, align 8
  %240 = load i32*, i32** %5, align 8
  %241 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %242 = call i32 @mmal_port_buffer_header_callback(i32* %240, %struct.TYPE_21__* %241)
  store i32 1, i32* %2, align 4
  br label %243

243:                                              ; preds = %237, %231, %212, %194, %51, %41, %29
  %244 = load i32, i32* %2, align 4
  ret i32 %244
}

declare dso_local i64 @avcodec_send_picture(%struct.TYPE_19__*, i32*) #1

declare dso_local %struct.TYPE_21__* @mmal_queue_get(i32) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i32 @LOG_WARN(i8*) #1

declare dso_local i32 @av_init_packet(%struct.TYPE_22__*) #1

declare dso_local i32 @avcodec_decode_video2(%struct.TYPE_16__*, %struct.TYPE_17__*, i64*, %struct.TYPE_22__*) #1

declare dso_local i32 @LOG_ERROR(i8*, i32) #1

declare dso_local i32 @mmal_queue_put_back(i32, %struct.TYPE_21__*) #1

declare dso_local i64 @avcodec_send_eos(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @mmal_port_buffer_header_callback(i32*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
