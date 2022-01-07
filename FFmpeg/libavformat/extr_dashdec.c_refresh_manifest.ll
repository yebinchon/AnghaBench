; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_refresh_manifest.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_refresh_manifest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, i8*, %struct.representation**, %struct.representation**, %struct.representation** }
%struct.representation = type { i32, i64, i8*, i64 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"new manifest has mismatched no. of video representations, %d -> %d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"new manifest has mismatched no. of audio representations, %d -> %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"new manifest has mismatched no. of subtitles representations, %d -> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @refresh_manifest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @refresh_manifest(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.representation**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.representation**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.representation**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.representation*, align 8
  %15 = alloca %struct.representation*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.representation*, align 8
  %18 = alloca %struct.representation*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 0, i32* %4, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %6, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %7, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 4
  %28 = load %struct.representation**, %struct.representation*** %27, align 8
  store %struct.representation** %28, %struct.representation*** %8, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 5
  %34 = load %struct.representation**, %struct.representation*** %33, align 8
  store %struct.representation** %34, %struct.representation*** %10, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %11, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 6
  %40 = load %struct.representation**, %struct.representation*** %39, align 8
  store %struct.representation** %40, %struct.representation*** %12, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 3
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %13, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 3
  store i8* null, i8** %45, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 4
  store %struct.representation** null, %struct.representation*** %49, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  store i32 0, i32* %51, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 5
  store %struct.representation** null, %struct.representation*** %53, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  store i32 0, i32* %55, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 6
  store %struct.representation** null, %struct.representation*** %57, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @parse_manifest(%struct.TYPE_12__* %58, i32 %61, i32* null)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %1
  br label %244

66:                                               ; preds = %1
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %66
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %74 = load i32, i32* @AV_LOG_ERROR, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @av_log(%struct.TYPE_11__* %73, i32 %74, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %78)
  %80 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %80, i32* %2, align 4
  br label %300

81:                                               ; preds = %66
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %81
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %89 = load i32, i32* @AV_LOG_ERROR, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @av_log(%struct.TYPE_11__* %88, i32 %89, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32 %93)
  %95 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %95, i32* %2, align 4
  br label %300

96:                                               ; preds = %81
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %96
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %104 = load i32, i32* @AV_LOG_ERROR, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @av_log(%struct.TYPE_11__* %103, i32 %104, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i32 %105, i32 %108)
  %110 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %110, i32* %2, align 4
  br label %300

111:                                              ; preds = %96
  store i32 0, i32* %5, align 4
  br label %112

112:                                              ; preds = %174, %111
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %177

116:                                              ; preds = %112
  %117 = load %struct.representation**, %struct.representation*** %8, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.representation*, %struct.representation** %117, i64 %119
  %121 = load %struct.representation*, %struct.representation** %120, align 8
  store %struct.representation* %121, %struct.representation** %14, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 4
  %124 = load %struct.representation**, %struct.representation*** %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.representation*, %struct.representation** %124, i64 %126
  %128 = load %struct.representation*, %struct.representation** %127, align 8
  store %struct.representation* %128, %struct.representation** %15, align 8
  %129 = load %struct.representation*, %struct.representation** %14, align 8
  %130 = getelementptr inbounds %struct.representation, %struct.representation* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %163

133:                                              ; preds = %116
  %134 = load %struct.representation*, %struct.representation** %14, align 8
  %135 = load %struct.representation*, %struct.representation** %14, align 8
  %136 = getelementptr inbounds %struct.representation, %struct.representation* %135, i32 0, i32 2
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @get_segment_start_time_based_on_timeline(%struct.representation* %134, i8* %137)
  %139 = load %struct.representation*, %struct.representation** %14, align 8
  %140 = getelementptr inbounds %struct.representation, %struct.representation* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = sdiv i32 %138, %141
  store i32 %142, i32* %16, align 4
  %143 = load %struct.representation*, %struct.representation** %15, align 8
  %144 = load i32, i32* %16, align 4
  %145 = load %struct.representation*, %struct.representation** %14, align 8
  %146 = getelementptr inbounds %struct.representation, %struct.representation* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = mul nsw i32 %144, %147
  %149 = sub nsw i32 %148, 1
  %150 = call i8* @calc_next_seg_no_from_timelines(%struct.representation* %143, i32 %149)
  %151 = load %struct.representation*, %struct.representation** %15, align 8
  %152 = getelementptr inbounds %struct.representation, %struct.representation* %151, i32 0, i32 2
  store i8* %150, i8** %152, align 8
  %153 = load %struct.representation*, %struct.representation** %15, align 8
  %154 = getelementptr inbounds %struct.representation, %struct.representation* %153, i32 0, i32 2
  %155 = load i8*, i8** %154, align 8
  %156 = icmp uge i8* %155, null
  br i1 %156, label %157, label %162

157:                                              ; preds = %133
  %158 = load %struct.representation*, %struct.representation** %15, align 8
  %159 = load %struct.representation*, %struct.representation** %14, align 8
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %161 = call i32 @move_timelines(%struct.representation* %158, %struct.representation* %159, %struct.TYPE_11__* %160)
  br label %162

162:                                              ; preds = %157, %133
  br label %163

163:                                              ; preds = %162, %116
  %164 = load %struct.representation*, %struct.representation** %14, align 8
  %165 = getelementptr inbounds %struct.representation, %struct.representation* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %163
  %169 = load %struct.representation*, %struct.representation** %15, align 8
  %170 = load %struct.representation*, %struct.representation** %14, align 8
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %172 = call i32 @move_segments(%struct.representation* %169, %struct.representation* %170, %struct.TYPE_11__* %171)
  br label %173

173:                                              ; preds = %168, %163
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %5, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %5, align 4
  br label %112

177:                                              ; preds = %112
  store i32 0, i32* %5, align 4
  br label %178

178:                                              ; preds = %240, %177
  %179 = load i32, i32* %5, align 4
  %180 = load i32, i32* %9, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %243

182:                                              ; preds = %178
  %183 = load %struct.representation**, %struct.representation*** %10, align 8
  %184 = load i32, i32* %5, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.representation*, %struct.representation** %183, i64 %185
  %187 = load %struct.representation*, %struct.representation** %186, align 8
  store %struct.representation* %187, %struct.representation** %17, align 8
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 5
  %190 = load %struct.representation**, %struct.representation*** %189, align 8
  %191 = load i32, i32* %5, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.representation*, %struct.representation** %190, i64 %192
  %194 = load %struct.representation*, %struct.representation** %193, align 8
  store %struct.representation* %194, %struct.representation** %18, align 8
  %195 = load %struct.representation*, %struct.representation** %17, align 8
  %196 = getelementptr inbounds %struct.representation, %struct.representation* %195, i32 0, i32 3
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %229

199:                                              ; preds = %182
  %200 = load %struct.representation*, %struct.representation** %17, align 8
  %201 = load %struct.representation*, %struct.representation** %17, align 8
  %202 = getelementptr inbounds %struct.representation, %struct.representation* %201, i32 0, i32 2
  %203 = load i8*, i8** %202, align 8
  %204 = call i32 @get_segment_start_time_based_on_timeline(%struct.representation* %200, i8* %203)
  %205 = load %struct.representation*, %struct.representation** %17, align 8
  %206 = getelementptr inbounds %struct.representation, %struct.representation* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = sdiv i32 %204, %207
  store i32 %208, i32* %19, align 4
  %209 = load %struct.representation*, %struct.representation** %18, align 8
  %210 = load i32, i32* %19, align 4
  %211 = load %struct.representation*, %struct.representation** %17, align 8
  %212 = getelementptr inbounds %struct.representation, %struct.representation* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = mul nsw i32 %210, %213
  %215 = sub nsw i32 %214, 1
  %216 = call i8* @calc_next_seg_no_from_timelines(%struct.representation* %209, i32 %215)
  %217 = load %struct.representation*, %struct.representation** %18, align 8
  %218 = getelementptr inbounds %struct.representation, %struct.representation* %217, i32 0, i32 2
  store i8* %216, i8** %218, align 8
  %219 = load %struct.representation*, %struct.representation** %18, align 8
  %220 = getelementptr inbounds %struct.representation, %struct.representation* %219, i32 0, i32 2
  %221 = load i8*, i8** %220, align 8
  %222 = icmp uge i8* %221, null
  br i1 %222, label %223, label %228

223:                                              ; preds = %199
  %224 = load %struct.representation*, %struct.representation** %18, align 8
  %225 = load %struct.representation*, %struct.representation** %17, align 8
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %227 = call i32 @move_timelines(%struct.representation* %224, %struct.representation* %225, %struct.TYPE_11__* %226)
  br label %228

228:                                              ; preds = %223, %199
  br label %229

229:                                              ; preds = %228, %182
  %230 = load %struct.representation*, %struct.representation** %17, align 8
  %231 = getelementptr inbounds %struct.representation, %struct.representation* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %239

234:                                              ; preds = %229
  %235 = load %struct.representation*, %struct.representation** %18, align 8
  %236 = load %struct.representation*, %struct.representation** %17, align 8
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %238 = call i32 @move_segments(%struct.representation* %235, %struct.representation* %236, %struct.TYPE_11__* %237)
  br label %239

239:                                              ; preds = %234, %229
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* %5, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %5, align 4
  br label %178

243:                                              ; preds = %178
  br label %244

244:                                              ; preds = %243, %65
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 3
  %247 = load i8*, i8** %246, align 8
  %248 = icmp ne i8* %247, null
  br i1 %248, label %249, label %252

249:                                              ; preds = %244
  %250 = load i8*, i8** %13, align 8
  %251 = call i32 @av_free(i8* %250)
  br label %256

252:                                              ; preds = %244
  %253 = load i8*, i8** %13, align 8
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 3
  store i8* %253, i8** %255, align 8
  br label %256

256:                                              ; preds = %252, %249
  %257 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 6
  %259 = load %struct.representation**, %struct.representation*** %258, align 8
  %260 = icmp ne %struct.representation** %259, null
  br i1 %260, label %261, label %264

261:                                              ; preds = %256
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %263 = call i32 @free_subtitle_list(%struct.TYPE_11__* %262)
  br label %264

264:                                              ; preds = %261, %256
  %265 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 5
  %267 = load %struct.representation**, %struct.representation*** %266, align 8
  %268 = icmp ne %struct.representation** %267, null
  br i1 %268, label %269, label %272

269:                                              ; preds = %264
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %271 = call i32 @free_audio_list(%struct.TYPE_11__* %270)
  br label %272

272:                                              ; preds = %269, %264
  %273 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 4
  %275 = load %struct.representation**, %struct.representation*** %274, align 8
  %276 = icmp ne %struct.representation** %275, null
  br i1 %276, label %277, label %280

277:                                              ; preds = %272
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %279 = call i32 @free_video_list(%struct.TYPE_11__* %278)
  br label %280

280:                                              ; preds = %277, %272
  %281 = load i32, i32* %11, align 4
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 2
  store i32 %281, i32* %283, align 8
  %284 = load %struct.representation**, %struct.representation*** %12, align 8
  %285 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i32 0, i32 6
  store %struct.representation** %284, %struct.representation*** %286, align 8
  %287 = load i32, i32* %9, align 4
  %288 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i32 0, i32 1
  store i32 %287, i32* %289, align 4
  %290 = load %struct.representation**, %struct.representation*** %10, align 8
  %291 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %291, i32 0, i32 5
  store %struct.representation** %290, %struct.representation*** %292, align 8
  %293 = load i32, i32* %7, align 4
  %294 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 0
  store i32 %293, i32* %295, align 8
  %296 = load %struct.representation**, %struct.representation*** %8, align 8
  %297 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 4
  store %struct.representation** %296, %struct.representation*** %298, align 8
  %299 = load i32, i32* %4, align 4
  store i32 %299, i32* %2, align 4
  br label %300

300:                                              ; preds = %280, %102, %87, %72
  %301 = load i32, i32* %2, align 4
  ret i32 %301
}

declare dso_local i32 @parse_manifest(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*, i32, i32) #1

declare dso_local i32 @get_segment_start_time_based_on_timeline(%struct.representation*, i8*) #1

declare dso_local i8* @calc_next_seg_no_from_timelines(%struct.representation*, i32) #1

declare dso_local i32 @move_timelines(%struct.representation*, %struct.representation*, %struct.TYPE_11__*) #1

declare dso_local i32 @move_segments(%struct.representation*, %struct.representation*, %struct.TYPE_11__*) #1

declare dso_local i32 @av_free(i8*) #1

declare dso_local i32 @free_subtitle_list(%struct.TYPE_11__*) #1

declare dso_local i32 @free_audio_list(%struct.TYPE_11__*) #1

declare dso_local i32 @free_video_list(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
