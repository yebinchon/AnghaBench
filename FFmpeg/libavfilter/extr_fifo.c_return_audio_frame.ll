; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_fifo.c_return_audio_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_fifo.c_return_audio_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32*, %struct.TYPE_22__*, %struct.TYPE_24__** }
%struct.TYPE_22__ = type { i32, %struct.TYPE_23__*, %struct.TYPE_21__ }
%struct.TYPE_23__ = type { i64, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_23__* }
%struct.TYPE_24__ = type { i64, i32, i32 }

@AVERROR_EOF = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"request_samples changed before the buffer was returned.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*)* @return_audio_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @return_audio_frame(%struct.TYPE_25__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  %11 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %13, i64 0
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  store %struct.TYPE_24__* %15, %struct.TYPE_24__** %4, align 8
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  store %struct.TYPE_22__* %18, %struct.TYPE_22__** %5, align 8
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %23 = icmp ne %struct.TYPE_20__* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %29, align 8
  br label %32

31:                                               ; preds = %1
  br label %32

32:                                               ; preds = %31, %24
  %33 = phi %struct.TYPE_23__* [ %30, %24 ], [ null, %31 ]
  store %struct.TYPE_23__* %33, %struct.TYPE_23__** %6, align 8
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %35 = icmp ne %struct.TYPE_23__* %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %32
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %40 = icmp ne %struct.TYPE_23__* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %42, i32* %2, align 4
  br label %302

43:                                               ; preds = %36, %32
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %45, align 8
  %47 = icmp ne %struct.TYPE_23__* %46, null
  br i1 %47, label %94, label %48

48:                                               ; preds = %43
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sge i64 %51, %54
  br i1 %55, label %56, label %94

56:                                               ; preds = %48
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %58 = call i32 @calc_ptr_alignment(%struct.TYPE_23__* %57)
  %59 = icmp sge i32 %58, 32
  br i1 %59, label %60, label %94

60:                                               ; preds = %56
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  store %struct.TYPE_23__* %69, %struct.TYPE_23__** %7, align 8
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %71 = call i32 @queue_pop(%struct.TYPE_22__* %70)
  br label %93

72:                                               ; preds = %60
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %74 = call %struct.TYPE_23__* @av_frame_clone(%struct.TYPE_23__* %73)
  store %struct.TYPE_23__* %74, %struct.TYPE_23__** %7, align 8
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %76 = icmp ne %struct.TYPE_23__* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = call i32 @AVERROR(i32 %78)
  store i32 %79, i32* %2, align 4
  br label %302

80:                                               ; preds = %72
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = call i32 @buffer_offset(%struct.TYPE_24__* %86, %struct.TYPE_23__* %87, i32 %91)
  br label %93

93:                                               ; preds = %80, %68
  br label %298

94:                                               ; preds = %56, %48, %43
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %9, align 4
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %99, align 8
  %101 = icmp ne %struct.TYPE_23__* %100, null
  br i1 %101, label %136, label %102

102:                                              ; preds = %94
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = call %struct.TYPE_23__* @ff_get_audio_buffer(%struct.TYPE_24__* %103, i32 %107)
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 1
  store %struct.TYPE_23__* %108, %struct.TYPE_23__** %110, align 8
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %112, align 8
  %114 = icmp ne %struct.TYPE_23__* %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %102
  %116 = load i32, i32* @ENOMEM, align 4
  %117 = call i32 @AVERROR(i32 %116)
  store i32 %117, i32* %2, align 4
  br label %302

118:                                              ; preds = %102
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 0
  store i64 0, i64* %122, align 8
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 2
  store i32 %125, i32* %129, align 4
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  br label %152

