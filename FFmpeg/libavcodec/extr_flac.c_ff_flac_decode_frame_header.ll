; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flac.c_ff_flac_decode_frame_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flac.c_ff_flac_decode_frame_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i64, i32, i32, i32, i64 }

@AV_LOG_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"invalid sync code\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@FLAC_MAX_CHANNELS = common dso_local global i32 0, align 4
@FLAC_CHMODE_INDEPENDENT = common dso_local global i32 0, align 4
@FLAC_CHMODE_MID_SIDE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"invalid channel mode: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"invalid sample size code (%d)\0A\00", align 1
@sample_size_table = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"broken stream, invalid padding\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"sample/frame number invalid; utf8 fscked\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"reserved blocksize code: 0\0A\00", align 1
@ff_flac_blocksize_table = common dso_local global i32* null, align 8
@ff_flac_sample_rate_table = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"illegal sample rate code %d\0A\00", align 1
@AV_CRC_8_ATM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"header crc mismatch\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_flac_decode_frame_header(i32* %0, %struct.TYPE_10__* %1, %struct.TYPE_11__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %14 = call i32 @get_bits(%struct.TYPE_10__* %13, i32 15)
  %15 = and i32 %14, 32767
  %16 = icmp ne i32 %15, 32764
  br i1 %16, label %17, label %25

