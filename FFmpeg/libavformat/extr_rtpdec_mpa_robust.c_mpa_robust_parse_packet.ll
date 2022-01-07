; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_mpa_robust.c_mpa_robust_parse_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_mpa_robust.c_mpa_robust_parse_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32, i32, i64, i32, i32* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32*, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Invalid frame\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Received packet without a start fragment; dropping.\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Invalid packet received\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Error occurred when getting fragment buffer.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_10__*, %struct.TYPE_11__*, %struct.TYPE_12__*, i64*, i32*, i32, i32, i32)* @mpa_robust_parse_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpa_robust_parse_packet(i32* %0, %struct.TYPE_10__* %1, %struct.TYPE_11__* %2, %struct.TYPE_12__* %3, i64* %4, i32* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %14, align 8
  store i64* %4, i64** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %24 = load i32*, i32** %16, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %120, label %26

26:                                               ; preds = %9
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 6
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  store i32* %33, i32** %16, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub i64 %37, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %17, align 4
  %43 = load i32*, i32** %11, align 8
  %44 = load i32*, i32** %16, align 8
  %45 = load i32, i32* %17, align 4
  %46 = call i32 @mpa_robust_parse_rtp_header(i32* %43, i32* %44, i32 %45, i32* %20, i32* %21)
  store i32 %46, i32* %23, align 4
  %47 = load i32, i32* %23, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %26
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 6
  %52 = call i32 @av_freep(i32** %51)
  %53 = load i32, i32* %23, align 4
  store i32 %53, i32* %10, align 4
  br label %313

54:                                               ; preds = %26
  %55 = load i32, i32* %23, align 4
  %56 = load i32*, i32** %16, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32* %58, i32** %16, align 8
  %59 = load i32, i32* %23, align 4
  %60 = load i32, i32* %17, align 4
  %61 = sub nsw i32 %60, %59
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %21, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %54
  %65 = load i32, i32* %20, align 4
  %66 = load i32, i32* %17, align 4
  %67 = icmp ugt i32 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %64, %54
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 6
  %71 = call i32 @av_freep(i32** %70)
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* @AV_LOG_ERROR, align 4
  %74 = call i32 @av_log(i32* %72, i32 %73, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %75, i32* %10, align 4
  br label %313

76:                                               ; preds = %64
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %78 = load i32, i32* %20, align 4
  %79 = call i64 @av_new_packet(%struct.TYPE_12__* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load i32*, i32** %11, align 8
  %83 = load i32, i32* @AV_LOG_ERROR, align 4
  %84 = call i32 @av_log(i32* %82, i32 %83, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = call i32 @AVERROR(i32 %85)
  store i32 %86, i32* %10, align 4
  br label %313

87:                                               ; preds = %76
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32*, i32** %16, align 8
  %97 = load i32, i32* %20, align 4
  %98 = call i32 @memcpy(i32* %95, i32* %96, i32 %97)
  %99 = load i32, i32* %23, align 4
  %100 = load i32, i32* %20, align 4
  %101 = add i32 %99, %100
  %102 = zext i32 %101 to i64
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add i64 %105, %102
  store i64 %106, i64* %104, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = icmp eq i64 %109, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %87
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 6
  %118 = call i32 @av_freep(i32** %117)
  store i32 0, i32* %10, align 4
  br label %313

119:                                              ; preds = %87
  store i32 1, i32* %10, align 4
  br label %313

120:                                              ; preds = %9
  %121 = load i32*, i32** %11, align 8
  %122 = load i32*, i32** %16, align 8
  %123 = load i32, i32* %17, align 4
  %124 = call i32 @mpa_robust_parse_rtp_header(i32* %121, i32* %122, i32 %123, i32* %20, i32* %21)
  store i32 %124, i32* %23, align 4
  %125 = load i32, i32* %23, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %120
  %128 = load i32, i32* %23, align 4
  store i32 %128, i32* %10, align 4
  br label %313

129:                                              ; preds = %120
  %130 = load i32, i32* %23, align 4
  %131 = load i32*, i32** %16, align 8
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  store i32* %133, i32** %16, align 8
  %134 = load i32, i32* %23, align 4
  %135 = load i32, i32* %17, align 4
  %136 = sub nsw i32 %135, %134
  store i32 %136, i32* %17, align 4
  %137 = load i32, i32* %21, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %209, label %139

139:                                              ; preds = %129
  %140 = load i32, i32* %20, align 4
  %141 = load i32, i32* %17, align 4
  %142 = icmp ule i32 %140, %141
  br i1 %142, label %143, label %209

143:                                              ; preds = %139
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %145 = load i32, i32* %20, align 4
  %146 = call i64 @av_new_packet(%struct.TYPE_12__* %144, i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %143
  %149 = load i32*, i32** %11, align 8
  %150 = load i32, i32* @AV_LOG_ERROR, align 4
  %151 = call i32 @av_log(i32* %149, i32 %150, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %152 = load i32, i32* @ENOMEM, align 4
  %153 = call i32 @AVERROR(i32 %152)
  store i32 %153, i32* %10, align 4
  br label %313

154:                                              ; preds = %143
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 8
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = load i32*, i32** %16, align 8
  %164 = load i32, i32* %20, align 4
  %165 = call i32 @memcpy(i32* %162, i32* %163, i32 %164)
  %166 = load i32, i32* %20, align 4
  %167 = load i32*, i32** %16, align 8
  %168 = zext i32 %166 to i64
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  store i32* %169, i32** %16, align 8
  %170 = load i32, i32* %20, align 4
  %171 = load i32, i32* %17, align 4
  %172 = sub i32 %171, %170
  store i32 %172, i32* %17, align 4
  %173 = load i32, i32* %17, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %208

175:                                              ; preds = %154
  %176 = load i32, i32* %17, align 4
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 8
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = call i32* @av_malloc(i32 %181)
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 6
  store i32* %182, i32** %184, align 8
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  store i64 0, i64* %186, align 8
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 6
  %189 = load i32*, i32** %188, align 8
  %190 = icmp ne i32* %189, null
  br i1 %190, label %199, label %191

191:                                              ; preds = %175
  %192 = load i32*, i32** %11, align 8
  %193 = load i32, i32* @AV_LOG_ERROR, align 4
  %194 = call i32 @av_log(i32* %192, i32 %193, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %196 = call i32 @av_packet_unref(%struct.TYPE_12__* %195)
  %197 = load i32, i32* @ENOMEM, align 4
  %198 = call i32 @AVERROR(i32 %197)
  store i32 %198, i32* %10, align 4
  br label %313

199:                                              ; preds = %175
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 6
  %202 = load i32*, i32** %201, align 8
  %203 = load i32*, i32** %16, align 8
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @memcpy(i32* %202, i32* %203, i32 %206)
  store i32 1, i32* %10, align 4
  br label %313

208:                                              ; preds = %154
  store i32 0, i32* %10, align 4
  br label %313

209:                                              ; preds = %139, %129
  %210 = load i32, i32* %21, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %242, label %212

212:                                              ; preds = %209
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 5
  %215 = call i32 @ffio_free_dyn_buf(i32* %214)
  %216 = load i32, i32* %20, align 4
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 2
  store i32 %216, i32* %218, align 4
  %219 = load i32, i32* %17, align 4
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 3
  store i32 %219, i32* %221, align 8
  %222 = load i64*, i64** %15, align 8
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 4
  store i64 %223, i64* %225, align 8
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 5
  %228 = call i32 @avio_open_dyn_buf(i32* %227)
  store i32 %228, i32* %22, align 4
  %229 = load i32, i32* %22, align 4
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %212
  %232 = load i32, i32* %22, align 4
  store i32 %232, i32* %10, align 4
  br label %313

233:                                              ; preds = %212
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 5
  %236 = load i32, i32* %235, align 8
  %237 = load i32*, i32** %16, align 8
  %238 = load i32, i32* %17, align 4
  %239 = call i32 @avio_write(i32 %236, i32* %237, i32 %238)
  %240 = load i32, i32* @EAGAIN, align 4
  %241 = call i32 @AVERROR(i32 %240)
  store i32 %241, i32* %10, align 4
  br label %313

242:                                              ; preds = %209
  br label %243

243:                                              ; preds = %242
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 5
  %246 = load i32, i32* %245, align 8
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %254, label %248

248:                                              ; preds = %243
  %249 = load i32*, i32** %11, align 8
  %250 = load i32, i32* @AV_LOG_WARNING, align 4
  %251 = call i32 @av_log(i32* %249, i32 %250, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %252 = load i32, i32* @EAGAIN, align 4
  %253 = call i32 @AVERROR(i32 %252)
  store i32 %253, i32* %10, align 4
  br label %313

254:                                              ; preds = %243
  %255 = load i32, i32* %20, align 4
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 4
  %259 = icmp ne i32 %255, %258
  br i1 %259, label %267, label %260

260:                                              ; preds = %254
  %261 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 4
  %263 = load i64, i64* %262, align 8
  %264 = load i64*, i64** %15, align 8
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %263, %265
  br i1 %266, label %267, label %275

267:                                              ; preds = %260, %254
  %268 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 5
  %270 = call i32 @ffio_free_dyn_buf(i32* %269)
  %271 = load i32*, i32** %11, align 8
  %272 = load i32, i32* @AV_LOG_ERROR, align 4
  %273 = call i32 @av_log(i32* %271, i32 %272, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %274 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %274, i32* %10, align 4
  br label %313

275:                                              ; preds = %260
  %276 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 5
  %278 = load i32, i32* %277, align 8
  %279 = load i32*, i32** %16, align 8
  %280 = load i32, i32* %17, align 4
  %281 = call i32 @avio_write(i32 %278, i32* %279, i32 %280)
  %282 = load i32, i32* %17, align 4
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 8
  %286 = add nsw i32 %285, %282
  store i32 %286, i32* %284, align 8
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 4
  %293 = icmp ult i32 %289, %292
  br i1 %293, label %294, label %297

294:                                              ; preds = %275
  %295 = load i32, i32* @EAGAIN, align 4
  %296 = call i32 @AVERROR(i32 %295)
  store i32 %296, i32* %10, align 4
  br label %313

297:                                              ; preds = %275
  %298 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %299 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %300 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %299, i32 0, i32 5
  %301 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = call i32 @ff_rtp_finalize_packet(%struct.TYPE_12__* %298, i32* %300, i32 %303)
  store i32 %304, i32* %22, align 4
  %305 = load i32, i32* %22, align 4
  %306 = icmp slt i32 %305, 0
  br i1 %306, label %307, label %312

307:                                              ; preds = %297
  %308 = load i32*, i32** %11, align 8
  %309 = load i32, i32* @AV_LOG_ERROR, align 4
  %310 = call i32 @av_log(i32* %308, i32 %309, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %311 = load i32, i32* %22, align 4
  store i32 %311, i32* %10, align 4
  br label %313

312:                                              ; preds = %297
  store i32 0, i32* %10, align 4
  br label %313

313:                                              ; preds = %312, %307, %294, %267, %248, %233, %231, %208, %199, %191, %148, %127, %119, %115, %81, %68, %49
  %314 = load i32, i32* %10, align 4
  ret i32 %314
}

declare dso_local i32 @mpa_robust_parse_rtp_header(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @av_freep(i32**) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i64 @av_new_packet(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32* @av_malloc(i32) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_12__*) #1

declare dso_local i32 @ffio_free_dyn_buf(i32*) #1

declare dso_local i32 @avio_open_dyn_buf(i32*) #1

declare dso_local i32 @avio_write(i32, i32*, i32) #1

declare dso_local i32 @ff_rtp_finalize_packet(%struct.TYPE_12__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
