; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvbsubdec.c_dvbsub_decode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvbsubdec.c_dvbsub_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32*, i32 }
%struct.TYPE_19__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"DVB sub packet:\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"incomplete or broken packet\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@FF_DEBUG_STARTCODE = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"segment_type:%d page_id:%d segment_length:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"Subtitling segment type 0x%x, page id %d, length %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Missing display_end_segment, emulating\0A\00", align 1
@int64_t = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, i8*, i32*, %struct.TYPE_20__*)* @dvbsub_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvbsub_decode(%struct.TYPE_21__* %0, i8* %1, i32* %2, %struct.TYPE_20__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_20__* %3, %struct.TYPE_20__** %9, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %10, align 8
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %11, align 4
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  store %struct.TYPE_18__* %32, %struct.TYPE_18__** %12, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = bitcast i8* %33 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %34, %struct.TYPE_19__** %13, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %36 = call i32 (%struct.TYPE_21__*, i8*, ...) @ff_dlog(%struct.TYPE_21__* %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %19, align 4
  br label %37

37:                                               ; preds = %56, %4
  %38 = load i32, i32* %19, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* %19, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (%struct.TYPE_21__*, i8*, ...) @ff_dlog(%struct.TYPE_21__* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %19, align 4
  %50 = srem i32 %49, 16
  %51 = icmp eq i32 %50, 15
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %54 = call i32 (%struct.TYPE_21__*, i8*, ...) @ff_dlog(%struct.TYPE_21__* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %41
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %19, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %19, align 4
  br label %37

59:                                               ; preds = %37
  %60 = load i32, i32* %19, align 4
  %61 = srem i32 %60, 16
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %65 = call i32 (%struct.TYPE_21__*, i8*, ...) @ff_dlog(%struct.TYPE_21__* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %59
  %67 = load i32, i32* %11, align 4
  %68 = icmp sle i32 %67, 6
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 15
  br i1 %72, label %73, label %77

73:                                               ; preds = %69, %66
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %75 = call i32 (%struct.TYPE_21__*, i8*, ...) @ff_dlog(%struct.TYPE_21__* %74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %76 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %76, i32* %5, align 4
  br label %290

77:                                               ; preds = %69
  %78 = load i32*, i32** %10, align 8
  store i32* %78, i32** %14, align 8
  %79 = load i32*, i32** %10, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32* %82, i32** %15, align 8
  br label %83

83:                                               ; preds = %241, %77
  %84 = load i32*, i32** %15, align 8
  %85 = load i32*, i32** %14, align 8
  %86 = ptrtoint i32* %84 to i64
  %87 = ptrtoint i32* %85 to i64
  %88 = sub i64 %86, %87
  %89 = sdiv exact i64 %88, 4
  %90 = icmp sge i64 %89, 6
  br i1 %90, label %91, label %95

91:                                               ; preds = %83
  %92 = load i32*, i32** %14, align 8
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 15
  br label %95

95:                                               ; preds = %91, %83
  %96 = phi i1 [ false, %83 ], [ %94, %91 ]
  br i1 %96, label %97, label %246

97:                                               ; preds = %95
  %98 = load i32*, i32** %14, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  store i32* %99, i32** %14, align 8
  %100 = load i32*, i32** %14, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %14, align 8
  %102 = load i32, i32* %100, align 4
  store i32 %102, i32* %16, align 4
  %103 = load i32*, i32** %14, align 8
  %104 = call i32 @AV_RB16(i32* %103)
  store i32 %104, i32* %17, align 4
  %105 = load i32*, i32** %14, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  store i32* %106, i32** %14, align 8
  %107 = load i32*, i32** %14, align 8
  %108 = call i32 @AV_RB16(i32* %107)
  store i32 %108, i32* %18, align 4
  %109 = load i32*, i32** %14, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 2
  store i32* %110, i32** %14, align 8
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @FF_DEBUG_STARTCODE, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %97
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %119 = load i32, i32* @AV_LOG_DEBUG, align 4
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* %17, align 4
  %122 = load i32, i32* %18, align 4
  %123 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %118, i32 %119, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %120, i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %117, %97
  %125 = load i32*, i32** %15, align 8
  %126 = load i32*, i32** %14, align 8
  %127 = ptrtoint i32* %125 to i64
  %128 = ptrtoint i32* %126 to i64
  %129 = sub i64 %127, %128
  %130 = sdiv exact i64 %129, 4
  %131 = load i32, i32* %18, align 4
  %132 = sext i32 %131 to i64
  %133 = icmp slt i64 %130, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %124
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %136 = call i32 (%struct.TYPE_21__*, i8*, ...) @ff_dlog(%struct.TYPE_21__* %135, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %20, align 4
  br label %259

137:                                              ; preds = %124
  %138 = load i32, i32* %17, align 4
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %138, %141
  br i1 %142, label %159, label %143

143:                                              ; preds = %137
  %144 = load i32, i32* %17, align 4
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %144, %147
  br i1 %148, label %159, label %149

149:                                              ; preds = %143
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %152, -1
  br i1 %153, label %159, label %154

154:                                              ; preds = %149
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %157, -1
  br i1 %158, label %159, label %241

159:                                              ; preds = %154, %149, %143, %137
  store i32 0, i32* %23, align 4
  %160 = load i32, i32* %16, align 4
  switch i32 %160, label %230 [
    i32 129, label %161
    i32 128, label %170
    i32 133, label %177
    i32 130, label %188
    i32 132, label %195
    i32 131, label %200
  ]

161:                                              ; preds = %159
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %163 = load i32*, i32** %14, align 8
  %164 = load i32, i32* %18, align 4
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %166 = load i32*, i32** %8, align 8
  %167 = call i32 @dvbsub_parse_page_segment(%struct.TYPE_21__* %162, i32* %163, i32 %164, %struct.TYPE_19__* %165, i32* %166)
  store i32 %167, i32* %23, align 4
  %168 = load i32, i32* %21, align 4
  %169 = or i32 %168, 1
  store i32 %169, i32* %21, align 4
  br label %236

170:                                              ; preds = %159
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %172 = load i32*, i32** %14, align 8
  %173 = load i32, i32* %18, align 4
  %174 = call i32 @dvbsub_parse_region_segment(%struct.TYPE_21__* %171, i32* %172, i32 %173)
  store i32 %174, i32* %23, align 4
  %175 = load i32, i32* %21, align 4
  %176 = or i32 %175, 2
  store i32 %176, i32* %21, align 4
  br label %236

177:                                              ; preds = %159
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %179 = load i32*, i32** %14, align 8
  %180 = load i32, i32* %18, align 4
  %181 = call i32 @dvbsub_parse_clut_segment(%struct.TYPE_21__* %178, i32* %179, i32 %180)
  store i32 %181, i32* %23, align 4
  %182 = load i32, i32* %23, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %177
  br label %259

185:                                              ; preds = %177
  %186 = load i32, i32* %21, align 4
  %187 = or i32 %186, 4
  store i32 %187, i32* %21, align 4
  br label %236

188:                                              ; preds = %159
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %190 = load i32*, i32** %14, align 8
  %191 = load i32, i32* %18, align 4
  %192 = call i32 @dvbsub_parse_object_segment(%struct.TYPE_21__* %189, i32* %190, i32 %191)
  store i32 %192, i32* %23, align 4
  %193 = load i32, i32* %21, align 4
  %194 = or i32 %193, 8
  store i32 %194, i32* %21, align 4
  br label %236

195:                                              ; preds = %159
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %197 = load i32*, i32** %14, align 8
  %198 = load i32, i32* %18, align 4
  %199 = call i32 @dvbsub_parse_display_definition_segment(%struct.TYPE_21__* %196, i32* %197, i32 %198)
  store i32 %199, i32* %23, align 4
  store i32 1, i32* %22, align 4
  br label %236

200:                                              ; preds = %159
  %201 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %202 = load i32*, i32** %14, align 8
  %203 = load i32, i32* %18, align 4
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %205 = load i32*, i32** %8, align 8
  %206 = call i32 @dvbsub_display_end_segment(%struct.TYPE_21__* %201, i32* %202, i32 %203, %struct.TYPE_19__* %204, i32* %205)
  store i32 %206, i32* %23, align 4
  %207 = load i32, i32* %21, align 4
  %208 = icmp eq i32 %207, 15
  br i1 %208, label %209, label %227

209:                                              ; preds = %200
  %210 = load i32, i32* %22, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %227, label %212

212:                                              ; preds = %209
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %227, label %217

217:                                              ; preds = %212
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %227, label %222

222:                                              ; preds = %217
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %223, i32 0, i32 1
  store i32 720, i32* %224, align 4
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 2
  store i32 576, i32* %226, align 8
  br label %227

227:                                              ; preds = %222, %217, %212, %209, %200
  %228 = load i32, i32* %21, align 4
  %229 = or i32 %228, 16
  store i32 %229, i32* %21, align 4
  br label %236

230:                                              ; preds = %159
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %232 = load i32, i32* %16, align 4
  %233 = load i32, i32* %17, align 4
  %234 = load i32, i32* %18, align 4
  %235 = call i32 (%struct.TYPE_21__*, i8*, ...) @ff_dlog(%struct.TYPE_21__* %231, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %232, i32 %233, i32 %234)
  br label %236

236:                                              ; preds = %230, %227, %195, %188, %185, %170, %161
  %237 = load i32, i32* %23, align 4
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %236
  br label %259

240:                                              ; preds = %236
  br label %241

241:                                              ; preds = %240, %154
  %242 = load i32, i32* %18, align 4
  %243 = load i32*, i32** %14, align 8
  %244 = sext i32 %242 to i64
  %245 = getelementptr inbounds i32, i32* %243, i64 %244
  store i32* %245, i32** %14, align 8
  br label %83

246:                                              ; preds = %95
  %247 = load i32, i32* %21, align 4
  %248 = icmp eq i32 %247, 15
  br i1 %248, label %249, label %258

249:                                              ; preds = %246
  %250 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %251 = load i32, i32* @AV_LOG_DEBUG, align 4
  %252 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %250, i32 %251, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %253 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %254 = load i32*, i32** %14, align 8
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %256 = load i32*, i32** %8, align 8
  %257 = call i32 @dvbsub_display_end_segment(%struct.TYPE_21__* %253, i32* %254, i32 0, %struct.TYPE_19__* %255, i32* %256)
  br label %258

258:                                              ; preds = %249, %246
  br label %259

259:                                              ; preds = %258, %239, %184, %134
  %260 = load i32, i32* %20, align 4
  %261 = icmp slt i32 %260, 0
  br i1 %261, label %262, label %267

262:                                              ; preds = %259
  %263 = load i32*, i32** %8, align 8
  store i32 0, i32* %263, align 4
  %264 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %265 = call i32 @avsubtitle_free(%struct.TYPE_19__* %264)
  %266 = load i32, i32* %20, align 4
  store i32 %266, i32* %5, align 4
  br label %290

267:                                              ; preds = %259
  %268 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %269 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 4
  %271 = icmp eq i32 %270, 1
  br i1 %271, label %272, label %281

272:                                              ; preds = %267
  %273 = load i32, i32* @int64_t, align 4
  %274 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %275 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %278 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @FFSWAP(i32 %273, i32 %276, i32 %279)
  br label %281

281:                                              ; preds = %272, %267
  br label %282

282:                                              ; preds = %281
  %283 = load i32*, i32** %14, align 8
  %284 = load i32*, i32** %10, align 8
  %285 = ptrtoint i32* %283 to i64
  %286 = ptrtoint i32* %284 to i64
  %287 = sub i64 %285, %286
  %288 = sdiv exact i64 %287, 4
  %289 = trunc i64 %288 to i32
  store i32 %289, i32* %5, align 4
  br label %290

290:                                              ; preds = %282, %262, %73
  %291 = load i32, i32* %5, align 4
  ret i32 %291
}

declare dso_local i32 @ff_dlog(%struct.TYPE_21__*, i8*, ...) #1

declare dso_local i32 @AV_RB16(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_21__*, i32, i8*, ...) #1

declare dso_local i32 @dvbsub_parse_page_segment(%struct.TYPE_21__*, i32*, i32, %struct.TYPE_19__*, i32*) #1

declare dso_local i32 @dvbsub_parse_region_segment(%struct.TYPE_21__*, i32*, i32) #1

declare dso_local i32 @dvbsub_parse_clut_segment(%struct.TYPE_21__*, i32*, i32) #1

declare dso_local i32 @dvbsub_parse_object_segment(%struct.TYPE_21__*, i32*, i32) #1

declare dso_local i32 @dvbsub_parse_display_definition_segment(%struct.TYPE_21__*, i32*, i32) #1

declare dso_local i32 @dvbsub_display_end_segment(%struct.TYPE_21__*, i32*, i32, %struct.TYPE_19__*, i32*) #1

declare dso_local i32 @avsubtitle_free(%struct.TYPE_19__*) #1

declare dso_local i32 @FFSWAP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