17:                                               ; preds = %4
  %18 = load i32*, i32** %6, align 8
  %19 = load i64, i64* @AV_LOG_ERROR, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = call i32 (i32*, i64, i8*, ...) @av_log(i32* %18, i64 %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %24, i32* %5, align 4
  br label %245

25:                                               ; preds = %4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %27 = call i64 @get_bits1(%struct.TYPE_10__* %26)
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 6
  store i64 %27, i64* %29, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %31 = call i32 @get_bits(%struct.TYPE_10__* %30, i32 4)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %33 = call i32 @get_bits(%struct.TYPE_10__* %32, i32 4)
  store i32 %33, i32* %11, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %35 = call i32 @get_bits(%struct.TYPE_10__* %34, i32 4)
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @FLAC_MAX_CHANNELS, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %25
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @FLAC_CHMODE_INDEPENDENT, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  br label %82

53:                                               ; preds = %25
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @FLAC_MAX_CHANNELS, align 4
  %58 = load i32, i32* @FLAC_CHMODE_MID_SIDE, align 4
  %59 = add nsw i32 %57, %58
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %53
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  store i32 2, i32* %63, align 4
  %64 = load i32, i32* @FLAC_MAX_CHANNELS, align 4
  %65 = sub nsw i32 %64, 1
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sub nsw i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %81

70:                                               ; preds = %53
  %71 = load i32*, i32** %6, align 8
  %72 = load i64, i64* @AV_LOG_ERROR, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %72, %74
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (i32*, i64, i8*, ...) @av_log(i32* %71, i64 %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %80, i32* %5, align 4
  br label %245

81:                                               ; preds = %61
  br label %82

82:                                               ; preds = %81, %43
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %84 = call i32 @get_bits(%struct.TYPE_10__* %83, i32 3)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp eq i32 %85, 3
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* %12, align 4
  %89 = icmp eq i32 %88, 7
  br i1 %89, label %90, label %99

90:                                               ; preds = %87, %82
  %91 = load i32*, i32** %6, align 8
  %92 = load i64, i64* @AV_LOG_ERROR, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %92, %94
  %96 = load i32, i32* %12, align 4
  %97 = call i32 (i32*, i64, i8*, ...) @av_log(i32* %91, i64 %95, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %98, i32* %5, align 4
  br label %245

99:                                               ; preds = %87
  %100 = load i32*, i32** @sample_size_table, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 5
  store i32 %104, i32* %106, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %108 = call i64 @get_bits1(%struct.TYPE_10__* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %99
  %111 = load i32*, i32** %6, align 8
  %112 = load i64, i64* @AV_LOG_ERROR, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %112, %114
  %116 = call i32 (i32*, i64, i8*, ...) @av_log(i32* %111, i64 %115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %117 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %117, i32* %5, align 4
  br label %245

118:                                              ; preds = %99
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %120 = call i64 @get_utf8(%struct.TYPE_10__* %119)
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 2
  store i64 %120, i64* %122, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp slt i64 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %118
  %128 = load i32*, i32** %6, align 8
  %129 = load i64, i64* @AV_LOG_ERROR, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %129, %131
  %133 = call i32 (i32*, i64, i8*, ...) @av_log(i32* %128, i64 %132, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %134 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %134, i32* %5, align 4
  br label %245

135:                                              ; preds = %118
  %136 = load i32, i32* %10, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %135
  %139 = load i32*, i32** %6, align 8
  %140 = load i64, i64* @AV_LOG_ERROR, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %140, %142
  %144 = call i32 (i32*, i64, i8*, ...) @av_log(i32* %139, i64 %143, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %145 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %145, i32* %5, align 4
  br label %245

146:                                              ; preds = %135
  %147 = load i32, i32* %10, align 4
  %148 = icmp eq i32 %147, 6
  br i1 %148, label %149, label %155

149:                                              ; preds = %146
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %151 = call i32 @get_bits(%struct.TYPE_10__* %150, i32 8)
  %152 = add nsw i32 %151, 1
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 3
  store i32 %152, i32* %154, align 8
  br label %173

155:                                              ; preds = %146
  %156 = load i32, i32* %10, align 4
  %157 = icmp eq i32 %156, 7
  br i1 %157, label %158, label %164

158:                                              ; preds = %155
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %160 = call i32 @get_bits(%struct.TYPE_10__* %159, i32 16)
  %161 = add nsw i32 %160, 1
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 3
  store i32 %161, i32* %163, align 8
  br label %172

164:                                              ; preds = %155
  %165 = load i32*, i32** @ff_flac_blocksize_table, align 8
  %166 = load i32, i32* %10, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 3
  store i32 %169, i32* %171, align 8
  br label %172

172:                                              ; preds = %164, %158
  br label %173

173:                                              ; preds = %172, %149
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %11, align 4
  %176 = icmp slt i32 %175, 12
  br i1 %176, label %177, label %185

177:                                              ; preds = %174
  %178 = load i32*, i32** @ff_flac_sample_rate_table, align 8
  %179 = load i32, i32* %11, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 4
  store i32 %182, i32* %184, align 4
  br label %223

185:                                              ; preds = %174
  %186 = load i32, i32* %11, align 4
  %187 = icmp eq i32 %186, 12
  br i1 %187, label %188, label %194

188:                                              ; preds = %185
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %190 = call i32 @get_bits(%struct.TYPE_10__* %189, i32 8)
  %191 = mul nsw i32 %190, 1000
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 4
  store i32 %191, i32* %193, align 4
  br label %222

194:                                              ; preds = %185
  %195 = load i32, i32* %11, align 4
  %196 = icmp eq i32 %195, 13
  br i1 %196, label %197, label %202

197:                                              ; preds = %194
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %199 = call i32 @get_bits(%struct.TYPE_10__* %198, i32 16)
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 4
  store i32 %199, i32* %201, align 4
  br label %221

202:                                              ; preds = %194
  %203 = load i32, i32* %11, align 4
  %204 = icmp eq i32 %203, 14
  br i1 %204, label %205, label %211

205:                                              ; preds = %202
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %207 = call i32 @get_bits(%struct.TYPE_10__* %206, i32 16)
  %208 = mul nsw i32 %207, 10
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 4
  store i32 %208, i32* %210, align 4
  br label %220

211:                                              ; preds = %202
  %212 = load i32*, i32** %6, align 8
  %213 = load i64, i64* @AV_LOG_ERROR, align 8
  %214 = load i32, i32* %9, align 4
  %215 = sext i32 %214 to i64
  %216 = add nsw i64 %213, %215
  %217 = load i32, i32* %11, align 4
  %218 = call i32 (i32*, i64, i8*, ...) @av_log(i32* %212, i64 %216, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %217)
  %219 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %219, i32* %5, align 4
  br label %245

220:                                              ; preds = %205
  br label %221

221:                                              ; preds = %220, %197
  br label %222

222:                                              ; preds = %221, %188
  br label %223

223:                                              ; preds = %222, %177
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %225 = call i32 @skip_bits(%struct.TYPE_10__* %224, i32 8)
  %226 = load i32, i32* @AV_CRC_8_ATM, align 4
  %227 = call i32 @av_crc_get_table(i32 %226)
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %232 = call i32 @get_bits_count(%struct.TYPE_10__* %231)
  %233 = sdiv i32 %232, 8
  %234 = call i64 @av_crc(i32 %227, i32 0, i32 %230, i32 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %244

236:                                              ; preds = %223
  %237 = load i32*, i32** %6, align 8
  %238 = load i64, i64* @AV_LOG_ERROR, align 8
  %239 = load i32, i32* %9, align 4
  %240 = sext i32 %239 to i64
  %241 = add nsw i64 %238, %240
  %242 = call i32 (i32*, i64, i8*, ...) @av_log(i32* %237, i64 %241, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %243 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %243, i32* %5, align 4
  br label %245

244:                                              ; preds = %223
  store i32 0, i32* %5, align 4
  br label %245

245:                                              ; preds = %244, %236, %211, %138, %127, %110, %90, %70, %17
  %246 = load i32, i32* %5, align 4
  ret i32 %246
}

declare dso_local i32 @get_bits(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @av_log(i32*, i64, i8*, ...) #1

declare dso_local i64 @get_bits1(%struct.TYPE_10__*) #1

declare dso_local i64 @get_utf8(%struct.TYPE_10__*) #1

declare dso_local i32 @skip_bits(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @av_crc(i32, i32, i32, i32) #1

declare dso_local i32 @av_crc_get_table(i32) #1

declare dso_local i32 @get_bits_count(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
