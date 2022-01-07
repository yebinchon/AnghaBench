; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libopusenc.c_libopus_encode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libopusenc.c_libopus_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__, %struct.TYPE_19__, i32, i32*, i32* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i32** }

@AV_SAMPLE_FMT_FLT = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Error encoding frame: %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AV_PKT_DATA_SKIP_SAMPLES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, %struct.TYPE_22__*, %struct.TYPE_23__*, i32*)* @libopus_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libopus_encode(%struct.TYPE_24__* %0, %struct.TYPE_22__* %1, %struct.TYPE_23__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %6, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %7, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  store %struct.TYPE_21__* %19, %struct.TYPE_21__** %10, align 8
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @av_get_bytes_per_sample(i64 %22)
  store i32 %23, i32* %11, align 4
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %11, align 4
  %28 = mul nsw i32 %26, %27
  store i32 %28, i32* %12, align 4
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %30 = icmp ne %struct.TYPE_23__* %29, null
  br i1 %30, label %31, label %99

31:                                               ; preds = %4
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %35 = call i32 @ff_af_queue_add(%struct.TYPE_19__* %33, %struct.TYPE_23__* %34)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %14, align 4
  store i32 %39, i32* %5, align 4
  br label %257

40:                                               ; preds = %31
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 5
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %66

45:                                               ; preds = %40
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %13, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 1
  %52 = load i32**, i32*** %51, align 8
  %53 = getelementptr inbounds i32*, i32** %52, i64 0
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 5
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @libopus_copy_samples_with_channel_map(i32* %49, i32* %54, i32* %57, i32 %60, i32 %63, i32 %64)
  br label %98

66:                                               ; preds = %40
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %69, %73
  br i1 %74, label %75, label %91

75:                                               ; preds = %66
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 4
  %78 = load i32*, i32** %77, align 8
  store i32* %78, i32** %13, align 8
  %79 = load i32*, i32** %13, align 8
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 1
  %82 = load i32**, i32*** %81, align 8
  %83 = getelementptr inbounds i32*, i32** %82, i64 0
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %12, align 4
  %89 = mul nsw i32 %87, %88
  %90 = call i32 @memcpy(i32* %79, i32* %84, i32 %89)
  br label %97

91:                                               ; preds = %66
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 1
  %94 = load i32**, i32*** %93, align 8
  %95 = getelementptr inbounds i32*, i32** %94, i64 0
  %96 = load i32*, i32** %95, align 8
  store i32* %96, i32** %13, align 8
  br label %97

97:                                               ; preds = %91, %75
  br label %98

98:                                               ; preds = %97, %45
  br label %130

99:                                               ; preds = %4
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %99
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %105
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %111, %99
  store i32 0, i32* %5, align 4
  br label %257

118:                                              ; preds = %111, %105
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 4
  %121 = load i32*, i32** %120, align 8
  store i32* %121, i32** %13, align 8
  %122 = load i32*, i32** %13, align 8
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %12, align 4
  %128 = mul nsw i32 %126, %127
  %129 = call i32 @memset(i32* %122, i32 0, i32 %128)
  br label %130

130:                                              ; preds = %118, %98
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = mul nsw i32 7657, %135
  %137 = call i32 @ff_alloc_packet2(%struct.TYPE_24__* %131, %struct.TYPE_22__* %132, i32 %136, i32 0)
  store i32 %137, i32* %14, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %130
  %140 = load i32, i32* %14, align 4
  store i32 %140, i32* %5, align 4
  br label %257

141:                                              ; preds = %130
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @AV_SAMPLE_FMT_FLT, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %164

147:                                              ; preds = %141
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load i32*, i32** %13, align 8
  %152 = bitcast i32* %151 to float*
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @opus_multistream_encode_float(i32 %150, float* %152, i32 %156, i32 %159, i32 %162)
  store i32 %163, i32* %14, align 4
  br label %180

164:                                              ; preds = %141
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = load i32*, i32** %13, align 8
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @opus_multistream_encode(i32 %167, i32* %168, i32 %172, i32 %175, i32 %178)
  store i32 %179, i32* %14, align 4
  br label %180

180:                                              ; preds = %164, %147
  %181 = load i32, i32* %14, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %191

183:                                              ; preds = %180
  %184 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %185 = load i32, i32* @AV_LOG_ERROR, align 4
  %186 = load i32, i32* %14, align 4
  %187 = call i32 @opus_strerror(i32 %186)
  %188 = call i32 @av_log(%struct.TYPE_24__* %184, i32 %185, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %187)
  %189 = load i32, i32* %14, align 4
  %190 = call i32 @ff_opus_error_to_averror(i32 %189)
  store i32 %190, i32* %5, align 4
  br label %257

191:                                              ; preds = %180
  %192 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %193 = load i32, i32* %14, align 4
  %194 = call i32 @av_shrink_packet(%struct.TYPE_22__* %192, i32 %193)
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i32 0, i32 2
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %203, i32 0, i32 0
  %205 = call i32 @ff_af_queue_remove(%struct.TYPE_19__* %196, i32 %200, i32* %202, i32* %204)
  %206 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = sub nsw i32 %209, %212
  store i32 %213, i32* %15, align 4
  %214 = load i32, i32* %15, align 4
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = icmp slt i32 %214, %218
  %220 = zext i1 %219 to i32
  %221 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = icmp sgt i32 %223, 0
  %225 = zext i1 %224 to i32
  %226 = icmp ne i32 %220, %225
  br i1 %226, label %227, label %234

227:                                              ; preds = %191
  %228 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %229 = call i32 @av_packet_unref(%struct.TYPE_22__* %228)
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %231 = call i32 @av_free(%struct.TYPE_22__* %230)
  %232 = load i32, i32* @EINVAL, align 4
  %233 = call i32 @AVERROR(i32 %232)
  store i32 %233, i32* %5, align 4
  br label %257

234:                                              ; preds = %191
  %235 = load i32, i32* %15, align 4
  %236 = icmp sgt i32 %235, 0
  br i1 %236, label %237, label %255

237:                                              ; preds = %234
  %238 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %239 = load i32, i32* @AV_PKT_DATA_SKIP_SAMPLES, align 4
  %240 = call i32* @av_packet_new_side_data(%struct.TYPE_22__* %238, i32 %239, i32 10)
  store i32* %240, i32** %16, align 8
  %241 = load i32*, i32** %16, align 8
  %242 = icmp ne i32* %241, null
  br i1 %242, label %250, label %243

243:                                              ; preds = %237
  %244 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %245 = call i32 @av_packet_unref(%struct.TYPE_22__* %244)
  %246 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %247 = call i32 @av_free(%struct.TYPE_22__* %246)
  %248 = load i32, i32* @ENOMEM, align 4
  %249 = call i32 @AVERROR(i32 %248)
  store i32 %249, i32* %5, align 4
  br label %257

250:                                              ; preds = %237
  %251 = load i32*, i32** %16, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 4
  %253 = load i32, i32* %15, align 4
  %254 = call i32 @AV_WL32(i32* %252, i32 %253)
  br label %255

255:                                              ; preds = %250, %234
  %256 = load i32*, i32** %9, align 8
  store i32 1, i32* %256, align 4
  store i32 0, i32* %5, align 4
  br label %257

257:                                              ; preds = %255, %243, %227, %183, %139, %117, %38
  %258 = load i32, i32* %5, align 4
  ret i32 %258
}

declare dso_local i32 @av_get_bytes_per_sample(i64) #1

declare dso_local i32 @ff_af_queue_add(%struct.TYPE_19__*, %struct.TYPE_23__*) #1

declare dso_local i32 @libopus_copy_samples_with_channel_map(i32*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ff_alloc_packet2(%struct.TYPE_24__*, %struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @opus_multistream_encode_float(i32, float*, i32, i32, i32) #1

declare dso_local i32 @opus_multistream_encode(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_24__*, i32, i8*, i32) #1

declare dso_local i32 @opus_strerror(i32) #1

declare dso_local i32 @ff_opus_error_to_averror(i32) #1

declare dso_local i32 @av_shrink_packet(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ff_af_queue_remove(%struct.TYPE_19__*, i32, i32*, i32*) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_22__*) #1

declare dso_local i32 @av_free(%struct.TYPE_22__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32* @av_packet_new_side_data(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @AV_WL32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