136:                                              ; preds = %94
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = icmp ne i64 %139, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %136
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %147 = load i32, i32* @AV_LOG_ERROR, align 4
  %148 = call i32 @av_log(%struct.TYPE_25__* %146, i32 %147, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %149 = load i32, i32* @EINVAL, align 4
  %150 = call i32 @AVERROR(i32 %149)
  store i32 %150, i32* %2, align 4
  br label %302

151:                                              ; preds = %136
  br label %152

152:                                              ; preds = %151, %118
  br label %153

153:                                              ; preds = %291, %152
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = sext i32 %161 to i64
  %163 = icmp slt i64 %158, %162
  br i1 %163, label %164, label %292

164:                                              ; preds = %153
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %167, align 8
  %169 = icmp ne %struct.TYPE_20__* %168, null
  br i1 %169, label %228, label %170

170:                                              ; preds = %164
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @ff_request_frame(i32 %175)
  store i32 %176, i32* %8, align 4
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* @AVERROR_EOF, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %214

180:                                              ; preds = %170
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = sext i32 %193 to i64
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = sub nsw i64 %194, %199
  %201 = load i32, i32* %9, align 4
  %202 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @av_samples_set_silence(i32 %185, i64 %190, i64 %200, i32 %201, i32 %204)
  %206 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = sext i32 %208 to i64
  %210 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_23__*, %struct.TYPE_23__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %212, i32 0, i32 0
  store i64 %209, i64* %213, align 8
  br label %292

214:                                              ; preds = %170
  %215 = load i32, i32* %8, align 4
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %214
  %218 = load i32, i32* %8, align 4
  store i32 %218, i32* %2, align 4
  br label %302

219:                                              ; preds = %214
  br label %220

220:                                              ; preds = %219
  %221 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %223, align 8
  %225 = icmp ne %struct.TYPE_20__* %224, null
  br i1 %225, label %227, label %226

226:                                              ; preds = %220
  store i32 0, i32* %2, align 4
  br label %302

227:                                              ; preds = %220
  br label %228

228:                                              ; preds = %227, %164
  %229 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %230, i32 0, i32 0
  %232 = load %struct.TYPE_20__*, %struct.TYPE_20__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_23__*, %struct.TYPE_23__** %233, align 8
  store %struct.TYPE_23__* %234, %struct.TYPE_23__** %6, align 8
  %235 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = sext i32 %237 to i64
  %239 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %239, i32 0, i32 1
  %241 = load %struct.TYPE_23__*, %struct.TYPE_23__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = sub nsw i64 %238, %243
  %245 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = call i32 @FFMIN(i64 %244, i64 %247)
  store i32 %248, i32* %10, align 4
  %249 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %249, i32 0, i32 1
  %251 = load %struct.TYPE_23__*, %struct.TYPE_23__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %257, i32 0, i32 1
  %259 = load %struct.TYPE_23__*, %struct.TYPE_23__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load i32, i32* %10, align 4
  %263 = load i32, i32* %9, align 4
  %264 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @av_samples_copy(i32 %253, i32 %256, i64 %261, i32 0, i32 %262, i32 %263, i32 %266)
  %268 = load i32, i32* %10, align 4
  %269 = sext i32 %268 to i64
  %270 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %270, i32 0, i32 1
  %272 = load %struct.TYPE_23__*, %struct.TYPE_23__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = add nsw i64 %274, %269
  store i64 %275, i64* %273, align 8
  %276 = load i32, i32* %10, align 4
  %277 = sext i32 %276 to i64
  %278 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = icmp eq i64 %277, %280
  br i1 %281, label %282, label %286

282:                                              ; preds = %228
  %283 = call i32 @av_frame_free(%struct.TYPE_23__** %6)
  %284 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %285 = call i32 @queue_pop(%struct.TYPE_22__* %284)
  br label %291

286:                                              ; preds = %228
  %287 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %288 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %289 = load i32, i32* %10, align 4
  %290 = call i32 @buffer_offset(%struct.TYPE_24__* %287, %struct.TYPE_23__* %288, i32 %289)
  br label %291

291:                                              ; preds = %286, %282
  br label %153

292:                                              ; preds = %180, %153
  %293 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %293, i32 0, i32 1
  %295 = load %struct.TYPE_23__*, %struct.TYPE_23__** %294, align 8
  store %struct.TYPE_23__* %295, %struct.TYPE_23__** %7, align 8
  %296 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %296, i32 0, i32 1
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %297, align 8
  br label %298

298:                                              ; preds = %292, %93
  %299 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %300 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %301 = call i32 @ff_filter_frame(%struct.TYPE_24__* %299, %struct.TYPE_23__* %300)
  store i32 %301, i32* %2, align 4
  br label %302

302:                                              ; preds = %298, %226, %217, %145, %115, %77, %41
  %303 = load i32, i32* %2, align 4
  ret i32 %303
}

declare dso_local i32 @calc_ptr_alignment(%struct.TYPE_23__*) #1

declare dso_local i32 @queue_pop(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_23__* @av_frame_clone(%struct.TYPE_23__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @buffer_offset(%struct.TYPE_24__*, %struct.TYPE_23__*, i32) #1

declare dso_local %struct.TYPE_23__* @ff_get_audio_buffer(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_25__*, i32, i8*) #1

declare dso_local i32 @ff_request_frame(i32) #1

declare dso_local i32 @av_samples_set_silence(i32, i64, i64, i32, i32) #1

declare dso_local i32 @FFMIN(i64, i64) #1

declare dso_local i32 @av_samples_copy(i32, i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_23__**) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
